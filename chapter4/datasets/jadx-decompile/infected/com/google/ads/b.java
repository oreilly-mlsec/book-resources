package com.google.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.StringTokenizer;
import u.aly.bs;

public final class b implements Runnable {
    private c a;
    private d b;
    private volatile boolean c;
    private boolean d;
    private String e;

    b(c cVar, d dVar) {
        this.a = cVar;
        this.b = dVar;
    }

    final void a() {
        this.c = true;
    }

    private void a(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("X-Afma-Tracking-Urls");
        if (headerField != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(headerField);
            while (stringTokenizer.hasMoreTokens()) {
                this.b.a(stringTokenizer.nextToken());
            }
        }
        b(httpURLConnection);
        String headerField2 = httpURLConnection.getHeaderField("X-Afma-Refresh-Rate");
        if (headerField2 != null) {
            try {
                float parseFloat = Float.parseFloat(headerField2);
                if (parseFloat > 0.0f) {
                    this.b.a(parseFloat);
                    if (!this.b.p()) {
                        this.b.d();
                    }
                } else if (this.b.p()) {
                    this.b.c();
                }
            } catch (Throwable e) {
                a.b("Could not get refresh value: " + headerField2, e);
            }
        }
        headerField2 = httpURLConnection.getHeaderField("X-Afma-Interstitial-Timeout");
        if (headerField2 != null) {
            try {
                this.b.a((long) (Float.parseFloat(headerField2) * 1000.0f));
            } catch (Throwable e2) {
                a.b("Could not get timeout value: " + headerField2, e2);
            }
        }
        headerField = httpURLConnection.getHeaderField("X-Afma-Orientation");
        if (headerField != null) {
            if (headerField.equals("portrait")) {
                this.a.a(AdUtil.b());
            } else if (headerField.equals("landscape")) {
                this.a.a(AdUtil.a());
            }
        }
        if (!TextUtils.isEmpty(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life"))) {
            try {
                this.b.b(Long.parseLong(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life")));
            } catch (NumberFormatException e3) {
                a.e("Got bad value of Doritos cookie cache life from header: " + httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life") + ". Using default value instead.");
            }
        }
    }

    private void b(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("X-Afma-Click-Tracking-Urls");
        if (headerField != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(headerField);
            while (stringTokenizer.hasMoreTokens()) {
                this.a.a(stringTokenizer.nextToken());
            }
        }
    }

    public final void a(boolean z) {
        this.d = z;
    }

    final void a(String str) {
        this.e = str;
        this.c = false;
        new Thread(this).start();
    }

    public final void run() {
        while (!this.c) {
            HttpURLConnection httpURLConnection;
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.e).openConnection();
                Context e = this.b.e();
                if (e == null) {
                    a.c("activity was null in AdHtmlLoader.");
                    this.a.a(ErrorCode.INTERNAL_ERROR);
                    httpURLConnection.disconnect();
                    return;
                }
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(e);
                if (this.d && !TextUtils.isEmpty(defaultSharedPreferences.getString("drt", bs.b))) {
                    if (AdUtil.a == 8) {
                        httpURLConnection.addRequestProperty("X-Afma-drt-Cookie", defaultSharedPreferences.getString("drt", bs.b));
                    } else {
                        httpURLConnection.addRequestProperty("Cookie", defaultSharedPreferences.getString("drt", bs.b));
                    }
                }
                AdUtil.a(httpURLConnection, e.getApplicationContext());
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (300 <= responseCode && responseCode < 400) {
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (headerField == null) {
                        a.c("Could not get redirect location from a " + responseCode + " redirect.");
                        this.a.a(ErrorCode.INTERNAL_ERROR);
                        httpURLConnection.disconnect();
                        return;
                    }
                    a(httpURLConnection);
                    this.e = headerField;
                    httpURLConnection.disconnect();
                } else if (responseCode == 200) {
                    a(httpURLConnection);
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()), 4096);
                    StringBuilder stringBuilder = new StringBuilder();
                    while (!this.c) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        stringBuilder.append(readLine);
                        stringBuilder.append("\n");
                    }
                    String stringBuilder2 = stringBuilder.toString();
                    a.a("Response content is: " + stringBuilder2);
                    if (stringBuilder2 == null || stringBuilder2.trim().length() <= 0) {
                        a.a("Response message is null or zero length: " + stringBuilder2);
                        this.a.a(ErrorCode.NO_FILL);
                        httpURLConnection.disconnect();
                        return;
                    }
                    this.a.a(stringBuilder2, this.e);
                    httpURLConnection.disconnect();
                    return;
                } else if (responseCode == 400) {
                    a.c("Bad request");
                    this.a.a(ErrorCode.INVALID_REQUEST);
                    httpURLConnection.disconnect();
                    return;
                } else {
                    a.c("Invalid response code: " + responseCode);
                    this.a.a(ErrorCode.INTERNAL_ERROR);
                    httpURLConnection.disconnect();
                    return;
                }
            } catch (Throwable e2) {
                a.a("Received malformed ad url from javascript.", e2);
                this.a.a(ErrorCode.INTERNAL_ERROR);
                return;
            } catch (Throwable e22) {
                a.b("IOException connecting to ad url.", e22);
                this.a.a(ErrorCode.NETWORK_ERROR);
                return;
            } catch (Throwable e222) {
                a.a("An unknown error occurred in AdHtmlLoader.", e222);
                this.a.a(ErrorCode.INTERNAL_ERROR);
                return;
            } catch (Throwable th) {
                httpURLConnection.disconnect();
            }
        }
    }
}
