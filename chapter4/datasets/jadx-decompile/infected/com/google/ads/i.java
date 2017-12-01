package com.google.ads;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.util.HashMap;
import java.util.Map;

public final class i extends WebViewClient {
    private d a;
    private Map<String, j> b;
    private boolean c;
    private boolean d;
    private boolean e = false;
    private boolean f = false;

    public i(d dVar, Map<String, j> map, boolean z, boolean z2) {
        this.a = dVar;
        this.b = map;
        this.c = z;
        this.d = z2;
    }

    public final boolean shouldOverrideUrlLoading(WebView webView, String url) {
        a.a("shouldOverrideUrlLoading(\"" + url + "\")");
        Uri parse = Uri.parse(url);
        HashMap b = AdUtil.b(parse);
        if (b == null) {
            a.e("An error occurred while parsing the url parameters.");
            return true;
        }
        String str = (String) b.get("ai");
        if (str != null) {
            this.a.l().a(str);
        }
        if (a.a(parse)) {
            a.a(this.a, this.b, parse, webView);
            return true;
        } else if (this.d) {
            if (AdUtil.a(parse)) {
                return super.shouldOverrideUrlLoading(webView, url);
            }
            b = new HashMap();
            b.put(AdActivity.URL_PARAM, url);
            AdActivity.launchAdActivity(this.a, new e("intent", b));
            return true;
        } else if (this.c) {
            if (this.a.w() && AdUtil.a(parse)) {
                str = "webapp";
            } else {
                str = "intent";
            }
            HashMap hashMap = new HashMap();
            hashMap.put(AdActivity.URL_PARAM, parse.toString());
            AdActivity.launchAdActivity(this.a, new e(str, hashMap));
            return true;
        } else {
            a.e("URL is not a GMSG and can't handle URL: " + url);
            return true;
        }
    }

    public final void onPageFinished(WebView view, String str) {
        if (this.e) {
            c g = this.a.g();
            if (g != null) {
                g.b();
            } else {
                a.a("adLoader was null while trying to setFinishedLoadingHtml().");
            }
            this.e = false;
        }
        if (this.f) {
            a.a(view);
            this.f = false;
        }
    }

    public final void a() {
        this.d = false;
    }

    public final void b() {
        this.e = true;
    }

    public final void c() {
        this.f = true;
    }
}
