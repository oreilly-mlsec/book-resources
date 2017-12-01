package com.third.mx.utils;

import android.app.NotificationManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import android.view.WindowManager;

public class k {
    public static NotificationManager a = null;
    public static TelephonyManager b = null;
    public static ConnectivityManager c = null;
    public static WindowManager d = null;

    public static TelephonyManager a(Context context) {
        if (context != null && b == null) {
            b = (TelephonyManager) context.getSystemService("phone");
        }
        return b;
    }

    public static ConnectivityManager b(Context context) {
        if (context != null && c == null) {
            c = (ConnectivityManager) context.getSystemService("connectivity");
        }
        return c;
    }
}
