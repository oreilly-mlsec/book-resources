package com.third.mx.update;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.ads.AdActivity;
import com.third.mx.utils.UpdateCallback;
import com.third.mx.utils.e;
import com.third.mx.utils.i;
import com.third.mx.utils.l;
import java.io.File;
import java.util.Calendar;

public class a {
    public static String a;
    public static String b = "jc";
    public static String c = "fx.jar";
    public static File d;
    public static File e;
    public static boolean f = false;
    public static SharedPreferences g;
    private static UpdateCallback h = null;

    static {
        a = null;
        a = "c" + AdActivity.ORIENTATION_PARAM + AdActivity.TYPE_PARAM + "." + AdActivity.URL_PARAM + "l" + "k" + "." + "a" + "c" + "t";
    }

    public static File a(Context context) {
        if (e == null) {
            e = context.getDir(b, 0);
        }
        return e;
    }

    public static void a() {
        f = true;
    }

    public static void a(Context context, int i) {
        Intent intent = new Intent(a);
        intent.setClass(context, l.f(context));
        intent.putExtra("action", i);
        context.sendBroadcast(intent);
    }

    public static void a(Context context, UpdateCallback updateCallback) {
        if (i.i(context) && c(context)) {
            h = updateCallback;
            a();
            new b(context).start();
        }
    }

    public static void a(Context context, boolean z) {
        if (h != null) {
            if (z) {
                try {
                    h.updateSuccess();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                h.updateFail();
            }
        }
        f = false;
    }

    protected static boolean a(Context context, String str) {
        if (!i.i(context) || e.a) {
            return false;
        }
        new e(context, str).execute(new Void[0]);
        return true;
    }

    public static File b(Context context) {
        if (d == null) {
            d = new File(a(context), new StringBuilder(AdActivity.URL_PARAM).append(c).toString());
        }
        return d;
    }

    public static void b() {
        com.third.mx.utils.a.a();
    }

    private static boolean b(String str) {
        if (!TextUtils.isEmpty(str)) {
            if ((str.startsWith("http") && str.endsWith(".jar")) || str.equals("1000")) {
                return false;
            }
            if (str.equals("-1000")) {
                return false;
            }
        }
        return true;
    }

    public static boolean c() {
        return com.third.mx.utils.a.b();
    }

    private static boolean c(Context context) {
        if (f) {
            return false;
        }
        g = l.b(context);
        return g.getInt("mxsdkupdate", 0) != Calendar.getInstance().get(6);
    }
}
