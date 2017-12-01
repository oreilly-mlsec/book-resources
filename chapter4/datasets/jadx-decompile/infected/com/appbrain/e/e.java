package com.appbrain.e;

import com.appbrain.c.b;
import com.appbrain.c.d;
import com.appbrain.c.g;
import com.appbrain.c.i;
import com.appbrain.c.o;
import com.appbrain.c.p;
import com.appbrain.c.q;
import com.umeng.analytics.a;

public final class e extends i {
    private int a;
    private h b = h.a();
    private int c;
    private int d;
    private f e = f.UNKNOWN_SOURCE;

    private e() {
    }

    private d c() {
        int i = 1;
        d dVar = new d();
        int i2 = this.a;
        if ((i2 & 1) != 1) {
            i = 0;
        }
        dVar.c = this.b;
        if ((i2 & 2) == 2) {
            i |= 2;
        }
        dVar.d = this.c;
        if ((i2 & 4) == 4) {
            i |= 4;
        }
        dVar.e = this.d;
        if ((i2 & 8) == 8) {
            i |= 8;
        }
        dVar.f = this.e;
        dVar.b = i;
        return dVar;
    }

    private e c(d dVar, g gVar) {
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
                case a.k /*32*/:
                    this.a |= 2;
                    this.c = dVar.c();
                    continue;
                case 40:
                    this.a |= 4;
                    this.d = dVar.c();
                    continue;
                case 48:
                    f a2 = f.a(dVar.f());
                    if (a2 != null) {
                        this.a |= 8;
                        this.e = a2;
                        break;
                    }
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

    public final d a() {
        d c = c();
        if (c.j()) {
            return c;
        }
        throw new q();
    }

    public final e a(int i) {
        this.a |= 2;
        this.c = i;
        return this;
    }

    public final e a(d dVar) {
        if (dVar != d.a()) {
            if (dVar.b()) {
                h c = dVar.c();
                if ((this.a & 1) != 1 || this.b == h.a()) {
                    this.b = c;
                } else {
                    this.b = h.a(this.b).a(c).b();
                }
                this.a |= 1;
            }
            if (dVar.d()) {
                a(dVar.e());
            }
            if (dVar.f()) {
                b(dVar.g());
            }
            if (dVar.h()) {
                a(dVar.i());
            }
        }
        return this;
    }

    public final e a(f fVar) {
        if (fVar == null) {
            throw new NullPointerException();
        }
        this.a |= 8;
        this.e = fVar;
        return this;
    }

    public final e a(i iVar) {
        this.b = iVar.a();
        this.a |= 1;
        return this;
    }

    public final /* synthetic */ p b(d dVar, g gVar) {
        return c(dVar, gVar);
    }

    public final e b(int i) {
        this.a |= 4;
        this.d = i;
        return this;
    }

    public final /* synthetic */ i e() {
        return new e().a(c());
    }

    public final /* synthetic */ o g() {
        return a();
    }
}
