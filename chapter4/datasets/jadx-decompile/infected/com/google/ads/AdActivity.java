package com.google.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.ads.util.a;

public class AdActivity extends Activity implements OnClickListener {
    public static final String BASE_URL_PARAM = "baseurl";
    public static final String HTML_PARAM = "html";
    public static final String INTENT_ACTION_PARAM = "i";
    public static final String ORIENTATION_PARAM = "o";
    public static final String TYPE_PARAM = "m";
    public static final String URL_PARAM = "u";
    private static final Object a = new Object();
    private static AdActivity b = null;
    private static d c = null;
    private static AdActivity d = null;
    private static AdActivity e = null;
    private h f;
    private boolean g;
    private long h;
    private RelativeLayout i;
    private AdActivity j = null;
    private boolean k;
    private g l;

    private void a(String str) {
        a.b(str);
        finish();
    }

    private void a(String str, Throwable th) {
        a.a(str, th);
        finish();
    }

    public g getAdVideoView() {
        return this.l;
    }

    public h getOpeningAdWebView() {
        if (this.j != null) {
            return this.j.f;
        }
        synchronized (a) {
            if (c == null) {
                a.e("currentAdManager was null while trying to get the opening AdWebView.");
                return null;
            }
            h i = c.i();
            if (i != this.f) {
                return i;
            }
            return null;
        }
    }

    public static boolean isShowing() {
        boolean z;
        synchronized (a) {
            z = d != null;
        }
        return z;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void launchAdActivity(com.google.ads.d r4, com.google.ads.e r5) {
        /*
        r0 = a;
        monitor-enter(r0);
        r1 = c;	 Catch:{ all -> 0x0021 }
        if (r1 != 0) goto L_0x0016;
    L_0x0007:
        c = r4;	 Catch:{ all -> 0x0021 }
    L_0x0009:
        monitor-exit(r0);
        r0 = r4.e();
        if (r0 != 0) goto L_0x0024;
    L_0x0010:
        r0 = "activity was null while launching an AdActivity.";
        com.google.ads.util.a.e(r0);
    L_0x0015:
        return;
    L_0x0016:
        r1 = c;	 Catch:{ all -> 0x0021 }
        if (r1 == r4) goto L_0x0009;
    L_0x001a:
        r1 = "Tried to launch a new AdActivity with a different AdManager.";
        com.google.ads.util.a.b(r1);	 Catch:{ all -> 0x0021 }
        monitor-exit(r0);	 Catch:{ all -> 0x0021 }
        goto L_0x0015;
    L_0x0021:
        r4 = move-exception;
        monitor-exit(r0);
        throw r4;
    L_0x0024:
        r1 = new android.content.Intent;
        r2 = r0.getApplicationContext();
        r3 = com.google.ads.AdActivity.class;
        r1.<init>(r2, r3);
        r2 = "com.google.ads.AdOpener";
        r3 = r5.a();
        r1.putExtra(r2, r3);
        r2 = "Launching AdActivity.";
        com.google.ads.util.a.a(r2);	 Catch:{ ActivityNotFoundException -> 0x0041 }
        r0.startActivity(r1);	 Catch:{ ActivityNotFoundException -> 0x0041 }
        goto L_0x0015;
    L_0x0041:
        r0 = move-exception;
        r1 = r0.getMessage();
        com.google.ads.util.a.a(r1, r0);
        goto L_0x0015;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.AdActivity.launchAdActivity(com.google.ads.d, com.google.ads.e):void");
    }

    private void a(d dVar) {
        this.f = null;
        this.h = SystemClock.elapsedRealtime();
        this.k = true;
        synchronized (a) {
            if (b == null) {
                b = this;
                dVar.t();
            }
        }
    }

    public void moveAdVideoView(int x, int y, int width, int height) {
        if (this.l != null) {
            this.l.setLayoutParams(a(x, y, width, height));
            this.l.requestLayout();
        }
    }

    public void newAdVideoView(int x, int y, int width, int height) {
        if (this.l == null) {
            this.l = new g(this, this.f);
            this.i.addView(this.l, 0, a(x, y, width, height));
            synchronized (a) {
                if (c == null) {
                    a.e("currentAdManager was null while trying to get the opening AdWebView.");
                    return;
                }
                c.j().a();
            }
        }
    }

    private static LayoutParams a(int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = new LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        layoutParams.addRule(10);
        layoutParams.addRule(9);
        return layoutParams;
    }

    public void onClick(View view) {
        finish();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onCreate(android.os.Bundle r10) {
        /*
        r9 = this;
        r3 = 1;
        r5 = 0;
        r8 = 0;
        super.onCreate(r10);
        r9.g = r8;
        r1 = a;
        monitor-enter(r1);
        r0 = c;	 Catch:{ all -> 0x0061 }
        if (r0 == 0) goto L_0x005a;
    L_0x000f:
        r6 = c;	 Catch:{ all -> 0x0061 }
        r0 = d;	 Catch:{ all -> 0x0061 }
        if (r0 != 0) goto L_0x001a;
    L_0x0015:
        d = r9;	 Catch:{ all -> 0x0061 }
        r6.s();	 Catch:{ all -> 0x0061 }
    L_0x001a:
        r0 = r9.j;	 Catch:{ all -> 0x0061 }
        if (r0 != 0) goto L_0x0026;
    L_0x001e:
        r0 = e;	 Catch:{ all -> 0x0061 }
        if (r0 == 0) goto L_0x0026;
    L_0x0022:
        r0 = e;	 Catch:{ all -> 0x0061 }
        r9.j = r0;	 Catch:{ all -> 0x0061 }
    L_0x0026:
        e = r9;	 Catch:{ all -> 0x0061 }
        r0 = r6.f();	 Catch:{ all -> 0x0061 }
        r2 = r0 instanceof com.google.ads.AdView;	 Catch:{ all -> 0x0061 }
        if (r2 == 0) goto L_0x0034;
    L_0x0030:
        r2 = d;	 Catch:{ all -> 0x0061 }
        if (r2 == r9) goto L_0x003e;
    L_0x0034:
        r0 = r0 instanceof com.google.ads.InterstitialAd;	 Catch:{ all -> 0x0061 }
        if (r0 == 0) goto L_0x0041;
    L_0x0038:
        r0 = r9.j;	 Catch:{ all -> 0x0061 }
        r2 = d;	 Catch:{ all -> 0x0061 }
        if (r0 != r2) goto L_0x0041;
    L_0x003e:
        r6.u();	 Catch:{ all -> 0x0061 }
    L_0x0041:
        monitor-exit(r1);	 Catch:{ all -> 0x0061 }
        r9.i = r5;
        r9.k = r8;
        r9.l = r5;
        r0 = r9.getIntent();
        r1 = "com.google.ads.AdOpener";
        r0 = r0.getBundleExtra(r1);
        if (r0 != 0) goto L_0x0064;
    L_0x0054:
        r0 = "Could not get the Bundle used to create AdActivity.";
        r9.a(r0);
    L_0x0059:
        return;
    L_0x005a:
        r0 = "Could not get currentAdManager.";
        r9.a(r0);	 Catch:{ all -> 0x0061 }
        monitor-exit(r1);	 Catch:{ all -> 0x0061 }
        goto L_0x0059;
    L_0x0061:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x0064:
        r1 = new com.google.ads.e;
        r1.<init>(r0);
        r0 = r1.b();
        r7 = r1.c();
        r1 = "plusone";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x00d3;
    L_0x0079:
        r1 = new android.content.Intent;
        r1.<init>();
        r0 = new android.content.ComponentName;
        r2 = "com.google.android.apps.plus";
        r3 = "com.google.android.apps.circles.platform.PlusOneActivity";
        r0.<init>(r2, r3);
        r1.setComponent(r0);
        r0 = "android.intent.category.LAUNCHER";
        r1.addCategory(r0);
        r0 = r9.getIntent();
        r0 = r0.getExtras();
        r1.putExtras(r0);
        r2 = "com.google.circles.platform.intent.extra.ENTITY";
        r0 = "u";
        r0 = r7.get(r0);
        r0 = (java.lang.String) r0;
        r1.putExtra(r2, r0);
        r0 = "com.google.circles.platform.intent.extra.ENTITY_TYPE";
        r2 = com.google.ads.ab.b.AD;
        r2 = r2.c;
        r1.putExtra(r0, r2);
        r2 = "com.google.circles.platform.intent.extra.ACTION";
        r0 = "a";
        r0 = r7.get(r0);
        r0 = (java.lang.String) r0;
        r1.putExtra(r2, r0);
        r9.a(r6);
        r0 = "Launching Google+ intent from AdActivity.";
        com.google.ads.util.a.a(r0);	 Catch:{ ActivityNotFoundException -> 0x00ca }
        r0 = 0;
        r9.startActivityForResult(r1, r0);	 Catch:{ ActivityNotFoundException -> 0x00ca }
        goto L_0x0059;
    L_0x00ca:
        r0 = move-exception;
        r1 = r0.getMessage();
        r9.a(r1, r0);
        goto L_0x0059;
    L_0x00d3:
        r1 = "intent";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x0134;
    L_0x00db:
        if (r7 != 0) goto L_0x00e4;
    L_0x00dd:
        r0 = "Could not get the paramMap in launchIntent()";
        r9.a(r0);
        goto L_0x0059;
    L_0x00e4:
        r0 = "u";
        r0 = r7.get(r0);
        r0 = (java.lang.String) r0;
        if (r0 != 0) goto L_0x00f5;
    L_0x00ee:
        r0 = "Could not get the URL parameter in launchIntent().";
        r9.a(r0);
        goto L_0x0059;
    L_0x00f5:
        r1 = "i";
        r1 = r7.get(r1);
        r1 = (java.lang.String) r1;
        r2 = "m";
        r2 = r7.get(r2);
        r2 = (java.lang.String) r2;
        r3 = android.net.Uri.parse(r0);
        if (r1 != 0) goto L_0x012e;
    L_0x010b:
        r0 = new android.content.Intent;
        r1 = "android.intent.action.VIEW";
        r0.<init>(r1, r3);
    L_0x0112:
        if (r2 == 0) goto L_0x0117;
    L_0x0114:
        r0.setDataAndType(r3, r2);
    L_0x0117:
        r9.a(r6);
        r1 = "Launching an intent from AdActivity.";
        com.google.ads.util.a.a(r1);	 Catch:{ ActivityNotFoundException -> 0x0124 }
        r9.startActivity(r0);	 Catch:{ ActivityNotFoundException -> 0x0124 }
        goto L_0x0059;
    L_0x0124:
        r0 = move-exception;
        r1 = r0.getMessage();
        r9.a(r1, r0);
        goto L_0x0059;
    L_0x012e:
        r0 = new android.content.Intent;
        r0.<init>(r1, r3);
        goto L_0x0112;
    L_0x0134:
        r1 = new android.widget.RelativeLayout;
        r2 = r9.getApplicationContext();
        r1.<init>(r2);
        r9.i = r1;
        r1 = r9.i;
        r2 = 17;
        r1.setGravity(r2);
        r1 = "webapp";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x01cd;
    L_0x014e:
        r0 = new com.google.ads.h;
        r1 = r9.getApplicationContext();
        r0.<init>(r1, r5);
        r9.f = r0;
        r0 = new com.google.ads.i;
        r1 = com.google.ads.a.b;
        r0.<init>(r6, r1, r3, r3);
        r0.c();
        r1 = r9.f;
        r1.setWebViewClient(r0);
        r0 = "u";
        r0 = r7.get(r0);
        r0 = (java.lang.String) r0;
        r1 = "baseurl";
        r1 = r7.get(r1);
        r1 = (java.lang.String) r1;
        r2 = "html";
        r2 = r7.get(r2);
        r2 = (java.lang.String) r2;
        if (r0 == 0) goto L_0x01a2;
    L_0x0182:
        r1 = r9.f;
        r1.loadUrl(r0);
    L_0x0187:
        r0 = "o";
        r0 = r7.get(r0);
        r0 = (java.lang.String) r0;
        r1 = "p";
        r1 = r1.equals(r0);
        if (r1 == 0) goto L_0x01b5;
    L_0x0197:
        r0 = com.google.ads.util.AdUtil.b();
    L_0x019b:
        r1 = r9.f;
        r9.a(r1, r8, r0);
        goto L_0x0059;
    L_0x01a2:
        if (r2 == 0) goto L_0x01ae;
    L_0x01a4:
        r0 = r9.f;
        r3 = "text/html";
        r4 = "utf-8";
        r0.loadDataWithBaseURL(r1, r2, r3, r4, r5);
        goto L_0x0187;
    L_0x01ae:
        r0 = "Could not get the URL or HTML parameter to show a web app.";
        r9.a(r0);
        goto L_0x0059;
    L_0x01b5:
        r1 = "l";
        r0 = r1.equals(r0);
        if (r0 == 0) goto L_0x01c2;
    L_0x01bd:
        r0 = com.google.ads.util.AdUtil.a();
        goto L_0x019b;
    L_0x01c2:
        r0 = d;
        if (r9 != r0) goto L_0x01cb;
    L_0x01c6:
        r0 = r6.m();
        goto L_0x019b;
    L_0x01cb:
        r0 = -1;
        goto L_0x019b;
    L_0x01cd:
        r1 = "interstitial";
        r1 = r0.equals(r1);
        if (r1 == 0) goto L_0x01e6;
    L_0x01d5:
        r0 = r6.i();
        r9.f = r0;
        r0 = r6.m();
        r1 = r9.f;
        r9.a(r1, r3, r0);
        goto L_0x0059;
    L_0x01e6:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Unknown AdOpener, <action: ";
        r1 = r1.append(r2);
        r0 = r1.append(r0);
        r1 = ">";
        r0 = r0.append(r1);
        r0 = r0.toString();
        r9.a(r0);
        goto L_0x0059;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.AdActivity.onCreate(android.os.Bundle):void");
    }

    private void a(h hVar, boolean z, int i) {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (hVar.getParent() != null) {
            a("Interstitial created with an AdWebView that has a parent.");
        } else if (hVar.b() != null) {
            a("Interstitial created with an AdWebView that is already in use by another AdActivity.");
        } else {
            setRequestedOrientation(i);
            hVar.a(this);
            View imageButton = new ImageButton(getApplicationContext());
            imageButton.setImageResource(17301527);
            imageButton.setBackgroundColor(0);
            imageButton.setOnClickListener(this);
            imageButton.setPadding(0, 0, 0, 0);
            int applyDimension = (int) TypedValue.applyDimension(1, 32.0f, getResources().getDisplayMetrics());
            View frameLayout = new FrameLayout(getApplicationContext());
            frameLayout.addView(imageButton, applyDimension, applyDimension);
            this.i.addView(hVar, -1, -1);
            ViewGroup.LayoutParams layoutParams = new LayoutParams(-2, -2);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
            this.i.addView(frameLayout, layoutParams);
            this.i.setKeepScreenOn(true);
            setContentView(this.i);
            if (z) {
                a.a((WebView) hVar);
            }
        }
    }

    public void onDestroy() {
        if (this.i != null) {
            this.i.removeAllViews();
        }
        if (isFinishing()) {
            a();
            if (this.f != null) {
                this.f.stopLoading();
                this.f.destroy();
                this.f = null;
            }
        }
        super.onDestroy();
    }

    public void onPause() {
        if (isFinishing()) {
            a();
        }
        super.onPause();
    }

    private void a() {
        if (!this.g) {
            if (this.f != null) {
                a.b(this.f);
                this.f.a(null);
            }
            if (this.l != null) {
                this.l.d();
                this.l = null;
            }
            if (this == b) {
                b = null;
            }
            e = this.j;
            synchronized (a) {
                if (!(c == null || this.f == null)) {
                    if (this.f == c.i()) {
                        c.a();
                    }
                    this.f.stopLoading();
                }
                if (this == d) {
                    d = null;
                    if (c != null) {
                        c.r();
                        c = null;
                    } else {
                        a.e("currentAdManager is null while trying to destroy AdActivity.");
                    }
                }
            }
            this.g = true;
            a.a("AdActivity is closing.");
        }
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        if (this.k && hasFocus && SystemClock.elapsedRealtime() - this.h > 250) {
            a.d("Launcher AdActivity got focus and is closing.");
            finish();
        }
        super.onWindowFocusChanged(hasFocus);
    }

    public void onActivityResult(int reqCode, int resCode, Intent data) {
        super.onActivityResult(reqCode, resCode, data);
        if (!(getOpeningAdWebView() == null || data == null || data.getExtras() == null || data.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION") == null || data.getExtras().getString("com.google.circles.platform.result.extra.ACTION") == null)) {
            String string = data.getExtras().getString("com.google.circles.platform.result.extra.CONFIRMATION");
            String string2 = data.getExtras().getString("com.google.circles.platform.result.extra.ACTION");
            if (string.equals("yes")) {
                if (string2.equals("insert")) {
                    z.a(getOpeningAdWebView(), true);
                } else if (string2.equals("delete")) {
                    z.a(getOpeningAdWebView(), false);
                }
            }
        }
        finish();
    }
}
