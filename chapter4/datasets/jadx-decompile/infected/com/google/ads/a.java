package com.google.ads;

import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.util.AdUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class a {
    public static final Map<String, j> a;
    public static final Map<String, j> b;

    static {
        Map hashMap = new HashMap();
        hashMap.put("/invalidRequest", new p());
        hashMap.put("/loadAdURL", new q());
        a = Collections.unmodifiableMap(hashMap);
        hashMap = new HashMap();
        hashMap.put("/open", new t());
        hashMap.put("/canOpenURLs", new k());
        hashMap.put("/close", new m());
        hashMap.put("/evalInOpener", new n());
        hashMap.put("/log", new s());
        hashMap.put("/click", new l());
        hashMap.put("/httpTrack", new o());
        hashMap.put("/touch", new u());
        hashMap.put("/video", new v());
        hashMap.put("/plusOne", new ab());
        b = Collections.unmodifiableMap(hashMap);
    }

    private a() {
    }

    static void a(d dVar, Map<String, j> map, Uri uri, WebView webView) {
        HashMap b = AdUtil.b(uri);
        if (b == null) {
            com.google.ads.util.a.e("An error occurred while parsing the message parameters.");
            return;
        }
        String host;
        if (c(uri)) {
            host = uri.getHost();
            if (host == null) {
                com.google.ads.util.a.e("An error occurred while parsing the AMSG parameters.");
                host = null;
            } else if (host.equals("launch")) {
                b.put("a", "intent");
                b.put(AdActivity.URL_PARAM, b.get("url"));
                b.remove("url");
                host = "/open";
            } else if (host.equals("closecanvas")) {
                host = "/close";
            } else if (host.equals("log")) {
                host = "/log";
            } else {
                com.google.ads.util.a.e("An error occurred while parsing the AMSG: " + uri.toString());
                host = null;
            }
        } else if (b(uri)) {
            host = uri.getPath();
        } else {
            com.google.ads.util.a.e("Message was neither a GMSG nor an AMSG.");
            host = null;
        }
        if (host == null) {
            com.google.ads.util.a.e("An error occurred while parsing the message.");
            return;
        }
        j jVar = (j) map.get(host);
        if (jVar == null) {
            com.google.ads.util.a.e("No AdResponse found, <message: " + host + ">");
        } else {
            jVar.a(dVar, b, webView);
        }
    }

    public static boolean a(Uri uri) {
        if (uri == null || !uri.isHierarchical()) {
            return false;
        }
        if (b(uri) || c(uri)) {
            return true;
        }
        return false;
    }

    private static boolean b(Uri uri) {
        String scheme = uri.getScheme();
        if (scheme == null || !scheme.equals("gmsg")) {
            return false;
        }
        scheme = uri.getAuthority();
        if (scheme == null || !scheme.equals("mobileads.google.com")) {
            return false;
        }
        return true;
    }

    private static boolean c(Uri uri) {
        String scheme = uri.getScheme();
        if (scheme == null || !scheme.equals("admob")) {
            return false;
        }
        return true;
    }

    public static void a(WebView webView, String str, String str2) {
        String str3 = "AFMA_ReceiveMessage";
        if (str2 != null) {
            a(webView, str3 + "('" + str + "', " + str2 + ");");
        } else {
            a(webView, str3 + "('" + str + "');");
        }
    }

    public static void a(WebView webView, String str) {
        com.google.ads.util.a.d("Sending JS to a WebView: " + str);
        webView.loadUrl("javascript:" + str);
    }

    public static void a(WebView webView, Map<String, Boolean> map) {
        a(webView, "openableURLs", new JSONObject(map).toString());
    }

    public static void a(WebView webView) {
        a(webView, "onshow", "{'version': 'afma-sdk-a-v4.3.1'}");
    }

    public static void b(WebView webView) {
        a(webView, "onhide", null);
    }
}
