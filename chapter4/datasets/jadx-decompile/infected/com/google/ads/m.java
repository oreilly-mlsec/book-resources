package com.google.ads;

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class m implements j {
    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        if (webView instanceof h) {
            ((h) webView).a();
        } else {
            a.b("Trying to close WebView that isn't an AdWebView");
        }
    }
}
