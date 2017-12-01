package com.umeng.analytics;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Message;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
import u.aly.bs;

public class MobclickAgentJSInterface {
    private Context a;

    final class a extends WebChromeClient {
        WebChromeClient a = null;
        final /* synthetic */ MobclickAgentJSInterface b;
        private final String c = "ekv";
        private final String d = "event";

        public a(MobclickAgentJSInterface mobclickAgentJSInterface, WebChromeClient webChromeClient) {
            this.b = mobclickAgentJSInterface;
            if (webChromeClient == null) {
                this.a = new WebChromeClient();
            } else {
                this.a = webChromeClient;
            }
        }

        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            if ("ekv".equals(str2)) {
                try {
                    JSONObject jSONObject = new JSONObject(str3);
                    Map hashMap = new HashMap();
                    String str4 = (String) jSONObject.remove("id");
                    int intValue = jSONObject.isNull("duration") ? 0 : ((Integer) jSONObject.remove("duration")).intValue();
                    Iterator keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String str5 = (String) keys.next();
                        hashMap.put(str5, jSONObject.getString(str5));
                    }
                    MobclickAgent.getAgent().a(this.b.a, str4, hashMap, (long) intValue);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (!"event".equals(str2)) {
                return this.a.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            } else {
                try {
                    JSONObject jSONObject2 = new JSONObject(str3);
                    String optString = jSONObject2.optString("label");
                    if (bs.b.equals(optString)) {
                        optString = null;
                    }
                    MobclickAgent.getAgent().a(this.b.a, jSONObject2.getString("tag"), optString, (long) jSONObject2.optInt("duration"), 1);
                } catch (Exception e2) {
                }
            }
            jsPromptResult.confirm();
            return true;
        }

        public void onCloseWindow(WebView webView) {
            this.a.onCloseWindow(webView);
        }

        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            return this.a.onCreateWindow(webView, z, z2, message);
        }

        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return this.a.onJsAlert(webView, str, str2, jsResult);
        }

        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            return this.a.onJsBeforeUnload(webView, str, str2, jsResult);
        }

        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            return this.a.onJsConfirm(webView, str, str2, jsResult);
        }

        public void onProgressChanged(WebView webView, int i) {
            this.a.onProgressChanged(webView, i);
        }

        public void onReceivedIcon(WebView webView, Bitmap bitmap) {
            this.a.onReceivedIcon(webView, bitmap);
        }

        public void onReceivedTitle(WebView webView, String str) {
            this.a.onReceivedTitle(webView, str);
        }

        public void onRequestFocus(WebView webView) {
            this.a.onRequestFocus(webView);
        }
    }

    public MobclickAgentJSInterface(Context context, WebView webView) {
        this.a = context;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new a(this, null));
    }

    public MobclickAgentJSInterface(Context context, WebView webView, WebChromeClient webChromeClient) {
        this.a = context;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new a(this, webChromeClient));
    }
}
