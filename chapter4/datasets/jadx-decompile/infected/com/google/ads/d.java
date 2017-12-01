package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.preference.PreferenceManager;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;

public final class d {
    private static final Object a = new Object();
    private WeakReference<Activity> b;
    private Ad c;
    private AdListener d = null;
    private c e = null;
    private AdRequest f = null;
    private AdSize g;
    private f h = new f();
    private String i;
    private h j;
    private i k;
    private Handler l = new Handler();
    private long m;
    private boolean n = false;
    private boolean o = false;
    private SharedPreferences p;
    private long q = 0;
    private x r;
    private boolean s;
    private LinkedList<String> t;
    private LinkedList<String> u;
    private int v;

    public d(Activity activity, Ad ad, AdSize adSize, String str, boolean z) {
        this.b = new WeakReference(activity);
        this.c = ad;
        this.g = adSize;
        this.i = str;
        this.s = z;
        synchronized (a) {
            this.p = activity.getApplicationContext().getSharedPreferences("GoogleAdMobAdsPrefs", 0);
            if (z) {
                long j = this.p.getLong("Timeout" + str, -1);
                if (j < 0) {
                    this.m = 5000;
                } else {
                    this.m = j;
                }
            } else {
                this.m = 60000;
            }
        }
        this.r = new x(this);
        this.t = new LinkedList();
        this.u = new LinkedList();
        a();
        AdUtil.h(activity.getApplicationContext());
    }

    final synchronized void a(String str) {
        a.a("Adding a tracking URL: " + str);
        this.t.add(str);
    }

    final synchronized void a(LinkedList<String> linkedList) {
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            a.a("Adding a click tracking URL: " + ((String) it.next()));
        }
        this.u = linkedList;
    }

    public final synchronized void a() {
        Activity e = e();
        if (e == null) {
            a.a("activity was null while trying to create an AdWebView.");
        } else {
            this.j = new h(e.getApplicationContext(), this.g);
            this.j.setVisibility(8);
            if (this.c instanceof AdView) {
                this.k = new i(this, a.b, true, false);
            } else {
                this.k = new i(this, a.b, true, true);
            }
            this.j.setWebViewClient(this.k);
        }
    }

    public final synchronized void b() {
        a(null);
        z();
        this.j.destroy();
    }

    public final synchronized void c() {
        if (this.o) {
            a.a("Disabling refreshing.");
            this.l.removeCallbacks(this.r);
            this.o = false;
        } else {
            a.a("Refreshing is already disabled.");
        }
    }

    public final synchronized void d() {
        if (!(this.c instanceof AdView)) {
            a.a("Tried to enable refreshing on something other than an AdView.");
        } else if (this.o) {
            a.a("Refreshing is already enabled.");
        } else {
            a.a("Enabling refreshing every " + this.q + " milliseconds.");
            this.l.postDelayed(this.r, this.q);
            this.o = true;
        }
    }

    public final Activity e() {
        return (Activity) this.b.get();
    }

    public final Ad f() {
        return this.c;
    }

    public final synchronized c g() {
        return this.e;
    }

    final String h() {
        return this.i;
    }

    public final synchronized h i() {
        return this.j;
    }

    public final synchronized i j() {
        return this.k;
    }

    public final AdSize k() {
        return this.g;
    }

    public final f l() {
        return this.h;
    }

    public final synchronized void a(int i) {
        this.v = i;
    }

    public final synchronized int m() {
        return this.v;
    }

    public final long n() {
        return this.m;
    }

    private synchronized boolean A() {
        return this.e != null;
    }

    public final synchronized boolean o() {
        return this.n;
    }

    public final synchronized boolean p() {
        return this.o;
    }

    public final synchronized void a(AdRequest adRequest) {
        Object obj = null;
        synchronized (this) {
            if (A()) {
                a.e("loadAd called while the ad is already loading, so aborting.");
            } else if (AdActivity.isShowing()) {
                a.e("loadAd called while an interstitial or landing page is displayed, so aborting");
            } else {
                Context e = e();
                if (e == null) {
                    a.e("activity is null while trying to load an ad.");
                } else if (AdUtil.c(e.getApplicationContext()) && AdUtil.b(e.getApplicationContext())) {
                    long j = this.p.getLong("GoogleAdMobDoritosLife", 60000);
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(e.getApplicationContext());
                    if (aa.a(e) && !(defaultSharedPreferences.contains("drt") && defaultSharedPreferences.contains("drt_ts") && defaultSharedPreferences.getLong("drt_ts", 0) >= new Date().getTime() - j)) {
                        obj = 1;
                    }
                    if (obj != null) {
                        z.a(e);
                    }
                    this.n = false;
                    this.t.clear();
                    this.f = adRequest;
                    this.e = new c(this);
                    this.e.a(adRequest);
                }
            }
        }
    }

    public final synchronized void a(ErrorCode errorCode) {
        this.e = null;
        if (this.c instanceof InterstitialAd) {
            if (errorCode == ErrorCode.NO_FILL) {
                this.h.n();
            } else if (errorCode == ErrorCode.NETWORK_ERROR) {
                this.h.l();
            }
        }
        a.c("onFailedToReceiveAd(" + errorCode + ")");
        if (this.d != null) {
            this.d.onFailedToReceiveAd(this.c, errorCode);
        }
    }

    final synchronized void q() {
        this.e = null;
        this.n = true;
        this.j.setVisibility(0);
        this.h.c();
        if (this.c instanceof AdView) {
            v();
        }
        a.c("onReceiveAd()");
        if (this.d != null) {
            this.d.onReceiveAd(this.c);
        }
    }

    public final synchronized void r() {
        this.h.o();
        a.c("onDismissScreen()");
        if (this.d != null) {
            this.d.onDismissScreen(this.c);
        }
    }

    public final synchronized void s() {
        a.c("onPresentScreen()");
        if (this.d != null) {
            this.d.onPresentScreen(this.c);
        }
    }

    public final synchronized void t() {
        a.c("onLeaveApplication()");
        if (this.d != null) {
            this.d.onLeaveApplication(this.c);
        }
    }

    public final void u() {
        this.h.b();
        B();
    }

    public final synchronized void v() {
        Activity activity = (Activity) this.b.get();
        if (activity == null) {
            a.e("activity was null while trying to ping tracking URLs.");
        } else {
            Iterator it = this.t.iterator();
            while (it.hasNext()) {
                new Thread(new w((String) it.next(), activity.getApplicationContext())).start();
            }
        }
    }

    final synchronized boolean w() {
        return !this.u.isEmpty();
    }

    private synchronized void B() {
        Activity activity = (Activity) this.b.get();
        if (activity == null) {
            a.e("activity was null while trying to ping click tracking URLs.");
        } else {
            Iterator it = this.u.iterator();
            while (it.hasNext()) {
                new Thread(new w((String) it.next(), activity.getApplicationContext())).start();
            }
        }
    }

    final void a(Runnable runnable) {
        this.l.post(runnable);
    }

    public final synchronized void x() {
        if (this.f == null) {
            a.a("Tried to refresh before calling loadAd().");
        } else if (this.c instanceof AdView) {
            if (((AdView) this.c).isShown() && AdUtil.d()) {
                a.c("Refreshing ad.");
                a(this.f);
            } else {
                a.a("Not refreshing because the ad is not visible.");
            }
            this.l.postDelayed(this.r, this.q);
        } else {
            a.a("Tried to refresh an ad that wasn't an AdView.");
        }
    }

    public final synchronized void a(AdListener adListener) {
        this.d = adListener;
    }

    public final void a(long j) {
        synchronized (a) {
            Editor edit = this.p.edit();
            edit.putLong("Timeout" + this.i, j);
            edit.commit();
            if (this.s) {
                this.m = j;
            }
        }
    }

    public final synchronized void y() {
        this.n = false;
    }

    public final synchronized void a(float f) {
        this.q = (long) (1000.0f * f);
    }

    public final synchronized void b(long j) {
        if (j > 0) {
            this.p.edit().putLong("GoogleAdMobDoritosLife", j).commit();
        }
    }

    public final synchronized void z() {
        if (this.e != null) {
            this.e.a();
            this.e = null;
        }
        this.j.stopLoading();
    }
}
