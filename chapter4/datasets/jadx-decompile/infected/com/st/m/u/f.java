package com.st.m.u;

import java.util.Properties;

public class f {
    public static final String a = c.a(a.B);
    private static f b = null;
    private Properties c = null;
    private boolean da = true;
    private boolean ef = true;
    private boolean f = true;

    private f() {
        if (this.c == null) {
            this.c = da.b();
        }
        this.ef = da.a(this.c, "a");
        this.da = da.a(this.c, "b");
        this.f = da.a(this.c, "c");
    }

    public static f a() {
        if (b == null) {
            b = new f();
        }
        return b;
    }

    public boolean b() {
        return this.da;
    }

    public boolean c() {
        return this.ef;
    }

    public boolean da() {
        return this.f;
    }
}
