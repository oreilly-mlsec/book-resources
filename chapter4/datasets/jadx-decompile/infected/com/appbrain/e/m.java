package com.appbrain.e;

import com.appbrain.c.b;
import com.appbrain.c.d;
import com.appbrain.c.g;
import com.appbrain.c.i;
import com.appbrain.c.o;
import com.appbrain.c.p;
import com.appbrain.c.q;
import com.umeng.analytics.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class m extends i {
    private int a;
    private List b = Collections.emptyList();
    private List c = Collections.emptyList();
    private boolean d;
    private boolean e;

    private m() {
    }

    private m c(d dVar, g gVar) {
        while (true) {
            int a = dVar.a();
            p i;
            n a2;
            switch (a) {
                case 0:
                    break;
                case 10:
                    i = n.i();
                    dVar.a(i, gVar);
                    a2 = i.a();
                    if (a2 == null) {
                        throw new NullPointerException();
                    }
                    c();
                    this.b.add(a2);
                    continue;
                case 18:
                    i = n.i();
                    dVar.a(i, gVar);
                    a2 = i.a();
                    if (a2 == null) {
                        throw new NullPointerException();
                    }
                    d();
                    this.c.add(a2);
                    continue;
                case 24:
                    this.a |= 4;
                    this.d = dVar.d();
                    continue;
                case a.k /*32*/:
                    this.a |= 8;
                    this.e = dVar.d();
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

    private void c() {
        if ((this.a & 1) != 1) {
            this.b = new ArrayList(this.b);
            this.a |= 1;
        }
    }

    private void d() {
        if ((this.a & 2) != 2) {
            this.c = new ArrayList(this.c);
            this.a |= 2;
        }
    }

    public final /* synthetic */ b a(d dVar, g gVar) {
        return c(dVar, gVar);
    }

    public final l a() {
        int i = 1;
        l lVar = new l();
        int i2 = this.a;
        if ((this.a & 1) == 1) {
            this.b = Collections.unmodifiableList(this.b);
            this.a &= -2;
        }
        lVar.c = this.b;
        if ((this.a & 2) == 2) {
            this.c = Collections.unmodifiableList(this.c);
            this.a &= -3;
        }
        lVar.d = this.c;
        if ((i2 & 4) != 4) {
            i = 0;
        }
        lVar.e = this.d;
        if ((i2 & 8) == 8) {
            i |= 2;
        }
        lVar.f = this.e;
        lVar.b = i;
        return lVar;
    }

    public final m a(l lVar) {
        if (lVar != l.a()) {
            boolean g;
            if (!lVar.c.isEmpty()) {
                if (this.b.isEmpty()) {
                    this.b = lVar.c;
                    this.a &= -2;
                } else {
                    c();
                    this.b.addAll(lVar.c);
                }
            }
            if (!lVar.d.isEmpty()) {
                if (this.c.isEmpty()) {
                    this.c = lVar.d;
                    this.a &= -3;
                } else {
                    d();
                    this.c.addAll(lVar.d);
                }
            }
            if (lVar.f()) {
                g = lVar.g();
                this.a |= 4;
                this.d = g;
            }
            if (lVar.h()) {
                g = lVar.i();
                this.a |= 8;
                this.e = g;
            }
        }
        return this;
    }

    public final /* synthetic */ p b(d dVar, g gVar) {
        return c(dVar, gVar);
    }

    public final /* synthetic */ i e() {
        return new m().a(a());
    }

    public final /* synthetic */ o g() {
        o a = a();
        if (a.j()) {
            return a;
        }
        throw new q();
    }
}
