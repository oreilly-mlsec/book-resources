package com.google.ads;

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class n implements j {
    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("js");
        if (str == null) {
            a.b("Could not get the JS to evaluate.");
        }
        if (webView instanceof h) {
            AdActivity b = ((h) webView).b();
            if (b == null) {
                a.b("Could not get the AdActivity from the AdWebView.");
                return;
            }
            WebView openingAdWebView = b.getOpeningAdWebView();
            if (openingAdWebView == null) {
                a.b("Could not get the opening WebView.");
                return;
            } else {
                a.a(openingAdWebView, str);
                return;
            }
        }
        a.b("Trying to evaluate JS in a WebView that isn't an AdWebView");
    }
}
