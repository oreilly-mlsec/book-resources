package com.appbrain.e;

import com.appbrain.c.k;

public enum f {
    UNKNOWN_SOURCE(-1),
    DIRECT(0),
    INTERSTITIAL(1),
    MAYBE_INTERSTITIAL(2),
    MAYBE_OFFERWALL(3),
    SHOW_DIALOG(4);
    
    private static k g;
    private final int h;

    static {
        g = new g();
    }

    private f(int i) {
        this.h = i;
    }

    public static f a(int i) {
        switch (i) {
            case -1:
                return UNKNOWN_SOURCE;
            case 0:
                return DIRECT;
            case 1:
                return INTERSTITIAL;
            case 2:
                return MAYBE_INTERSTITIAL;
            case 3:
                return MAYBE_OFFERWALL;
            case 4:
                return SHOW_DIALOG;
            default:
                return null;
        }
    }

    public final int a() {
        return this.h;
    }
}
