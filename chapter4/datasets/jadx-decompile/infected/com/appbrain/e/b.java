package com.appbrain.e;

import com.appbrain.c.k;

public enum b {
    SELECT(1),
    IMPRESS(2),
    CLICK(3),
    INSTALL(4),
    UNINSTALL(5);
    
    private static k f;
    private final int g;

    static {
        f = new c();
    }

    private b(int i) {
        this.g = i;
    }

    public static b a(int i) {
        switch (i) {
            case 1:
                return SELECT;
            case 2:
                return IMPRESS;
            case 3:
                return CLICK;
            case 4:
                return INSTALL;
            case 5:
                return UNINSTALL;
            default:
                return null;
        }
    }

    public final int a() {
        return this.g;
    }
}
