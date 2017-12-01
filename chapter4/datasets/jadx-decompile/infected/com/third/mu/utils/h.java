package com.third.mu.utils;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import u.aly.bs;

public class h {
    private static SharedPreferences a;
    private static SharedPreferences b;
    private static String c;
    private static String d;
    private static String e;
    private static Class f;
    private static String g;

    public static SharedPreferences a(Context context) {
        if (a == null && context != null) {
            a = context.getSharedPreferences("fpssp", 0);
        }
        return a;
    }

    private static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void a(Context context, int i) {
        Intent intent = new Intent(g(context));
        intent.setClass(context, f(context));
        intent.putExtra("action", i);
        context.sendBroadcast(intent);
    }

    public static SharedPreferences b(Context context) {
        if (b == null && context != null) {
            b = context.getSharedPreferences("fpksp", 0);
        }
        return b;
    }

    public static String c(Context context) {
        if (TextUtils.isEmpty(c)) {
            c = a(context).getString("svion", bs.b);
        }
        return c;
    }

    public static String d(Context context) {
        d = b(context).getString("pushVersion", "0");
        return d;
    }

    public static String e(Context context) {
        if (TextUtils.isEmpty(e)) {
            e = a(context).getString("jp", bs.b);
        }
        return e;
    }

    public static Class f(Context context) {
        if (f == null) {
            String string = a(context).getString("brp", bs.b);
            if (!TextUtils.isEmpty(string)) {
                f = a(string);
            }
        }
        return f;
    }

    public static String g(Context context) {
        if (TextUtils.isEmpty(g)) {
            g = a(context).getString("kdoa", bs.b);
        }
        return g;
    }

    protected static String h(Context context) {
        return a(context).getString("cake", null);
    }
}
