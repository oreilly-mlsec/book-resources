package com.appbrain.a;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class i extends WebViewClient {
    final /* synthetic */ h a;

    i(h hVar) {
        this.a = hVar;
    }

    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        webView.loadData("<html><body style='color:#444;'><h2>There was a network error.</h2> Please check your internet connection and try again.</body></html>", "text/html", "utf-8");
    }

    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith("/") || str.startsWith(this.a.d) || (this.a.c != null && str.startsWith(this.a.c))) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        try {
            this.a.e.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
        return true;
    }
}
