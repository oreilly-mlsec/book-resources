package com.appbrain.a;

import android.util.Log;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import u.aly.bs;

final class j extends WebChromeClient {
    final /* synthetic */ h a;

    j(h hVar) {
        this.a = hVar;
    }

    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        Log.i(bs.b, str2);
        jsResult.confirm();
        return true;
    }

    public final void onProgressChanged(WebView webView, int i) {
        if (i > 20 && this.a.b.getVisibility() != 8) {
            this.a.b.setVisibility(8);
        }
        if (i > 20 && this.a.f.isShowing()) {
            this.a.f.dismiss();
        }
        super.onProgressChanged(webView, i);
    }
}
