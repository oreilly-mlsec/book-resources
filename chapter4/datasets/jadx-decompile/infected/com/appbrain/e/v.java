package com.appbrain.e;

import com.appbrain.c.e;
import com.appbrain.c.h;
import com.appbrain.c.p;

public final class v extends h {
    private static final v a;
    private int b;
    private h c;
    private boolean d;
    private byte e;
    private int f;

    static {
        v vVar = new v((byte) 0);
        a = vVar;
        vVar.c = h.a();
        vVar.d = false;
    }

    private v() {
        super((byte) 0);
        this.e = (byte) -1;
        this.f = -1;
    }

    private v(byte b) {
        this.e = (byte) -1;
        this.f = -1;
    }

    public static v a() {
        return a;
    }

    public static w g() {
        return new w();
    }

    public final int G() {
        int i = this.f;
        if (i == -1) {
            i = 0;
            if ((this.b & 1) == 1) {
                i = e.b(1, this.c) + 0;
            }
            if ((this.b & 2) == 2) {
                boolean z = this.d;
                i += e.a(2);
            }
            this.f = i;
        }
        return i;
    }

    public final /* synthetic */ p J() {
        return new w().a(this);
    }

    public final void a(e eVar) {
        G();
        if ((this.b & 1) == 1) {
            eVar.a(1, this.c);
        }
        if ((this.b & 2) == 2) {
            eVar.a(2, this.d);
        }
    }

    public final boolean b() {
        return (this.b & 1) == 1;
    }

    public final h c() {
        return this.c;
    }

    public final boolean d() {
        return (this.b & 2) == 2;
    }

    public final boolean e() {
        return this.d;
    }

    public final boolean f() {
        byte b = this.e;
        if (b != (byte) -1) {
            return b == (byte) 1;
        } else {
            this.e = (byte) 1;
            return true;
        }
    }
}
