package com.google.ads;

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class t implements j {
    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("a");
        if (str == null) {
            a.a("Could not get the action parameter for open GMSG.");
        } else if (str.equals("webapp")) {
            AdActivity.launchAdActivity(dVar, new e("webapp", hashMap));
        } else {
            AdActivity.launchAdActivity(dVar, new e("intent", hashMap));
        }
    }
}
