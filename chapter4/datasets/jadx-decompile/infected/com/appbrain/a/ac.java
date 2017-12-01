package com.appbrain.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import cmn.f;
import com.appbrain.c.e;
import com.umeng.analytics.a;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import u.aly.bs;

public final class ac {
    public static String a = "pref_tv";
    private static String b = "promoted_data";
    private static String c = "pref_current_data";
    private static String d = "pref_last_check";
    private static long e = a.g;
    private static AtomicBoolean f = new AtomicBoolean(false);

    public static String a() {
        return v.a().d().getString(a, bs.b);
    }

    public static String a(List list, ae aeVar) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream(128);
        e a = e.a(byteArrayOutputStream);
        a.b(aeVar.a());
        int[] a2 = aeVar.a(list);
        a.b(a2.length);
        for (int i : a2) {
            a.b(i / 10);
        }
        a.a();
        return f.b(byteArrayOutputStream.toByteArray());
    }

    public static void a(Context context) {
        SharedPreferences d = v.a().d();
        String e = v.a().e();
        long j = d.getLong(d, 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis < j) {
            Editor edit = d.edit();
            edit.putLong(d, currentTimeMillis);
            cmn.a.a().a(edit);
        }
        if (j + e < currentTimeMillis && f.compareAndSet(false, true)) {
            new Thread(new ad(d, context, e, currentTimeMillis)).start();
        }
    }
}
