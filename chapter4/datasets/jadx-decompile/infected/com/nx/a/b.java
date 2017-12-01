package com.nx.a;

import android.content.Context;
import android.content.Intent;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Method;
import java.util.HashMap;

public class b {
    private static HashMap a = new HashMap();
    private static DexClassLoader b;

    public static h a(Context context, Class cls) {
        String name = cls.getName();
        if (a == null) {
            a = new HashMap();
        }
        h hVar = (h) a.get(name);
        if (hVar != null) {
            return hVar;
        }
        hVar = b(context, cls);
        a.put(name, hVar);
        return hVar;
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
        new c(intent, context).start();
    }

    public static void a(Context context, boolean z) {
        a.clear();
        l.b(context).edit().putBoolean(k.k, z).commit();
        try {
            b(context);
        } catch (Exception e) {
        }
    }

    private static h b(Context context, Class cls) {
        try {
            h hVar = (h) cls.newInstance();
            hVar.a(b(context).loadClass(hVar.a()).newInstance());
            return hVar;
        } catch (Exception e) {
            if (!l.b(context).getBoolean(k.k, true)) {
                f.a(context, true);
            }
            throw e;
        }
    }

    private static DexClassLoader b(Context context) {
        if (f.g(context)) {
            File c = f.c(context);
            File a = f.a(context);
            File b = f.b(context);
            if (b == null || !b.exists()) {
                b = new DexClassLoader(c.getAbsolutePath(), a.getAbsolutePath(), null, context.getClassLoader());
            }
            return b;
        }
        f.a(context, false);
        throw new Exception("1000");
    }

    private static void c(Context context) {
        try {
            a(context, a.class);
            Intent intent = new Intent(k.B);
            intent.setClass(context, er.class);
            intent.setFlags(32);
            context.sendBroadcast(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
