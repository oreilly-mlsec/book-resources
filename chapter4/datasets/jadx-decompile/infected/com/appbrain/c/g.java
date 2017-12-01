package com.appbrain.c;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class g {
    private static final g b = new g((byte) 0);
    private final Map a;

    g() {
        this.a = new HashMap();
    }

    private g(byte b) {
        this.a = Collections.emptyMap();
    }

    public static g a() {
        return b;
    }
}
