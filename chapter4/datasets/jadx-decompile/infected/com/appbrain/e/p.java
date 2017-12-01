package com.appbrain.e;

import com.appbrain.c.c;
import com.appbrain.c.e;
import com.appbrain.c.h;
import com.appbrain.c.j;
import u.aly.bs;

public final class p extends h {
    private static final p a;
    private int b;
    private h c;
    private Object d;
    private b e;
    private long f;
    private long g;
    private Object h;
    private Object i;
    private byte j;
    private int k;

    static {
        p pVar = new p((byte) 0);
        a = pVar;
        pVar.c = h.a();
        pVar.d = bs.b;
        pVar.e = b.SELECT;
        pVar.f = 0;
        pVar.g = 0;
        pVar.h = bs.b;
        pVar.i = bs.b;
    }

    private p() {
        super((byte) 0);
        this.j = (byte) -1;
        this.k = -1;
    }

    private p(byte b) {
        this.j = (byte) -1;
        this.k = -1;
    }

    public static p a() {
        return a;
    }

    public static q a(p pVar) {
        return new q().a(pVar);
    }

    public static q q() {
        return new q();
    }

    private c r() {
        Object obj = this.d;
        if (!(obj instanceof String)) {
            return (c) obj;
        }
        c a = c.a((String) obj);
        this.d = a;
        return a;
    }

    private c s() {
        Object obj = this.h;
        if (!(obj instanceof String)) {
            return (c) obj;
        }
        c a = c.a((String) obj);
        this.h = a;
        return a;
    }

    private c t() {
        Object obj = this.i;
        if (!(obj instanceof String)) {
            return (c) obj;
        }
        c a = c.a((String) obj);
        this.i = a;
        return a;
    }

    public final int G() {
        int i = this.k;
        if (i == -1) {
            i = 0;
            if ((this.b & 1) == 1) {
                i = e.b(1, this.c) + 0;
            }
            if ((this.b & 2) == 2) {
                i += e.b(2, r());
            }
            if ((this.b & 4) == 4) {
                i += e.d(4, this.e.a());
            }
            if ((this.b & 8) == 8) {
                i += e.b(5, this.f);
            }
            if ((this.b & 16) == 16) {
                i += e.b(6, this.g);
            }
            if ((this.b & 32) == 32) {
                i += e.b(7, s());
            }
            if ((this.b & 64) == 64) {
                i += e.b(8, t());
            }
            this.k = i;
        }
        return i;
    }

    public final /* synthetic */ com.appbrain.c.p J() {
        return new q().a(this);
    }

    public final void a(e eVar) {
        G();
        if ((this.b & 1) == 1) {
            eVar.a(1, this.c);
        }
        if ((this.b & 2) == 2) {
            eVar.a(2, r());
        }
        if ((this.b & 4) == 4) {
            eVar.b(4, this.e.a());
        }
        if ((this.b & 8) == 8) {
            eVar.a(5, this.f);
        }
        if ((this.b & 16) == 16) {
            eVar.a(6, this.g);
        }
        if ((this.b & 32) == 32) {
            eVar.a(7, s());
        }
        if ((this.b & 64) == 64) {
            eVar.a(8, t());
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

    public final b g() {
        return this.e;
    }

    public final boolean h() {
        return (this.b & 8) == 8;
    }

    public final long i() {
        return this.f;
    }

    public final boolean j() {
        return (this.b & 16) == 16;
    }

    public final long k() {
        return this.g;
    }

    public final boolean l() {
        return (this.b & 32) == 32;
    }

    public final String m() {
        Object obj = this.h;
        if (obj instanceof String) {
            return (String) obj;
        }
        c cVar = (c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.h = c;
        }
        return c;
    }

    public final boolean n() {
        return (this.b & 64) == 64;
    }

    public final String o() {
        Object obj = this.i;
        if (obj instanceof String) {
            return (String) obj;
        }
        c cVar = (c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.i = c;
        }
        return c;
    }

    public final boolean p() {
        byte b = this.j;
        if (b != (byte) -1) {
            return b == (byte) 1;
        } else {
            this.j = (byte) 1;
            return true;
        }
    }
}
