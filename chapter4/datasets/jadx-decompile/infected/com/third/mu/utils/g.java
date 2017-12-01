package com.third.mu.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import u.aly.bs;

public class g {
    public static String a = "key_shard_uuid";
    private static SharedPreferences b;

    public static SharedPreferences a(Context context) {
        if (b == null && context != null) {
            b = context.getSharedPreferences("fpksp", 0);
        }
        return b;
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null ? activeNetworkInfo.isConnected() : false;
    }

    public static String c(Context context) {
        return a(context).getString(a, bs.b);
    }
}
