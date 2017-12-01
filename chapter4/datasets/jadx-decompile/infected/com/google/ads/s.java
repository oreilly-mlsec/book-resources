package com.google.ads;

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class s implements j {
    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("afma_notify_dt");
        a.c("Received log message: <\"string\": \"" + ((String) hashMap.get("string")) + "\", \"afmaNotifyDt\": \"" + str + "\">");
    }
}
