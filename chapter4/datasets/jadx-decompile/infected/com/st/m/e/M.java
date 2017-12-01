package com.st.m.e;

import android.content.Context;
import android.os.Handler;

public enum M {
    CONNFIG_INIT_SERVICE(0, C.class),
    SEND_DATA_SERVICE(1, S.class);
    
    private int c;
    private Class<?> da;

    private M(int i, Class<?> cls) {
        this.da = cls;
        this.c = i;
    }

    public static int a() {
        return c().length;
    }

    public static synchronized I a(int i, Context context, Handler handler) {
        I i2;
        synchronized (M.class) {
            i2 = null;
            for (M m : c()) {
                if (m.c == i) {
                    i2 = a(m, context, handler);
                }
            }
        }
        return i2;
    }

    private static I a(M m, Context context, Handler handler) {
        try {
            return (I) m.da.getDeclaredConstructor(new Class[]{Integer.TYPE, Context.class, Handler.class}).newInstance(new Object[]{Integer.valueOf(m.c), context, handler});
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static M[] c() {
        Object obj = ef;
        int length = obj.length;
        Object obj2 = new M[length];
        System.arraycopy(obj, 0, obj2, 0, length);
        return obj2;
    }

    public int b() {
        return this.c;
    }
}
