package com.google.ads;

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class o implements j {
    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get(AdActivity.URL_PARAM);
        if (str == null) {
            a.e("Could not get URL from click gmsg.");
        } else {
            new Thread(new w(str, webView.getContext().getApplicationContext())).start();
        }
    }
}
