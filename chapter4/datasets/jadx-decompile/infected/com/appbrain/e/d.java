package com.appbrain.e;

import com.appbrain.c.e;
import com.appbrain.c.h;
import com.appbrain.c.p;

public final class d extends h {
    private static final d a;
    private int b;
    private h c;
    private int d;
    private int e;
    private f f;
    private byte g;
    private int h;

    static {
        d dVar = new d((byte) 0);
        a = dVar;
        dVar.c = h.a();
        dVar.d = 0;
        dVar.e = 0;
        dVar.f = f.UNKNOWN_SOURCE;
    }

    private d() {
        super((byte) 0);
        this.g = (byte) -1;
        this.h = -1;
    }

    private d(byte b) {
        this.g = (byte) -1;
        this.h = -1;
    }

    public static d a() {
        return a;
    }

    public static e k() {
        return new e();
    }

    public final int G() {
        int i = this.h;
        if (i == -1) {
            i = 0;
            if ((this.b & 1) == 1) {
                i = e.b(1, this.c) + 0;
            }
            if ((this.b & 2) == 2) {
                i += e.c(4, this.d);
            }
            if ((this.b & 4) == 4) {
                i += e.c(5, this.e);
            }
            if ((this.b & 8) == 8) {
                i += e.d(6, this.f.a());
            }
            this.h = i;
        }
        return i;
    }

    public final /* synthetic */ p J() {
        return new e().a(this);
    }

    public final void a(e eVar) {
        G();
        if ((this.b & 1) == 1) {
            eVar.a(1, this.c);
        }
        if ((this.b & 2) == 2) {
            eVar.a(4, this.d);
        }
        if ((this.b & 4) == 4) {
            eVar.a(5, this.e);
        }
        if ((this.b & 8) == 8) {
            eVar.b(6, this.f.a());
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

    public final int e() {
        return this.d;
    }

    public final boolean f() {
        return (this.b & 4) == 4;
    }

    public final int g() {
        return this.e;
    }

    public final boolean h() {
        return (this.b & 8) == 8;
    }

    public final f i() {
        return this.f;
    }

    public final boolean j() {
        byte b = this.g;
        if (b != (byte) -1) {
            return b == (byte) 1;
        } else {
            this.g = (byte) 1;
            return true;
        }
    }
}
