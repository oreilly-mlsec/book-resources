package com.appbrain.e;

import com.appbrain.c.e;
import com.appbrain.c.h;
import com.appbrain.c.p;

public final class j extends h {
    private static final j a;
    private int b;
    private l c;
    private byte d;
    private int e;

    static {
        j jVar = new j((byte) 0);
        a = jVar;
        jVar.c = l.a();
    }

    private j() {
        super((byte) 0);
        this.d = (byte) -1;
        this.e = -1;
    }

    private j(byte b) {
        this.d = (byte) -1;
        this.e = -1;
    }

    public static j a() {
        return a;
    }

    public static j a(byte[] bArr) {
        return k.a((k) new k().a(bArr));
    }

    public final int G() {
        int i = this.e;
        if (i == -1) {
            i = 0;
            if ((this.b & 1) == 1) {
                i = e.b(1, this.c) + 0;
            }
            this.e = i;
        }
        return i;
    }

    public final /* synthetic */ p J() {
        return new k().a(this);
    }

    public final void a(e eVar) {
        G();
        if ((this.b & 1) == 1) {
            eVar.a(1, this.c);
        }
    }

    public final boolean b() {
        return (this.b & 1) == 1;
    }

    public final l c() {
        return this.c;
    }

    public final boolean d() {
        byte b = this.d;
        if (b != (byte) -1) {
            return b == (byte) 1;
        } else {
            this.d = (byte) 1;
            return true;
        }
    }
}
