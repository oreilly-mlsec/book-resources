package com.m.s;

import android.content.Context;
import android.os.Handler;

public enum ad {
    CHECK_UPDATE_SERVICE(0, c.class),
    SDK_INIT_SERVICE(1, s.class),
    CONFIG_INIT_SERVICE(2, sa.class);
    
    private int ad;
    private Class<?> ae;

    private ad(int i, Class<?> cls) {
        this.ae = cls;
        this.ad = i;
    }

    public static int aa() {
        return ac().length;
    }

    public static synchronized i aa(int i, Context context, Handler handler) {
        i iVar;
        synchronized (ad.class) {
            iVar = null;
            for (ad adVar : ac()) {
                if (adVar.ad == i) {
                    iVar = aa(adVar, context, handler);
                }
            }
        }
        return iVar;
    }

    private static i aa(ad adVar, Context context, Handler handler) {
        try {
            return (i) adVar.ae.getDeclaredConstructor(new Class[]{Integer.TYPE, Context.class, Handler.class}).newInstance(new Object[]{Integer.valueOf(adVar.ad), context, handler});
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ad[] ac() {
        Object obj = af;
        int length = obj.length;
        Object obj2 = new ad[length];
        System.arraycopy(obj, 0, obj2, 0, length);
        return obj2;
    }

    public int ab() {
        return this.ad;
    }
}
