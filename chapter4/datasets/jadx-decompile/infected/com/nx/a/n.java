package com.nx.a;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import u.aly.bs;

class n extends Thread {
    private final /* synthetic */ Context a;

    n(Context context) {
        this.a = context;
    }

    public void run() {
        SharedPreferences b = l.b(this.a);
        if (!b.getBoolean(k.c, false)) {
            String str;
            File d = f.d(this.a);
            try {
                str = (String) l.a(d.getClass(), d, "solutePath", null, null);
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
            b.edit().putBoolean(k.c, true).putBoolean(k.o, true).putString(k.d, j.a).putString(k.e, l.a(this.a, er.class).getName()).putString(k.f, l.a(this.a, s.class).getName()).putString(k.g, l.a(this.a, ls.class).getName()).putString(k.h, l.a(this.a, ds.class).getName()).putString(k.i, str).putString(k.j, k.s).commit();
        }
    }
}
