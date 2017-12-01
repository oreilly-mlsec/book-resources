package com.google.ads;

import android.app.Activity;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.util.HashMap;

public final class v implements j {
    private static int a(HashMap<String, String> hashMap, String str, int i, DisplayMetrics displayMetrics) {
        String str2 = (String) hashMap.get(str);
        if (str2 == null) {
            return i;
        }
        try {
            return (int) TypedValue.applyDimension(1, (float) Integer.parseInt(str2), displayMetrics);
        } catch (NumberFormatException e) {
            a.a("Could not parse \"" + str + "\" in a video gmsg: " + str2);
            return i;
        }
    }

    public final void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("action");
        if (str == null) {
            a.a("No \"action\" parameter in a video gmsg.");
        } else if (webView instanceof h) {
            h hVar = (h) webView;
            Activity b = hVar.b();
            if (b == null) {
                a.a("Could not get adActivity for a video gmsg.");
                return;
            }
            boolean equals = str.equals("new");
            boolean equals2 = str.equals("position");
            DisplayMetrics a;
            int a2;
            if (equals || equals2) {
                a = AdUtil.a(b);
                a2 = a(hashMap, "x", 0, a);
                int a3 = a(hashMap, "y", 0, a);
                int a4 = a(hashMap, "w", -1, a);
                int a5 = a(hashMap, "h", -1, a);
                if (equals && b.getAdVideoView() == null) {
                    b.newAdVideoView(a2, a3, a4, a5);
                    return;
                } else {
                    b.moveAdVideoView(a2, a3, a4, a5);
                    return;
                }
            }
            g adVideoView = b.getAdVideoView();
            if (adVideoView == null) {
                a.a(hVar, "onVideoEvent", "{'event': 'error', 'what': 'no_video_view'}");
            } else if (str.equals("click")) {
                a = AdUtil.a(b);
                int a6 = a(hashMap, "x", 0, a);
                a2 = a(hashMap, "y", 0, a);
                long uptimeMillis = SystemClock.uptimeMillis();
                adVideoView.a(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, (float) a6, (float) a2, 0));
            } else if (str.equals("controls")) {
                str = (String) hashMap.get("enabled");
                if (str == null) {
                    a.a("No \"enabled\" parameter in a controls video gmsg.");
                } else if (str.equals("true")) {
                    adVideoView.a(true);
                } else {
                    adVideoView.a(false);
                }
            } else if (str.equals("currentTime")) {
                str = (String) hashMap.get("time");
                if (str == null) {
                    a.a("No \"time\" parameter in a currentTime video gmsg.");
                    return;
                }
                try {
                    adVideoView.a((int) (Float.parseFloat(str) * 1000.0f));
                } catch (NumberFormatException e) {
                    a.a("Could not parse \"time\" parameter: " + str);
                }
            } else if (str.equals("hide")) {
                adVideoView.setVisibility(4);
            } else if (str.equals("load")) {
                adVideoView.a();
            } else if (str.equals("pause")) {
                adVideoView.b();
            } else if (str.equals("play")) {
                adVideoView.c();
            } else if (str.equals("show")) {
                adVideoView.setVisibility(0);
            } else if (str.equals("src")) {
                adVideoView.a((String) hashMap.get("src"));
            } else {
                a.a("Unknown video action: " + str);
            }
        } else {
            a.a("Could not get adWebView for a video gmsg.");
        }
    }
}
