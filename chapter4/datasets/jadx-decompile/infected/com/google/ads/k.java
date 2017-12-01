package com.google.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;
import java.util.Map;

public final class k implements j {
    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("urls");
        if (str == null) {
            a.e("Could not get the urls param from canOpenURLs gmsg.");
            return;
        }
        String[] split = str.split(",");
        Map hashMap2 = new HashMap();
        PackageManager packageManager = webView.getContext().getPackageManager();
        for (String str2 : split) {
            boolean z;
            String[] split2 = str2.split(";", 2);
            if (packageManager.resolveActivity(new Intent(split2.length >= 2 ? split2[1] : "android.intent.action.VIEW", Uri.parse(split2[0])), 65536) != null) {
                z = true;
            } else {
                z = false;
            }
            hashMap2.put(str2, Boolean.valueOf(z));
        }
        a.a(webView, hashMap2);
    }
}
