package com.appbrain.b;

import com.appbrain.c.k;

public enum e {
    INTEGRITY_ONLY(1),
    SHARED_KEY(2);
    
    private static k c;
    private final int d;

    static {
        c = new f();
    }

    private e(int i) {
        this.d = i;
    }

    public static e a(int i) {
        switch (i) {
            case 1:
                return INTEGRITY_ONLY;
            case 2:
                return SHARED_KEY;
            default:
                return null;
        }
    }

    public final int a() {
        return this.d;
    }
}
