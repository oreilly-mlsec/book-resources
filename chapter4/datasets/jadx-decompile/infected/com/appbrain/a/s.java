package com.appbrain.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import cmn.a;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class s {
    private static String a = "last_check_";
    private static String b = "last_err_";
    private static String c = "errorcount_";
    private final String d;
    private final long e;
    private final AtomicBoolean f = new AtomicBoolean(false);
    private final String g;
    private final String h;
    private final String i;
    private final boolean j;

    public s(String str, long j) {
        this.g = a + str;
        this.h = b + str;
        this.i = c + str;
        this.d = str;
        this.e = j;
        this.j = true;
    }

    private void a(long j, long j2, long j3, SharedPreferences sharedPreferences) {
        try {
            Editor edit = sharedPreferences.edit();
            edit.putLong(this.g, j);
            if (j2 > 0) {
                edit.putLong(this.h, j2);
            } else {
                edit.remove(this.h);
            }
            if (j3 > 0) {
                edit.putLong(this.i, j3);
            } else {
                edit.remove(this.i);
            }
            a.a().a(edit);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected SharedPreferences a(Context context) {
        return context.getSharedPreferences("update_check", 0);
    }

    protected abstract void a();

    public final boolean b(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.f.compareAndSet(false, true)) {
            SharedPreferences a = a(context);
            long j = a.getLong(this.g, 0);
            long j2 = a.getLong(this.h, 0);
            long j3 = a.getLong(this.i, 0);
            Object obj = j3 > 0 ? ((long) Math.max((double) (j + this.e), ((double) j2) + ((Math.pow(1.5d, (double) Math.min(12, j3)) * 10.0d) * 1000.0d))) <= System.currentTimeMillis() ? 1 : null : System.currentTimeMillis() >= j + this.e ? 1 : null;
            if (obj != null) {
                Runnable tVar = new t(this, context, currentTimeMillis, a);
                if (this.j) {
                    new Thread(tVar).start();
                } else {
                    tVar.run();
                }
                return true;
            }
            if (a.getLong(this.g, 0) > com.umeng.analytics.a.h + currentTimeMillis || a.getLong(this.h, 0) > currentTimeMillis + com.umeng.analytics.a.h) {
                a(0, 0, 0, a);
            }
            this.f.set(false);
        }
        return false;
    }
}
