package com.google.ads;

import android.webkit.WebView;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.util.a;
import java.util.HashMap;

public final class p implements j {
    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("errors");
        a.e("Invalid " + ((String) hashMap.get("type")) + " request error: " + str);
        c g = dVar.g();
        if (g != null) {
            g.a(ErrorCode.INVALID_REQUEST);
        }
    }
}
