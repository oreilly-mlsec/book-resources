package com.appbrain.e;

import com.appbrain.c.c;
import com.appbrain.c.e;
import com.appbrain.c.h;
import com.appbrain.c.j;
import com.appbrain.c.p;
import u.aly.bs;

public final class n extends h {
    private static final n a;
    private int b;
    private Object c;
    private Object d;
    private boolean e;
    private byte f;
    private int g;

    static {
        n nVar = new n((byte) 0);
        a = nVar;
        nVar.c = bs.b;
        nVar.d = bs.b;
        nVar.e = false;
    }

    private n() {
        super((byte) 0);
        this.f = (byte) -1;
        this.g = -1;
    }

    private n(byte b) {
        this.f = (byte) -1;
        this.g = -1;
    }

    public static n a() {
        return a;
    }

    public static o i() {
        return new o();
    }

    private c j() {
        Object obj = this.c;
        if (!(obj instanceof String)) {
            return (c) obj;
        }
        c a = c.a((String) obj);
        this.c = a;
        return a;
    }

    private c k() {
        Object obj = this.d;
        if (!(obj instanceof String)) {
            return (c) obj;
        }
        c a = c.a((String) obj);
        this.d = a;
        return a;
    }

    public final int G() {
        int i = this.g;
        if (i == -1) {
            i = 0;
            if ((this.b & 1) == 1) {
                i = e.b(1, j()) + 0;
            }
            if ((this.b & 2) == 2) {
                i += e.b(2, k());
            }
            if ((this.b & 4) == 4) {
                boolean z = this.e;
                i += e.a(4);
            }
            this.g = i;
        }
        return i;
    }

    public final /* synthetic */ p J() {
        return new o().a(this);
    }

    public final void a(e eVar) {
        G();
        if ((this.b & 1) == 1) {
            eVar.a(1, j());
        }
        if ((this.b & 2) == 2) {
            eVar.a(2, k());
        }
        if ((this.b & 4) == 4) {
            eVar.a(4, this.e);
        }
    }

    public final boolean b() {
        return (this.b & 1) == 1;
    }

    public final String c() {
        Object obj = this.c;
        if (obj instanceof String) {
            return (String) obj;
        }
        c cVar = (c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.c = c;
        }
        return c;
    }

    public final boolean d() {
        return (this.b & 2) == 2;
    }

    public final String e() {
        Object obj = this.d;
        if (obj instanceof String) {
            return (String) obj;
        }
        c cVar = (c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.d = c;
        }
        return c;
    }

    public final boolean f() {
        return (this.b & 4) == 4;
    }

    public final boolean g() {
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
}
