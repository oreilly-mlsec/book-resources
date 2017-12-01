package com.google.ads;

import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;
import java.util.Locale;

public final class l implements j {
    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get(AdActivity.URL_PARAM);
        if (str == null) {
            a.e("Could not get URL from click gmsg.");
            return;
        }
        f l = dVar.l();
        if (l != null) {
            Uri parse = Uri.parse(str);
            String host = parse.getHost();
            if (host != null && host.toLowerCase(Locale.US).endsWith(".admob.com")) {
                host = null;
                String path = parse.getPath();
                if (path != null) {
                    String[] split = path.split("/");
                    if (split.length >= 4) {
                        host = split[2] + "/" + split[3];
                    }
                }
                l.b(host);
            }
        }
        new Thread(new w(str, webView.getContext().getApplicationContext())).start();
    }
}
