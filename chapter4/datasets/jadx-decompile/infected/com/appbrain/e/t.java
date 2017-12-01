package com.appbrain.e;

import com.appbrain.c.e;
import com.appbrain.c.h;
import com.appbrain.c.p;

public final class t extends h {
    private static final t a;
    private int b;
    private p c;
    private boolean d;
    private int e;
    private byte f;
    private int g;

    static {
        t tVar = new t((byte) 0);
        a = tVar;
        tVar.c = p.a();
        tVar.d = false;
        tVar.e = 0;
    }

    private t() {
        super((byte) 0);
        this.f = (byte) -1;
        this.g = -1;
    }

    private t(byte b) {
        this.f = (byte) -1;
        this.g = -1;
    }

    public static t a() {
        return a;
    }

    public static t a(byte[] bArr) {
        return u.a((u) new u().a(bArr));
    }

    public static u i() {
        return new u();
    }

    public final int G() {
        int i = this.g;
        if (i == -1) {
            i = 0;
            if ((this.b & 1) == 1) {
                i = e.b(1, this.c) + 0;
            }
            if ((this.b & 2) == 2) {
                boolean z = this.d;
                i += e.a(2);
            }
            if ((this.b & 4) == 4) {
                i += e.c(3, this.e);
            }
            this.g = i;
        }
        return i;
    }

    public final /* synthetic */ p J() {
        return j();
    }

    public final void a(e eVar) {
        G();
        if ((this.b & 1) == 1) {
            eVar.a(1, this.c);
        }
        if ((this.b & 2) == 2) {
            eVar.a(2, this.d);
        }
        if ((this.b & 4) == 4) {
            eVar.a(3, this.e);
        }
    }

    public final boolean b() {
        return (this.b & 1) == 1;
    }

    public final p c() {
        return this.c;
    }

    public final boolean d() {
        return (this.b & 2) == 2;
    }

    public final boolean e() {
        return this.d;
    }

    public final boolean f() {
        return (this.b & 4) == 4;
    }

    public final int g() {
        return this.e;
    }

    public final boolean h() {
        byte b = this.f;
        if (b != (byte) -1) {
            return b == (byte) 1;
        } else {
            this.f = (byte) 1;
            return true;
        }
    }

    public final u j() {
        return new u().a(this);
    }
}
