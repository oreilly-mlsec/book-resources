package com.ose.a;

import android.content.Context;
import android.content.Intent;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Method;
import java.util.HashMap;

public class a {
    private static HashMap a = new HashMap();
    private static DexClassLoader b;

    public static e a(Context context, Class cls) {
        String name = cls.getName();
        if (a == null) {
            a = new HashMap();
        }
        e eVar = (e) a.get(name);
        if (eVar != null) {
            return eVar;
        }
        eVar = b(context, cls);
        a.put(name, eVar);
        return eVar;
    }

    public static Object a(Object obj, Method method, Object[] objArr) {
        Object obj2 = null;
        if (!(obj == null || method == null)) {
            try {
                method.setAccessible(true);
                obj2 = method.invoke(obj, objArr);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return obj2;
    }

    public static void a(Context context, Intent intent) {
        new b(intent, context).start();
    }

    public static void a(Context context, boolean z) {
        a.clear();
        i.b(context).edit().putBoolean(h.h, z).commit();
        try {
            b(context);
        } catch (Exception e) {
        }
    }

    private static e b(Context context, Class cls) {
        try {
            e eVar = (e) cls.newInstance();
            eVar.a(b(context).loadClass(eVar.a()).newInstance());
            return eVar;
        } catch (Exception e) {
            if (!i.b(context).getBoolean(h.h, true)) {
                d.a(context, true);
            }
            throw e;
        }
    }

    private static DexClassLoader b(Context context) {
        if (d.g(context)) {
            File b = d.b(context);
            File a = d.a(context);
            File f = d.f(context);
            if (b == null || !f.exists()) {
                b = new DexClassLoader(b.getAbsolutePath(), a.getAbsolutePath(), null, context.getClassLoader());
            }
            return b;
        }
        d.a(context, false);
        throw new Exception("1000");
    }

    private static void c(Context context) {
        try {
            a(context, f.class);
            Intent intent = new Intent(h.n);
            intent.setClass(context, dr.class);
            intent.setFlags(32);
            context.sendBroadcast(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
