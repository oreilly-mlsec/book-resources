package com.google.ads;

import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.android.notification.configure.DownApkXmlKey;
import java.util.HashMap;

public final class ab implements j {

    private static class a implements OnClickListener {
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public enum b {
        AD(DownApkXmlKey.AD),
        APP("app");
        
        public String c;

        private b(String str) {
            this.c = str;
        }
    }

    private static class c implements OnClickListener {
        private d a;

        public c(d dVar) {
            this.a = dVar;
        }

        public final void onClick(DialogInterface dialogInterface, int i) {
            HashMap hashMap = new HashMap();
            hashMap.put(AdActivity.URL_PARAM, "market://details?id=com.google.android.apps.plus");
            AdActivity.launchAdActivity(this.a, new e("intent", hashMap));
        }
    }

    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("a");
        if (str != null) {
            if (str.equals("resize")) {
                a.a(webView, "(G_resizeIframe(" + ((String) hashMap.get(AdActivity.URL_PARAM)) + "))");
                return;
            } else if (str.equals("state")) {
                z.a(dVar.e(), webView, (String) hashMap.get(AdActivity.URL_PARAM));
                return;
            }
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
        Context e = dVar.e();
        if (e == null) {
            com.google.ads.util.a.e("Activity was null when responding to +1 action");
        } else if (aa.a(intent, e.getApplicationContext())) {
            AdActivity.launchAdActivity(dVar, new e("plusone", hashMap));
        } else if (!aa.a(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.apps.plus")), e.getApplicationContext())) {
        } else {
            if (TextUtils.isEmpty((CharSequence) hashMap.get("d")) || TextUtils.isEmpty((CharSequence) hashMap.get(AdActivity.ORIENTATION_PARAM)) || TextUtils.isEmpty((CharSequence) hashMap.get("c"))) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put(AdActivity.URL_PARAM, "market://details?id=com.google.android.apps.plus");
                AdActivity.launchAdActivity(dVar, new e("intent", hashMap2));
                return;
            }
            Builder builder = new Builder(e);
            builder.setMessage((CharSequence) hashMap.get("d")).setPositiveButton((CharSequence) hashMap.get(AdActivity.ORIENTATION_PARAM), new c(dVar)).setNegativeButton((CharSequence) hashMap.get("c"), new a());
            builder.create().show();
        }
    }
}
