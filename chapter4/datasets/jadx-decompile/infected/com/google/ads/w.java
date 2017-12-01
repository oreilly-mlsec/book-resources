package com.google.ads;

import android.content.Context;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.net.HttpURLConnection;
import java.net.URL;

public final class w implements Runnable {
    private Context a;
    private String b;

    public w(String str, Context context) {
        this.b = str;
        this.a = context;
    }

    public final void run() {
        HttpURLConnection httpURLConnection;
        try {
            a.a("Pinging URL: " + this.b);
            httpURLConnection = (HttpURLConnection) new URL(this.b).openConnection();
            AdUtil.a(httpURLConnection, this.a);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 200 || responseCode >= 300) {
                a.e("Did not receive 2XX (got " + responseCode + ") from pinging URL: " + this.b);
            }
            httpURLConnection.disconnect();
        } catch (Throwable e) {
            a.b("Unable to ping the URL: " + this.b, e);
        } catch (Throwable th) {
            httpURLConnection.disconnect();
        }
    }
}
