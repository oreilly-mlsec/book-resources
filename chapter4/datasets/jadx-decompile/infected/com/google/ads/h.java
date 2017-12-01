package com.google.ads;

import android.content.Context;
import android.view.View.MeasureSpec;
import android.webkit.WebView;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.lang.ref.WeakReference;

public final class h extends WebView {
    private WeakReference<AdActivity> a = null;
    private AdSize b;

    public h(Context context, AdSize adSize) {
        super(context);
        this.b = adSize;
        setBackgroundColor(0);
        AdUtil.a((WebView) this);
        getSettings().setJavaScriptEnabled(true);
        setScrollBarStyle(0);
    }

    public final void a() {
        AdActivity b = b();
        if (b != null) {
            b.finish();
        }
    }

    public final AdActivity b() {
        return this.a != null ? (AdActivity) this.a.get() : null;
    }

    public final void a(AdActivity adActivity) {
        this.a = new WeakReference(adActivity);
    }

    public final void loadDataWithBaseURL(String baseUrl, String data, String mimeType, String encoding, String historyUrl) {
        try {
            super.loadDataWithBaseURL(baseUrl, data, mimeType, encoding, historyUrl);
        } catch (Throwable e) {
            a.a("An error occurred while loading data in AdWebView:", e);
        }
    }

    public final void loadUrl(String url) {
        try {
            super.loadUrl(url);
        } catch (Throwable e) {
            a.a("An error occurred while loading a URL in AdWebView:", e);
        }
    }

    public final void stopLoading() {
        try {
            super.stopLoading();
        } catch (Throwable e) {
            a.a("An error occurred while stopping loading in AdWebView:", e);
        }
    }

    public final void destroy() {
        try {
            super.destroy();
        } catch (Throwable e) {
            a.a("An error occurred while destroying an AdWebView:", e);
        }
    }

    protected final void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (isInEditMode()) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        } else if (this.b == null) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        } else {
            int mode = MeasureSpec.getMode(widthMeasureSpec);
            int size = MeasureSpec.getSize(widthMeasureSpec);
            int mode2 = MeasureSpec.getMode(heightMeasureSpec);
            int size2 = MeasureSpec.getSize(heightMeasureSpec);
            float f = getContext().getResources().getDisplayMetrics().density;
            int width = (int) (((float) this.b.getWidth()) * f);
            int height = (int) (((float) this.b.getHeight()) * f);
            if (mode == 0 || mode2 == 0) {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            } else if (((float) width) - (6.0f * f) > ((float) size) || height > size2) {
                a.e("Not enough space to show ad! Wants: <" + width + ", " + height + ">, Has: <" + size + ", " + size2 + ">");
                setVisibility(8);
                setMeasuredDimension(0, 0);
            } else {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            }
        }
    }
}
