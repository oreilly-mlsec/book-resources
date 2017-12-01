package com.appbrain.a;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import cmn.f;
import com.appbrain.AppBrain;
import com.appbrain.a;
import com.appbrain.e.d;
import com.appbrain.e.e;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

public final class h extends a {
    private WebView a;
    private ViewGroup b;
    private String c;
    private String d;
    private final Activity e;
    private ProgressDialog f;

    public h(Activity activity) {
        this.e = activity;
    }

    private String a(d dVar) {
        Object obj = 1;
        StringBuilder stringBuilder = new StringBuilder();
        if (this.c != null) {
            stringBuilder.append(this.c);
            if (this.c.contains("?")) {
                obj = null;
            }
        } else {
            stringBuilder.append(this.d + v.a().g().get("offer_url", "/offerwall/"));
        }
        if (obj != null) {
            stringBuilder.append("?");
        } else {
            stringBuilder.append("&");
        }
        com.appbrain.b.a aVar = new com.appbrain.b.a();
        byte[] a = com.appbrain.b.a.a(p.a(dVar, "ow"));
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(a);
            gZIPOutputStream.flush();
            gZIPOutputStream.close();
        } catch (Exception e) {
        }
        String b = f.b(byteArrayOutputStream.toByteArray());
        stringBuilder.append("data=");
        stringBuilder.append(b);
        return stringBuilder.toString();
    }

    public final void a() {
        AppBrain.init(this.e);
        if (v.a().c()) {
            this.e.finish();
            return;
        }
        this.d = v.a().e();
        this.e.requestWindowFeature(1);
        this.a = new WebView(this.e);
        k.a(this.e, this.a);
        this.a.setWebChromeClient(new j(this));
        this.a.setWebViewClient(new i(this));
        this.a.setVerticalScrollBarEnabled(true);
        this.a.setHorizontalScrollBarEnabled(false);
        View frameLayout = new FrameLayout(this.e);
        frameLayout.setLayoutParams(new LayoutParams(-1, -1));
        this.e.setContentView(frameLayout);
        frameLayout.addView(this.a, new LayoutParams(-1, -1));
        ViewGroup linearLayout = new LinearLayout(this.e);
        ((LinearLayout) linearLayout).setOrientation(0);
        ((LinearLayout) linearLayout).setGravity(1);
        View textView = new TextView(this.e);
        textView.setText("Loading...");
        textView.setTextColor(-12303292);
        textView.setPadding(10, 0, 0, 0);
        textView.setTextSize(18.0f);
        int i = 16842873;
        if (Integer.parseInt(VERSION.SDK) >= 4) {
            i = 16843400;
        }
        View progressBar = new ProgressBar(this.e, null, i);
        progressBar.setIndeterminate(true);
        linearLayout.addView(progressBar);
        linearLayout.addView(textView);
        linearLayout.setPadding(20, 40, 0, 0);
        this.b = linearLayout;
        this.b.setVisibility(8);
        this.f = new ProgressDialog(this.e);
        this.f.setMessage("Loading apps...");
        this.f.setIndeterminate(true);
        this.f.setCancelable(true);
        this.f.show();
        frameLayout.addView(this.b);
        this.c = this.d + v.a().g().get("offer_url", "/offerwall/");
        e k = d.k();
        b a = b.a(this.e.getIntent());
        k.a(a.b);
        k.b(a.a);
        com.appbrain.e.f a2 = com.appbrain.e.f.a(this.e.getIntent().getIntExtra("src", -1));
        if (a2 != null) {
            k.a(a2);
        }
        this.a.loadUrl(a(k.a()));
        v.a().i();
    }

    public final boolean a(int i) {
        if (i != 4 || this.a == null || !this.a.canGoBack()) {
            return false;
        }
        this.a.goBack();
        return true;
    }
}
