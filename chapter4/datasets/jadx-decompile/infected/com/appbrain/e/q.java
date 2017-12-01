package com.appbrain.e;

import com.appbrain.c.b;
import com.appbrain.c.d;
import com.appbrain.c.g;
import com.appbrain.c.i;
import com.appbrain.c.o;
import com.appbrain.c.p;
import com.umeng.analytics.a;
import u.aly.bs;

public final class q extends i {
    private int a;
    private h b = h.a();
    private Object c = bs.b;
    private b d = b.SELECT;
    private long e;
    private long f;
    private Object g = bs.b;
    private Object h = bs.b;

    private q() {
    }

    private q c(d dVar, g gVar) {
        while (true) {
            int a = dVar.a();
            switch (a) {
                case 0:
                    break;
                case 10:
                    p av = h.av();
                    if (((this.a & 1) == 1 ? 1 : null) != null) {
                        av.a(this.b);
                    }
                    dVar.a(av, gVar);
                    h b = av.b();
                    if (b == null) {
                        throw new NullPointerException();
                    }
                    this.b = b;
                    this.a |= 1;
                    continue;
                case 18:
                    this.a |= 2;
                    this.c = dVar.e();
                    continue;
                case a.k /*32*/:
                    b a2 = b.a(dVar.f());
                    if (a2 != null) {
                        this.a |= 4;
                        this.d = a2;
                        break;
                    }
                    continue;
                case 40:
                    this.a |= 8;
                    this.e = dVar.b();
                    continue;
                case 48:
                    this.a |= 16;
                    this.f = dVar.b();
                    continue;
                case 58:
                    this.a |= 32;
                    this.g = dVar.e();
                    continue;
                case 66:
                    this.a |= 64;
                    this.h = dVar.e();
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

    public final /* synthetic */ b a(d dVar, g gVar) {
        return c(dVar, gVar);
    }

    public final p a() {
        p b = b();
        if (b.p()) {
            return b;
        }
        throw new com.appbrain.c.q();
    }

    public final q a(long j) {
        this.a |= 8;
        this.e = j;
        return this;
    }

    public final q a(b bVar) {
        if (bVar == null) {
            throw new NullPointerException();
        }
        this.a |= 4;
        this.d = bVar;
        return this;
    }

    public final q a(i iVar) {
        this.b = iVar.a();
        this.a |= 1;
        return this;
    }

    public final q a(p pVar) {
        if (pVar != p.a()) {
            if (pVar.b()) {
                h c = pVar.c();
                if ((this.a & 1) != 1 || this.b == h.a()) {
                    this.b = c;
                } else {
                    this.b = h.a(this.b).a(c).b();
                }
                this.a |= 1;
            }
            if (pVar.d()) {
                a(pVar.e());
            }
            if (pVar.f()) {
                a(pVar.g());
            }
            if (pVar.h()) {
                a(pVar.i());
            }
            if (pVar.j()) {
                b(pVar.k());
            }
            if (pVar.l()) {
                b(pVar.m());
            }
            if (pVar.n()) {
                c(pVar.o());
            }
        }
        return this;
    }

    public final q a(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 2;
        this.c = str;
        return this;
    }

    public final /* synthetic */ p b(d dVar, g gVar) {
        return c(dVar, gVar);
    }

    public final p b() {
        int i = 1;
        p pVar = new p();
        int i2 = this.a;
        if ((i2 & 1) != 1) {
            i = 0;
        }
        pVar.c = this.b;
        if ((i2 & 2) == 2) {
            i |= 2;
        }
        pVar.d = this.c;
        if ((i2 & 4) == 4) {
            i |= 4;
        }
        pVar.e = this.d;
        if ((i2 & 8) == 8) {
            i |= 8;
        }
        pVar.f = this.e;
        if ((i2 & 16) == 16) {
            i |= 16;
        }
        pVar.g = this.f;
        if ((i2 & 32) == 32) {
            i |= 32;
        }
        pVar.h = this.g;
        if ((i2 & 64) == 64) {
            i |= 64;
        }
        pVar.i = this.h;
        pVar.b = i;
        return pVar;
    }

    public final q b(long j) {
        this.a |= 16;
        this.f = j;
        return this;
    }

    public final q b(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 32;
        this.g = str;
        return this;
    }

    public final q c(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 64;
        this.h = str;
        return this;
    }

    public final /* synthetic */ i e() {
        return new q().a(b());
    }

    public final /* synthetic */ o g() {
        return a();
    }
}
