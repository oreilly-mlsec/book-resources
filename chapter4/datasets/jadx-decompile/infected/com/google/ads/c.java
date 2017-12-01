package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.searchads.SearchAdRequest;
import com.google.ads.util.AdUtil;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;

public final class c implements Runnable {
    private String a = null;
    private String b = null;
    private b c;
    private d d;
    private AdRequest e;
    private WebView f;
    private String g = null;
    private LinkedList<String> h = new LinkedList();
    private volatile boolean i;
    private ErrorCode j = null;
    private boolean k = false;
    private int l = -1;
    private Thread m;
    private boolean n;

    private class a implements Runnable {
        final /* synthetic */ c a;
        private final d b;
        private final WebView c;
        private final b d;
        private final ErrorCode e;
        private final boolean f;

        public a(c cVar, d dVar, WebView webView, b bVar, ErrorCode errorCode, boolean z) {
            this.a = cVar;
            this.b = dVar;
            this.c = webView;
            this.d = bVar;
            this.e = errorCode;
            this.f = z;
        }

        public final void run() {
            if (this.c != null) {
                this.c.stopLoading();
                this.c.destroy();
            }
            if (this.d != null) {
                this.d.a();
            }
            if (this.f) {
                h i = this.b.i();
                i.stopLoading();
                i.setVisibility(8);
            }
            this.b.a(this.e);
        }
    }

    private class b extends Exception {
        final /* synthetic */ c a;

        public b(c cVar, String str) {
            this.a = cVar;
            super(str);
        }
    }

    private class c implements Runnable {
        final /* synthetic */ c a;
        private final String b;
        private final String c;
        private final WebView d;

        public c(c cVar, WebView webView, String str, String str2) {
            this.a = cVar;
            this.d = webView;
            this.b = str;
            this.c = str2;
        }

        public final void run() {
            if (this.c != null) {
                this.d.loadDataWithBaseURL(this.b, this.c, "text/html", "utf-8", null);
            } else {
                this.d.loadUrl(this.b);
            }
        }
    }

    private class d extends Exception {
        final /* synthetic */ c a;

        public d(c cVar, String str) {
            this.a = cVar;
            super(str);
        }
    }

    private class e implements Runnable {
        final /* synthetic */ c a;
        private final d b;
        private final LinkedList<String> c;
        private final int d;

        public e(c cVar, d dVar, LinkedList<String> linkedList, int i) {
            this.a = cVar;
            this.b = dVar;
            this.c = linkedList;
            this.d = i;
        }

        public final void run() {
            this.b.a(this.c);
            this.b.a(this.d);
            this.b.q();
        }
    }

    public c(d dVar) {
        this.d = dVar;
        Context e = dVar.e();
        if (e != null) {
            this.f = new h(e, null);
            this.f.setWebViewClient(new i(dVar, a.a, false, false));
            this.f.setVisibility(8);
            this.f.setWillNotDraw(true);
            this.c = new b(this, dVar);
            return;
        }
        this.f = null;
        this.c = null;
        com.google.ads.util.a.e("activity was null while trying to create an AdLoader.");
    }

    final synchronized void a(String str) {
        this.h.add(str);
    }

    final void a() {
        com.google.ads.util.a.a("AdLoader cancelled.");
        this.f.stopLoading();
        this.f.destroy();
        if (this.m != null) {
            this.m.interrupt();
            this.m = null;
        }
        this.c.a();
        this.i = true;
    }

    final void a(AdRequest adRequest) {
        this.e = adRequest;
        this.i = false;
        this.m = new Thread(this);
        this.m.start();
    }

    public final void run() {
        synchronized (this) {
            if (this.f == null || this.c == null) {
                com.google.ads.util.a.e("adRequestWebView was null while trying to load an ad.");
                a(ErrorCode.INTERNAL_ERROR, false);
                return;
            }
            Activity e = this.d.e();
            if (e == null) {
                com.google.ads.util.a.e("activity was null while forming an ad request.");
                a(ErrorCode.INTERNAL_ERROR, false);
                return;
            }
            long elapsedRealtime;
            long n = this.d.n();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            Object obj = this.e.getRequestMap(e).get("extras");
            if (obj instanceof Map) {
                Map map = (Map) obj;
                Object obj2 = map.get("_adUrl");
                if (obj2 instanceof String) {
                    this.a = (String) obj2;
                }
                obj = map.get("_orientation");
                if (obj instanceof String) {
                    if (obj.equals("p")) {
                        this.l = 1;
                    } else if (obj.equals("l")) {
                        this.l = 0;
                    }
                }
            }
            if (this.a == null) {
                try {
                    this.d.a(new c(this, this.f, null, a(this.e, e)));
                    elapsedRealtime = n - (SystemClock.elapsedRealtime() - elapsedRealtime2);
                    if (elapsedRealtime > 0) {
                        try {
                            wait(elapsedRealtime);
                        } catch (InterruptedException e2) {
                            com.google.ads.util.a.a("AdLoader InterruptedException while getting the URL: " + e2);
                            return;
                        }
                    }
                    try {
                        if (this.i) {
                            return;
                        } else if (this.j != null) {
                            a(this.j, false);
                            return;
                        } else if (this.g == null) {
                            com.google.ads.util.a.c("AdLoader timed out after " + n + "ms while getting the URL.");
                            a(ErrorCode.NETWORK_ERROR, false);
                            return;
                        } else {
                            this.c.a(this.n);
                            this.c.a(this.g);
                            elapsedRealtime = n - (SystemClock.elapsedRealtime() - elapsedRealtime2);
                            if (elapsedRealtime > 0) {
                                try {
                                    wait(elapsedRealtime);
                                } catch (InterruptedException e22) {
                                    com.google.ads.util.a.a("AdLoader InterruptedException while getting the HTML: " + e22);
                                    return;
                                }
                            }
                            if (this.i) {
                                return;
                            } else if (this.j != null) {
                                a(this.j, false);
                                return;
                            } else if (this.b == null) {
                                com.google.ads.util.a.c("AdLoader timed out after " + n + "ms while getting the HTML.");
                                a(ErrorCode.NETWORK_ERROR, false);
                                return;
                            }
                        }
                    } catch (Throwable e3) {
                        com.google.ads.util.a.a("An unknown error occurred in AdLoader.", e3);
                        a(ErrorCode.INTERNAL_ERROR, true);
                    }
                } catch (d e4) {
                    com.google.ads.util.a.c("Unable to connect to network: " + e4);
                    a(ErrorCode.NETWORK_ERROR, false);
                    return;
                } catch (b e5) {
                    com.google.ads.util.a.c("Caught internal exception: " + e5);
                    a(ErrorCode.INTERNAL_ERROR, false);
                    return;
                }
            }
            WebView i = this.d.i();
            this.d.j().b();
            this.d.a(new c(this, i, this.a, this.b));
            elapsedRealtime = n - (SystemClock.elapsedRealtime() - elapsedRealtime2);
            if (elapsedRealtime > 0) {
                try {
                    wait(elapsedRealtime);
                } catch (InterruptedException e222) {
                    com.google.ads.util.a.a("AdLoader InterruptedException while loading the HTML: " + e222);
                    return;
                }
            }
            if (this.k) {
                this.d.a(new e(this, this.d, this.h, this.l));
            } else {
                com.google.ads.util.a.c("AdLoader timed out after " + n + "ms while loading the HTML.");
                a(ErrorCode.NETWORK_ERROR, true);
            }
        }
    }

    private String a(AdRequest adRequest, Activity activity) throws b, d {
        Context applicationContext = activity.getApplicationContext();
        Map requestMap = adRequest.getRequestMap(applicationContext);
        f l = this.d.l();
        long h = l.h();
        if (h > 0) {
            requestMap.put("prl", Long.valueOf(h));
        }
        String g = l.g();
        if (g != null) {
            requestMap.put("ppcl", g);
        }
        g = l.f();
        if (g != null) {
            requestMap.put("pcl", g);
        }
        h = l.e();
        if (h > 0) {
            requestMap.put("pcc", Long.valueOf(h));
        }
        requestMap.put("preqs", Long.valueOf(f.i()));
        g = l.j();
        if (g != null) {
            requestMap.put("pai", g);
        }
        if (l.k()) {
            requestMap.put("aoi_timeout", "true");
        }
        if (l.m()) {
            requestMap.put("aoi_nofill", "true");
        }
        g = l.p();
        if (g != null) {
            requestMap.put("pit", g);
        }
        l.a();
        l.d();
        if (this.d.f() instanceof InterstitialAd) {
            requestMap.put("format", "interstitial_mb");
        } else {
            AdSize k = this.d.k();
            g = k.toString();
            if (g != null) {
                requestMap.put("format", g);
            } else {
                Map hashMap = new HashMap();
                hashMap.put("w", Integer.valueOf(k.getWidth()));
                hashMap.put("h", Integer.valueOf(k.getHeight()));
                requestMap.put("ad_frame", hashMap);
            }
        }
        requestMap.put("slotname", this.d.h());
        requestMap.put("js", "afma-sdk-a-v4.3.1");
        try {
            int i = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionCode;
            CharSequence f = AdUtil.f(applicationContext);
            if (!TextUtils.isEmpty(f)) {
                requestMap.put("mv", f);
            }
            requestMap.put("msid", applicationContext.getPackageName());
            requestMap.put("app_name", i + ".android." + applicationContext.getPackageName());
            requestMap.put("isu", AdUtil.a(applicationContext));
            String d = AdUtil.d(applicationContext);
            if (d == null) {
                throw new d(this, "NETWORK_ERROR");
            }
            requestMap.put("net", d);
            d = AdUtil.e(applicationContext);
            if (!(d == null || d.length() == 0)) {
                requestMap.put("cap", d);
            }
            requestMap.put("u_audio", Integer.valueOf(AdUtil.g(applicationContext).ordinal()));
            DisplayMetrics a = AdUtil.a(activity);
            requestMap.put("u_sd", Float.valueOf(a.density));
            requestMap.put("u_h", Integer.valueOf(AdUtil.a(applicationContext, a)));
            requestMap.put("u_w", Integer.valueOf(AdUtil.b(applicationContext, a)));
            requestMap.put("hl", Locale.getDefault().getLanguage());
            if (AdUtil.c()) {
                requestMap.put("simulator", Integer.valueOf(1));
            }
            String str = (this.e instanceof SearchAdRequest ? "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>" : "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>") + "AFMA_buildAdURL" + "(" + AdUtil.a(requestMap) + ");" + "</script></head><body></body></html>";
            com.google.ads.util.a.c("adRequestUrlHtml: " + str);
            return str;
        } catch (NameNotFoundException e) {
            throw new b(this, "NameNotFoundException");
        }
    }

    private void a(ErrorCode errorCode, boolean z) {
        this.c.a();
        this.d.a(new a(this, this.d, this.f, this.c, errorCode, z));
    }

    final synchronized void a(String str, String str2) {
        this.a = str2;
        this.b = str;
        notify();
    }

    public final synchronized void b(String str) {
        this.g = str;
        notify();
    }

    public final synchronized void a(ErrorCode errorCode) {
        this.j = errorCode;
        notify();
    }

    final synchronized void b() {
        this.k = true;
        notify();
    }

    public final synchronized void a(int i) {
        this.l = i;
    }

    public final void a(boolean z) {
        this.n = z;
    }
}
