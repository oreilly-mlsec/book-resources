package com.google.ads;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.VideoView;
import java.lang.ref.WeakReference;

public final class g extends FrameLayout implements OnCompletionListener, OnErrorListener, OnPreparedListener {
    public MediaController a = null;
    private WeakReference<AdActivity> b;
    private h c;
    private long d = 0;
    private VideoView e;
    private String f = null;

    private static class a implements Runnable {
        private WeakReference<g> a;
        private Handler b = new Handler();

        public a(g gVar) {
            this.a = new WeakReference(gVar);
        }

        public final void run() {
            g gVar = (g) this.a.get();
            if (gVar == null) {
                com.google.ads.util.a.d("The video must be gone, so cancelling the timeupdate task.");
                return;
            }
            gVar.e();
            this.b.postDelayed(this, 250);
        }

        public final void a() {
            this.b.postDelayed(this, 250);
        }
    }

    public g(AdActivity adActivity, h hVar) {
        super(adActivity);
        this.b = new WeakReference(adActivity);
        this.c = hVar;
        this.e = new VideoView(adActivity);
        addView(this.e, new LayoutParams(-1, -1, 17));
        new a(this).a();
        this.e.setOnCompletionListener(this);
        this.e.setOnPreparedListener(this);
        this.e.setOnErrorListener(this);
    }

    public final void a() {
        if (TextUtils.isEmpty(this.f)) {
            a.a(this.c, "onVideoEvent", "{'event': 'error', 'what': 'no_src'}");
        } else {
            this.e.setVideoPath(this.f);
        }
    }

    public final void a(boolean z) {
        AdActivity adActivity = (AdActivity) this.b.get();
        if (adActivity == null) {
            com.google.ads.util.a.e("adActivity was null while trying to enable controls on a video.");
        } else if (z) {
            if (this.a == null) {
                this.a = new MediaController(adActivity);
            }
            this.e.setMediaController(this.a);
        } else {
            if (this.a != null) {
                this.a.hide();
            }
            this.e.setMediaController(null);
        }
    }

    public final void a(String str) {
        this.f = str;
    }

    public final void onCompletion(MediaPlayer mediaPlayer) {
        a.a(this.c, "onVideoEvent", "{'event': 'ended'}");
    }

    public final boolean onError(MediaPlayer mediaPlayer, int what, int extra) {
        com.google.ads.util.a.e("Video threw error! <what:" + what + ", extra:" + extra + ">");
        a.a(this.c, "onVideoEvent", "{'event': 'error', 'what': '" + what + "', 'extra': '" + extra + "'}");
        return true;
    }

    public final void onPrepared(MediaPlayer mediaPlayer) {
        a.a(this.c, "onVideoEvent", "{'event': 'canplaythrough', 'duration': '" + (((float) this.e.getDuration()) / 1000.0f) + "'}");
    }

    public final void b() {
        this.e.pause();
    }

    public final void c() {
        this.e.start();
    }

    public final void a(int i) {
        this.e.seekTo(i);
    }

    public final void a(MotionEvent motionEvent) {
        this.e.onTouchEvent(motionEvent);
    }

    public final void d() {
        this.e.stopPlayback();
    }

    final void e() {
        long currentPosition = (long) this.e.getCurrentPosition();
        if (this.d != currentPosition) {
            a.a(this.c, "onVideoEvent", "{'event': 'timeupdate', 'time': " + (((float) currentPosition) / 1000.0f) + "}");
            this.d = currentPosition;
        }
    }
}
