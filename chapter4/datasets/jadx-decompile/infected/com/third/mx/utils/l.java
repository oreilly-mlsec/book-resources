package com.third.mx.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import u.aly.bs;

public class l {
    public static String a = "check_valid";
    public static String b = "key_shard_uuid";
    public static String c = "check_shard_uuid_date";
    private static SharedPreferences d;
    private static SharedPreferences e;
    private static String f;
    private static String g;
    private static Class h;

    public static SharedPreferences a(Context context) {
        if (d == null && context != null) {
            d = context.getSharedPreferences("fxssp", 0);
        }
        return d;
    }

    private static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static SharedPreferences b(Context context) {
        if (e == null && context != null) {
            e = context.getSharedPreferences("fxkit", 0);
        }
        return e;
    }

    public static String c(Context context) {
        if (TextUtils.isEmpty(f)) {
            f = a(context).getString("svion", bs.b);
        }
        return f;
    }

    public static String d(Context context) {
        g = b(context).getString("unlockVersion", "0");
        return g;
    }

    public static String e(Context context) {
        String string = b(context).getString(b, bs.b);
        System.out.println("get:" + string);
        return string;
    }

    public static Class f(Context context) {
        if (h == null) {
            String string = a(context).getString("brp", bs.b);
            if (!TextUtils.isEmpty(string)) {
                h = a(string);
            }
        }
        return h;
    }
}
