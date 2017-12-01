package com.ose.a;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import u.aly.bs;

class j extends Thread {
    private final /* synthetic */ Context a;

    j(Context context) {
        this.a = context;
    }

    public void run() {
        SharedPreferences b = i.b(this.a);
        if (!b.getBoolean(h.c, false)) {
            String str;
            File c = d.c(this.a);
            try {
                str = (String) i.a(c.getClass(), c, "solutePath", null, null);
            } catch (SecurityException e) {
                e.printStackTrace();
                str = bs.b;
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                str = bs.b;
            } catch (NoSuchMethodException e3) {
                e3.printStackTrace();
                str = bs.b;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                str = bs.b;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                str = bs.b;
            }
            b.edit().putBoolean(h.c, true).putBoolean(h.m, true).putString(h.d, g.a).putString(h.e, i.a(this.a, dr.class).getName()).putString(h.f, str).putString(h.g, h.p).commit();
        }
    }
}
