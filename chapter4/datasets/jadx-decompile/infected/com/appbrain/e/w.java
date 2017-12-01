package com.appbrain.e;

import com.appbrain.c.b;
import com.appbrain.c.d;
import com.appbrain.c.g;
import com.appbrain.c.i;
import com.appbrain.c.o;
import com.appbrain.c.p;
import com.appbrain.c.q;

public final class w extends i {
    private int a;
    private h b = h.a();
    private boolean c;

    private w() {
    }

    private v c() {
        int i = 1;
        v vVar = new v();
        int i2 = this.a;
        if ((i2 & 1) != 1) {
            i = 0;
        }
        vVar.c = this.b;
        if ((i2 & 2) == 2) {
            i |= 2;
        }
        vVar.d = this.c;
        vVar.b = i;
        return vVar;
    }

    private w c(d dVar, g gVar) {
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
                case 16:
                    this.a |= 2;
                    this.c = dVar.d();
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

    public final v a() {
        v c = c();
        if (c.f()) {
            return c;
        }
        throw new q();
    }

    public final w a(i iVar) {
        this.b = iVar.a();
        this.a |= 1;
        return this;
    }

    public final w a(v vVar) {
        if (vVar != v.a()) {
            if (vVar.b()) {
                h c = vVar.c();
                if ((this.a & 1) != 1 || this.b == h.a()) {
                    this.b = c;
                } else {
                    this.b = h.a(this.b).a(c).b();
                }
                this.a |= 1;
            }
            if (vVar.d()) {
                boolean e = vVar.e();
                this.a |= 2;
                this.c = e;
            }
        }
        return this;
    }

    public final /* synthetic */ p b(d dVar, g gVar) {
        return c(dVar, gVar);
    }

    public final /* synthetic */ i e() {
        return new w().a(c());
    }

    public final /* synthetic */ o g() {
        return a();
    }
}
