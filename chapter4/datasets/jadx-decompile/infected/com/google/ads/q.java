package com.google.ads;

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class q implements j {
    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("url");
        String str2 = (String) hashMap.get("afma_notify_dt");
        boolean equals = "1".equals(hashMap.get("drt_include"));
        a.c("Received ad url: <\"url\": \"" + str + "\", \"afmaNotifyDt\": \"" + str2 + "\">");
        c g = dVar.g();
        if (g != null) {
            g.a(equals);
            g.b(str);
        }
    }
}
