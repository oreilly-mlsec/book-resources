package com.third.mu.update;

import android.content.Context;
import android.content.SharedPreferences;
import com.third.mu.utils.UpdateCallback;
import com.third.mu.utils.b;
import com.third.mu.utils.e;
import com.third.mu.utils.g;
import java.util.Calendar;

public class a {
    public static boolean a = false;
    private static UpdateCallback b = null;

    public static void a() {
        a = true;
    }

    public static void a(Context context, UpdateCallback updateCallback) {
        if (g.b(context) && b(context)) {
            b = updateCallback;
            a();
            new b(context).start();
        }
    }

    public static void a(Context context, boolean z) {
        if (b != null) {
            if (z) {
                try {
                    b.updateSuccess();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                b.updateFail();
            }
        }
        a = false;
    }

    protected static boolean a(Context context, String str) {
        if (!g.b(context) || e.a) {
            return false;
        }
        new e(context, str).execute(new Void[0]);
        return true;
    }

    public static void b() {
        b.a();
    }

    private static boolean b(Context context) {
        return (b.e != b.c || a || g.a(context).getInt("musdkupdate", 0) == Calendar.getInstance().get(6)) ? false : true;
    }

    private static void c(Context context) {
        SharedPreferences a = g.a(context);
        a.edit().putInt("musdkupdate", Calendar.getInstance().get(6)).commit();
    }

    public static boolean c() {
        return b.b();
    }
}
