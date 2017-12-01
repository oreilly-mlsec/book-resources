package com.appbrain.e;

import com.appbrain.c.b;
import com.appbrain.c.d;
import com.appbrain.c.g;
import com.appbrain.c.i;
import com.appbrain.c.p;
import com.appbrain.c.q;
import com.umeng.analytics.a;
import u.aly.bs;

public final class o extends i {
    private int a;
    private Object b = bs.b;
    private Object c = bs.b;
    private boolean d;

    private o() {
    }

    private o a(d dVar) {
        while (true) {
            int a = dVar.a();
            switch (a) {
                case 0:
                    break;
                case 10:
                    this.a |= 1;
                    this.b = dVar.e();
                    continue;
                case 18:
                    this.a |= 2;
                    this.c = dVar.e();
                    continue;
                case a.k /*32*/:
                    this.a |= 4;
                    this.d = dVar.d();
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

    public final /* bridge */ /* synthetic */ b a(d dVar, g gVar) {
        return a(dVar);
    }

    public final n a() {
        int i = 1;
        n nVar = new n();
        int i2 = this.a;
        if ((i2 & 1) != 1) {
            i = 0;
        }
        nVar.c = this.b;
        if ((i2 & 2) == 2) {
            i |= 2;
        }
        nVar.d = this.c;
        if ((i2 & 4) == 4) {
            i |= 4;
        }
        nVar.e = this.d;
        nVar.b = i;
        return nVar;
    }

    public final o a(n nVar) {
        if (nVar != n.a()) {
            String c;
            if (nVar.b()) {
                c = nVar.c();
                if (c == null) {
                    throw new NullPointerException();
                }
                this.a |= 1;
                this.b = c;
            }
            if (nVar.d()) {
                c = nVar.e();
                if (c == null) {
                    throw new NullPointerException();
                }
                this.a |= 2;
                this.c = c;
            }
            if (nVar.f()) {
                boolean g = nVar.g();
                this.a |= 4;
                this.d = g;
            }
        }
        return this;
    }

    public final /* synthetic */ p b(d dVar, g gVar) {
        return a(dVar);
    }

    public final /* synthetic */ i e() {
        return new o().a(a());
    }

    public final /* synthetic */ com.appbrain.c.o g() {
        com.appbrain.c.o a = a();
        if (a.h()) {
            return a;
        }
        throw new q();
    }
}
