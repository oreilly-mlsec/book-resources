package com.appbrain.e;

import com.appbrain.c.b;
import com.appbrain.c.d;
import com.appbrain.c.g;
import com.appbrain.c.i;
import com.appbrain.c.o;
import com.appbrain.c.p;
import com.appbrain.c.q;

public final class k extends i {
    private int a;
    private l b = l.a();

    private k() {
    }

    static /* synthetic */ j a(k kVar) {
        j b = kVar.b();
        if (b.d()) {
            return b;
        }
        throw new q().a();
    }

    private j b() {
        int i = 1;
        j jVar = new j();
        if ((this.a & 1) != 1) {
            i = 0;
        }
        jVar.c = this.b;
        jVar.b = i;
        return jVar;
    }

    private k c(d dVar, g gVar) {
        while (true) {
            int a = dVar.a();
            switch (a) {
                case 0:
                    break;
                case 10:
                    p k = l.k();
                    if (((this.a & 1) == 1 ? 1 : null) != null) {
                        k.a(this.b);
                    }
                    dVar.a(k, gVar);
                    l a2 = k.a();
                    if (a2 == null) {
                        throw new NullPointerException();
                    }
                    this.b = a2;
                    this.a |= 1;
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

    public final k a(j jVar) {
        if (jVar != j.a() && jVar.b()) {
            l c = jVar.c();
            if ((this.a & 1) != 1 || this.b == l.a()) {
                this.b = c;
            } else {
                this.b = l.a(this.b).a(c).a();
            }
            this.a |= 1;
        }
        return this;
    }

    public final /* synthetic */ p b(d dVar, g gVar) {
        return c(dVar, gVar);
    }

    public final /* synthetic */ i e() {
        return new k().a(b());
    }

    public final /* synthetic */ o g() {
        o b = b();
        if (b.d()) {
            return b;
        }
        throw new q();
    }
}
