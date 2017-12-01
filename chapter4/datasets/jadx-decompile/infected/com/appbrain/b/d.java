package com.appbrain.b;

import com.appbrain.c.b;
import com.appbrain.c.c;
import com.appbrain.c.g;
import com.appbrain.c.i;
import com.appbrain.c.o;
import com.appbrain.c.p;
import com.appbrain.c.q;
import u.aly.bs;

public final class d extends i {
    private int a;
    private Object b = bs.b;
    private c c = c.a;
    private c d = c.a;
    private long e;
    private e f = e.INTEGRITY_ONLY;
    private boolean g;
    private Object h = bs.b;
    private boolean i;
    private Object j = bs.b;
    private Object k = bs.b;
    private Object l = bs.b;
    private Object m = bs.b;
    private Object n = bs.b;
    private int o;
    private Object p = bs.b;

    private d() {
    }

    static /* synthetic */ c a(d dVar) {
        c i = dVar.i();
        if (i.F()) {
            return i;
        }
        throw new q().a();
    }

    private d a(com.appbrain.c.d dVar) {
        while (true) {
            int a = dVar.a();
            switch (a) {
                case 0:
                    break;
                case 10:
                    this.a |= 256;
                    this.j = dVar.e();
                    continue;
                case 18:
                    this.a |= 512;
                    this.k = dVar.e();
                    continue;
                case 26:
                    this.a |= 1024;
                    this.l = dVar.e();
                    continue;
                case 34:
                    this.a |= 2048;
                    this.m = dVar.e();
                    continue;
                case 42:
                    this.a |= 4096;
                    this.n = dVar.e();
                    continue;
                case 48:
                    this.a |= 8192;
                    this.o = dVar.c();
                    continue;
                case 58:
                    this.a |= 16384;
                    this.p = dVar.e();
                    continue;
                case 74:
                    this.a |= 1;
                    this.b = dVar.e();
                    continue;
                case 82:
                    this.a |= 2;
                    this.c = dVar.e();
                    continue;
                case 88:
                    this.a |= 8;
                    this.e = dVar.b();
                    continue;
                case 96:
                    e a2 = e.a(dVar.f());
                    if (a2 != null) {
                        this.a |= 16;
                        this.f = a2;
                        break;
                    }
                    continue;
                case 104:
                    this.a |= 32;
                    this.g = dVar.d();
                    continue;
                case 114:
                    this.a |= 64;
                    this.h = dVar.e();
                    continue;
                case 120:
                    this.a |= 128;
                    this.i = dVar.d();
                    continue;
                case 130:
                    this.a |= 4;
                    this.d = dVar.e();
                    continue;
                default:
                    if (!dVar.b(a)) {
                        break;
                    }
                    continue;
            }
            return this;
        }
    }

    private c i() {
        int i = 1;
        c cVar = new c();
        int i2 = this.a;
        if ((i2 & 1) != 1) {
            i = 0;
        }
        cVar.c = this.b;
        if ((i2 & 2) == 2) {
            i |= 2;
        }
        cVar.d = this.c;
        if ((i2 & 4) == 4) {
            i |= 4;
        }
        cVar.e = this.d;
        if ((i2 & 8) == 8) {
            i |= 8;
        }
        cVar.f = this.e;
        if ((i2 & 16) == 16) {
            i |= 16;
        }
        cVar.g = this.f;
        if ((i2 & 32) == 32) {
            i |= 32;
        }
        cVar.h = this.g;
        if ((i2 & 64) == 64) {
            i |= 64;
        }
        cVar.i = this.h;
        if ((i2 & 128) == 128) {
            i |= 128;
        }
        cVar.j = this.i;
        if ((i2 & 256) == 256) {
            i |= 256;
        }
        cVar.k = this.j;
        if ((i2 & 512) == 512) {
            i |= 512;
        }
        cVar.l = this.k;
        if ((i2 & 1024) == 1024) {
            i |= 1024;
        }
        cVar.m = this.l;
        if ((i2 & 2048) == 2048) {
            i |= 2048;
        }
        cVar.n = this.m;
        if ((i2 & 4096) == 4096) {
            i |= 4096;
        }
        cVar.o = this.n;
        if ((i2 & 8192) == 8192) {
            i |= 8192;
        }
        cVar.p = this.o;
        if ((i2 & 16384) == 16384) {
            i |= 16384;
        }
        cVar.q = this.p;
        cVar.b = i;
        return cVar;
    }

    public final d a() {
        return new d().a(i());
    }

    public final d a(long j) {
        this.a |= 8;
        this.e = j;
        return this;
    }

    public final d a(c cVar) {
        if (cVar != c.a()) {
            boolean m;
            String o;
            if (cVar.b()) {
                a(cVar.c());
            }
            if (cVar.d()) {
                a(cVar.e());
            }
            if (cVar.f()) {
                c g = cVar.g();
                if (g == null) {
                    throw new NullPointerException();
                }
                this.a |= 4;
                this.d = g;
            }
            if (cVar.h()) {
                a(cVar.i());
            }
            if (cVar.j()) {
                a(cVar.k());
            }
            if (cVar.l()) {
                m = cVar.m();
                this.a |= 32;
                this.g = m;
            }
            if (cVar.n()) {
                o = cVar.o();
                if (o == null) {
                    throw new NullPointerException();
                }
                this.a |= 64;
                this.h = o;
            }
            if (cVar.p()) {
                m = cVar.q();
                this.a |= 128;
                this.i = m;
            }
            if (cVar.r()) {
                o = cVar.s();
                if (o == null) {
                    throw new NullPointerException();
                }
                this.a |= 256;
                this.j = o;
            }
            if (cVar.t()) {
                o = cVar.u();
                if (o == null) {
                    throw new NullPointerException();
                }
                this.a |= 512;
                this.k = o;
            }
            if (cVar.v()) {
                o = cVar.w();
                if (o == null) {
                    throw new NullPointerException();
                }
                this.a |= 1024;
                this.l = o;
            }
            if (cVar.x()) {
                o = cVar.y();
                if (o == null) {
                    throw new NullPointerException();
                }
                this.a |= 2048;
                this.m = o;
            }
            if (cVar.z()) {
                o = cVar.A();
                if (o == null) {
                    throw new NullPointerException();
                }
                this.a |= 4096;
                this.n = o;
            }
            if (cVar.B()) {
                int C = cVar.C();
                this.a |= 8192;
                this.o = C;
            }
            if (cVar.D()) {
                o = cVar.E();
                if (o == null) {
                    throw new NullPointerException();
                }
                this.a |= 16384;
                this.p = o;
            }
        }
        return this;
    }

    public final d a(e eVar) {
        if (eVar == null) {
            throw new NullPointerException();
        }
        this.a |= 16;
        this.f = eVar;
        return this;
    }

    public final d a(c cVar) {
        if (cVar == null) {
            throw new NullPointerException();
        }
        this.a |= 2;
        this.c = cVar;
        return this;
    }

    public final d a(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 1;
        this.b = str;
        return this;
    }

    public final /* bridge */ /* synthetic */ b a(com.appbrain.c.d dVar, g gVar) {
        return a(dVar);
    }

    public final c b() {
        c i = i();
        if (i.F()) {
            return i;
        }
        throw new q();
    }

    public final /* synthetic */ p b(com.appbrain.c.d dVar, g gVar) {
        return a(dVar);
    }

    public final d c() {
        this.a &= -9;
        this.e = 0;
        return this;
    }

    public final /* synthetic */ Object clone() {
        return a();
    }

    public final d d() {
        this.a &= -17;
        this.f = e.INTEGRITY_ONLY;
        return this;
    }

    public final /* synthetic */ i e() {
        return a();
    }

    public final /* synthetic */ b f() {
        return a();
    }

    public final /* synthetic */ o g() {
        return b();
    }
}
