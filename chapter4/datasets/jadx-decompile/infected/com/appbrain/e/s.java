package com.appbrain.e;

import com.appbrain.c.b;
import com.appbrain.c.d;
import com.appbrain.c.g;
import com.appbrain.c.i;
import com.appbrain.c.m;
import com.appbrain.c.n;
import com.appbrain.c.o;
import com.appbrain.c.p;
import com.appbrain.c.q;
import com.appbrain.c.r;
import u.aly.bs;

public final class s extends i {
    private int a;
    private h b = h.a();
    private n c = m.a;
    private n d = m.a;
    private Object e = bs.b;

    private s() {
    }

    private r c() {
        int i = 1;
        r rVar = new r();
        int i2 = this.a;
        if ((i2 & 1) != 1) {
            i = 0;
        }
        rVar.c = this.b;
        if ((this.a & 2) == 2) {
            this.c = new r(this.c);
            this.a &= -3;
        }
        rVar.d = this.c;
        if ((this.a & 4) == 4) {
            this.d = new r(this.d);
            this.a &= -5;
        }
        rVar.e = this.d;
        if ((i2 & 8) == 8) {
            i |= 2;
        }
        rVar.f = this.e;
        rVar.b = i;
        return rVar;
    }

    private s c(d dVar, g gVar) {
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
                    d();
                    this.c.a(dVar.e());
                    continue;
                case 26:
                    h();
                    this.d.a(dVar.e());
                    continue;
                case 34:
                    this.a |= 8;
                    this.e = dVar.e();
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

    private void d() {
        if ((this.a & 2) != 2) {
            this.c = new m(this.c);
            this.a |= 2;
        }
    }

    private void h() {
        if ((this.a & 4) != 4) {
            this.d = new m(this.d);
            this.a |= 4;
        }
    }

    public final /* synthetic */ b a(d dVar, g gVar) {
        return c(dVar, gVar);
    }

    public final r a() {
        r c = c();
        if (c.f()) {
            return c;
        }
        throw new q();
    }

    public final s a(i iVar) {
        this.b = iVar.a();
        this.a |= 1;
        return this;
    }

    public final s a(r rVar) {
        if (rVar != r.a()) {
            if (rVar.b()) {
                h c = rVar.c();
                if ((this.a & 1) != 1 || this.b == h.a()) {
                    this.b = c;
                } else {
                    this.b = h.a(this.b).a(c).b();
                }
                this.a |= 1;
            }
            if (!rVar.d.isEmpty()) {
                if (this.c.isEmpty()) {
                    this.c = rVar.d;
                    this.a &= -3;
                } else {
                    d();
                    this.c.addAll(rVar.d);
                }
            }
            if (!rVar.e.isEmpty()) {
                if (this.d.isEmpty()) {
                    this.d = rVar.e;
                    this.a &= -5;
                } else {
                    h();
                    this.d.addAll(rVar.e);
                }
            }
            if (rVar.d()) {
                c(rVar.e());
            }
        }
        return this;
    }

    public final s a(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        d();
        this.c.add(str);
        return this;
    }

    public final /* synthetic */ p b(d dVar, g gVar) {
        return c(dVar, gVar);
    }

    public final s b(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        h();
        this.d.add(str);
        return this;
    }

    public final s c(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 8;
        this.e = str;
        return this;
    }

    public final /* synthetic */ i e() {
        return new s().a(c());
    }

    public final /* synthetic */ o g() {
        return a();
    }
}
