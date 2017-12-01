package com.appbrain.b;

import com.appbrain.c.e;
import com.appbrain.c.h;
import com.appbrain.c.j;
import com.appbrain.c.p;
import u.aly.bs;

public final class c extends h {
    private static final c a;
    private int b;
    private Object c;
    private com.appbrain.c.c d;
    private com.appbrain.c.c e;
    private long f;
    private e g;
    private boolean h;
    private Object i;
    private boolean j;
    private Object k;
    private Object l;
    private Object m;
    private Object n;
    private Object o;
    private int p;
    private Object q;
    private byte r;
    private int s;

    static {
        c cVar = new c((byte) 0);
        a = cVar;
        cVar.c = bs.b;
        cVar.d = com.appbrain.c.c.a;
        cVar.e = com.appbrain.c.c.a;
        cVar.f = 0;
        cVar.g = e.INTEGRITY_ONLY;
        cVar.h = false;
        cVar.i = bs.b;
        cVar.j = false;
        cVar.k = bs.b;
        cVar.l = bs.b;
        cVar.m = bs.b;
        cVar.n = bs.b;
        cVar.o = bs.b;
        cVar.p = 0;
        cVar.q = bs.b;
    }

    private c() {
        super((byte) 0);
        this.r = (byte) -1;
        this.s = -1;
    }

    private c(byte b) {
        this.r = (byte) -1;
        this.s = -1;
    }

    public static d H() {
        return new d();
    }

    private com.appbrain.c.c L() {
        Object obj = this.c;
        if (!(obj instanceof String)) {
            return (com.appbrain.c.c) obj;
        }
        com.appbrain.c.c a = com.appbrain.c.c.a((String) obj);
        this.c = a;
        return a;
    }

    private com.appbrain.c.c M() {
        Object obj = this.i;
        if (!(obj instanceof String)) {
            return (com.appbrain.c.c) obj;
        }
        com.appbrain.c.c a = com.appbrain.c.c.a((String) obj);
        this.i = a;
        return a;
    }

    private com.appbrain.c.c N() {
        Object obj = this.k;
        if (!(obj instanceof String)) {
            return (com.appbrain.c.c) obj;
        }
        com.appbrain.c.c a = com.appbrain.c.c.a((String) obj);
        this.k = a;
        return a;
    }

    private com.appbrain.c.c O() {
        Object obj = this.l;
        if (!(obj instanceof String)) {
            return (com.appbrain.c.c) obj;
        }
        com.appbrain.c.c a = com.appbrain.c.c.a((String) obj);
        this.l = a;
        return a;
    }

    private com.appbrain.c.c P() {
        Object obj = this.m;
        if (!(obj instanceof String)) {
            return (com.appbrain.c.c) obj;
        }
        com.appbrain.c.c a = com.appbrain.c.c.a((String) obj);
        this.m = a;
        return a;
    }

    private com.appbrain.c.c Q() {
        Object obj = this.n;
        if (!(obj instanceof String)) {
            return (com.appbrain.c.c) obj;
        }
        com.appbrain.c.c a = com.appbrain.c.c.a((String) obj);
        this.n = a;
        return a;
    }

    private com.appbrain.c.c R() {
        Object obj = this.o;
        if (!(obj instanceof String)) {
            return (com.appbrain.c.c) obj;
        }
        com.appbrain.c.c a = com.appbrain.c.c.a((String) obj);
        this.o = a;
        return a;
    }

    private com.appbrain.c.c S() {
        Object obj = this.q;
        if (!(obj instanceof String)) {
            return (com.appbrain.c.c) obj;
        }
        com.appbrain.c.c a = com.appbrain.c.c.a((String) obj);
        this.q = a;
        return a;
    }

    public static c a() {
        return a;
    }

    public static c a(byte[] bArr) {
        return d.a((d) new d().a(bArr));
    }

    public final String A() {
        Object obj = this.o;
        if (obj instanceof String) {
            return (String) obj;
        }
        com.appbrain.c.c cVar = (com.appbrain.c.c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.o = c;
        }
        return c;
    }

    public final boolean B() {
        return (this.b & 8192) == 8192;
    }

    public final int C() {
        return this.p;
    }

    public final boolean D() {
        return (this.b & 16384) == 16384;
    }

    public final String E() {
        Object obj = this.q;
        if (obj instanceof String) {
            return (String) obj;
        }
        com.appbrain.c.c cVar = (com.appbrain.c.c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.q = c;
        }
        return c;
    }

    public final boolean F() {
        byte b = this.r;
        if (b != (byte) -1) {
            return b == (byte) 1;
        } else {
            this.r = (byte) 1;
            return true;
        }
    }

    public final int G() {
        int i = this.s;
        if (i == -1) {
            boolean z;
            i = 0;
            if ((this.b & 256) == 256) {
                i = e.b(1, N()) + 0;
            }
            if ((this.b & 512) == 512) {
                i += e.b(2, O());
            }
            if ((this.b & 1024) == 1024) {
                i += e.b(3, P());
            }
            if ((this.b & 2048) == 2048) {
                i += e.b(4, Q());
            }
            if ((this.b & 4096) == 4096) {
                i += e.b(5, R());
            }
            if ((this.b & 8192) == 8192) {
                i += e.c(6, this.p);
            }
            if ((this.b & 16384) == 16384) {
                i += e.b(7, S());
            }
            if ((this.b & 1) == 1) {
                i += e.b(9, L());
            }
            if ((this.b & 2) == 2) {
                i += e.b(10, this.d);
            }
            if ((this.b & 8) == 8) {
                i += e.b(11, this.f);
            }
            if ((this.b & 16) == 16) {
                i += e.d(12, this.g.a());
            }
            if ((this.b & 32) == 32) {
                z = this.h;
                i += e.a(13);
            }
            if ((this.b & 64) == 64) {
                i += e.b(14, M());
            }
            if ((this.b & 128) == 128) {
                z = this.j;
                i += e.a(15);
            }
            if ((this.b & 4) == 4) {
                i += e.b(16, this.e);
            }
            this.s = i;
        }
        return i;
    }

    public final d I() {
        return new d().a(this);
    }

    public final /* synthetic */ p J() {
        return I();
    }

    public final void a(e eVar) {
        G();
        if ((this.b & 256) == 256) {
            eVar.a(1, N());
        }
        if ((this.b & 512) == 512) {
            eVar.a(2, O());
        }
        if ((this.b & 1024) == 1024) {
            eVar.a(3, P());
        }
        if ((this.b & 2048) == 2048) {
            eVar.a(4, Q());
        }
        if ((this.b & 4096) == 4096) {
            eVar.a(5, R());
        }
        if ((this.b & 8192) == 8192) {
            eVar.a(6, this.p);
        }
        if ((this.b & 16384) == 16384) {
            eVar.a(7, S());
        }
        if ((this.b & 1) == 1) {
            eVar.a(9, L());
        }
        if ((this.b & 2) == 2) {
            eVar.a(10, this.d);
        }
        if ((this.b & 8) == 8) {
            eVar.a(11, this.f);
        }
        if ((this.b & 16) == 16) {
            eVar.b(12, this.g.a());
        }
        if ((this.b & 32) == 32) {
            eVar.a(13, this.h);
        }
        if ((this.b & 64) == 64) {
            eVar.a(14, M());
        }
        if ((this.b & 128) == 128) {
            eVar.a(15, this.j);
        }
        if ((this.b & 4) == 4) {
            eVar.a(16, this.e);
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
        com.appbrain.c.c cVar = (com.appbrain.c.c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.c = c;
        }
        return c;
    }

    public final boolean d() {
        return (this.b & 2) == 2;
    }

    public final com.appbrain.c.c e() {
        return this.d;
    }

    public final boolean f() {
        return (this.b & 4) == 4;
    }

    public final com.appbrain.c.c g() {
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

    public final e k() {
        return this.g;
    }

    public final boolean l() {
        return (this.b & 32) == 32;
    }

    public final boolean m() {
        return this.h;
    }

    public final boolean n() {
        return (this.b & 64) == 64;
    }

    public final String o() {
        Object obj = this.i;
        if (obj instanceof String) {
            return (String) obj;
        }
        com.appbrain.c.c cVar = (com.appbrain.c.c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.i = c;
        }
        return c;
    }

    public final boolean p() {
        return (this.b & 128) == 128;
    }

    public final boolean q() {
        return this.j;
    }

    public final boolean r() {
        return (this.b & 256) == 256;
    }

    public final String s() {
        Object obj = this.k;
        if (obj instanceof String) {
            return (String) obj;
        }
        com.appbrain.c.c cVar = (com.appbrain.c.c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.k = c;
        }
        return c;
    }

    public final boolean t() {
        return (this.b & 512) == 512;
    }

    public final String u() {
        Object obj = this.l;
        if (obj instanceof String) {
            return (String) obj;
        }
        com.appbrain.c.c cVar = (com.appbrain.c.c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.l = c;
        }
        return c;
    }

    public final boolean v() {
        return (this.b & 1024) == 1024;
    }

    public final String w() {
        Object obj = this.m;
        if (obj instanceof String) {
            return (String) obj;
        }
        com.appbrain.c.c cVar = (com.appbrain.c.c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.m = c;
        }
        return c;
    }

    public final boolean x() {
        return (this.b & 2048) == 2048;
    }

    public final String y() {
        Object obj = this.n;
        if (obj instanceof String) {
            return (String) obj;
        }
        com.appbrain.c.c cVar = (com.appbrain.c.c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.n = c;
        }
        return c;
    }

    public final boolean z() {
        return (this.b & 4096) == 4096;
    }
}
