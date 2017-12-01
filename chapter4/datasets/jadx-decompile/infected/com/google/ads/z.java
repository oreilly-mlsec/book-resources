package com.google.ads;

import android.app.Activity;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import java.util.Date;
import u.aly.bs;

public final class z {

    private static class a implements Runnable {
        private WeakReference<Activity> a;

        public a(Activity activity) {
            this.a = new WeakReference(activity);
        }

        public final void run() {
            try {
                Activity activity = (Activity) this.a.get();
                if (activity == null) {
                    com.google.ads.util.a.a("Activity was null while making a doritos cookie request.");
                    return;
                }
                Object obj;
                Cursor query = activity.getContentResolver().query(y.b, y.d, null, null, null);
                if (query == null || !query.moveToFirst() || query.getColumnNames().length <= 0) {
                    com.google.ads.util.a.a("Google+ app not installed, not storing doritos cookie");
                    obj = null;
                } else {
                    obj = query.getString(query.getColumnIndex(query.getColumnName(0)));
                }
                Editor edit = PreferenceManager.getDefaultSharedPreferences(activity.getApplicationContext()).edit();
                if (TextUtils.isEmpty(obj)) {
                    edit.putString("drt", bs.b);
                    edit.putLong("drt_ts", 0);
                } else {
                    edit.putString("drt", obj);
                    edit.putLong("drt_ts", new Date().getTime());
                }
                edit.commit();
            } catch (Throwable e) {
                com.google.ads.util.a.a("An unknown error occurred while sending a doritos request.", e);
            }
        }
    }

    private static class b implements Runnable {
        private WeakReference<Activity> a;
        private WebView b;
        private String c;

        public b(Activity activity, WebView webView, String str) {
            this.a = new WeakReference(activity);
            this.c = str;
            this.b = webView;
        }

        public final void run() {
            try {
                Uri withAppendedPath = Uri.withAppendedPath(y.a, this.c);
                Activity activity = (Activity) this.a.get();
                if (activity == null) {
                    com.google.ads.util.a.a("Activity was null while getting the +1 button state.");
                    return;
                }
                boolean z;
                Cursor query = activity.getContentResolver().query(withAppendedPath, y.c, null, null, null);
                if (query == null || !query.moveToFirst()) {
                    com.google.ads.util.a.a("Google+ app not installed, showing ad as not +1'd");
                    z = false;
                } else {
                    z = query.getInt(query.getColumnIndex("has_plus1")) == 1;
                }
                this.b.post(new c(this.b, z));
            } catch (Throwable e) {
                com.google.ads.util.a.a("An unknown error occurred while updating the +1 state.", e);
            }
        }
    }

    private static class c implements Runnable {
        private boolean a;
        private WebView b;

        public c(WebView webView, boolean z) {
            this.b = webView;
            this.a = z;
        }

        public final void run() {
            z.a(this.b, this.a);
        }
    }

    private z() {
    }

    public static void a(WebView webView, boolean z) {
        a.a(webView, "(G_updatePlusOne(" + z + "))");
    }

    public static void a(Activity activity, WebView webView, String str) {
        new Thread(new b(activity, webView, str)).start();
    }

    public static void a(Activity activity) {
        new Thread(new a(activity)).start();
    }
}
