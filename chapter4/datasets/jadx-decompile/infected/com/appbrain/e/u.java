package com.appbrain.e;

import com.appbrain.c.b;
import com.appbrain.c.d;
import com.appbrain.c.g;
import com.appbrain.c.i;
import com.appbrain.c.o;
import com.appbrain.c.p;
import com.appbrain.c.q;

public final class u extends i {
    private int a;
    private p b = p.a();
    private boolean c;
    private int d;

    private u() {
    }

    static /* synthetic */ t a(u uVar) {
        t c = uVar.c();
        if (c.h()) {
            return c;
        }
        throw new q().a();
    }

    private t c() {
        int i = 1;
        t tVar = new t();
        int i2 = this.a;
        if ((i2 & 1) != 1) {
            i = 0;
        }
        tVar.c = this.b;
        if ((i2 & 2) == 2) {
            i |= 2;
        }
        tVar.d = this.c;
        if ((i2 & 4) == 4) {
            i |= 4;
        }
        tVar.e = this.d;
        tVar.b = i;
        return tVar;
    }

    private u c(d dVar, g gVar) {
        while (true) {
            int a = dVar.a();
            switch (a) {
                case 0:
                    break;
                case 10:
                    p q = p.q();
                    if (((this.a & 1) == 1 ? 1 : null) != null) {
                        q.a(this.b);
                    }
                    dVar.a(q, gVar);
                    p b = q.b();
                    if (b == null) {
                        throw new NullPointerException();
                    }
                    this.b = b;
                    this.a |= 1;
                    continue;
                case 16:
                    this.a |= 2;
                    this.c = dVar.d();
                    continue;
                case 24:
                    this.a |= 4;
                    this.d = dVar.c();
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

    public final t a() {
        t c = c();
        if (c.h()) {
            return c;
        }
        throw new q();
    }

    public final u a(int i) {
        this.a |= 4;
        this.d = i;
        return this;
    }

    public final u a(q qVar) {
        this.b = qVar.a();
        this.a |= 1;
        return this;
    }

    public final u a(t tVar) {
        if (tVar != t.a()) {
            if (tVar.b()) {
                p c = tVar.c();
                if ((this.a & 1) != 1 || this.b == p.a()) {
                    this.b = c;
                } else {
                    this.b = p.a(this.b).a(c).b();
                }
                this.a |= 1;
            }
            if (tVar.d()) {
                a(tVar.e());
            }
            if (tVar.f()) {
                a(tVar.g());
            }
        }
        return this;
    }

    public final u a(boolean z) {
        this.a |= 2;
        this.c = z;
        return this;
    }

    public final /* synthetic */ p b(d dVar, g gVar) {
        return c(dVar, gVar);
    }

    public final /* synthetic */ i e() {
        return new u().a(c());
    }

    public final /* synthetic */ o g() {
        return a();
    }
}
