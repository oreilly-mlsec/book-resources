package com.appbrain.e;

import com.appbrain.c.e;
import com.appbrain.c.h;
import com.appbrain.c.o;
import com.appbrain.c.p;
import java.util.Collections;
import java.util.List;

public final class l extends h {
    private static final l a;
    private int b;
    private List c;
    private List d;
    private boolean e;
    private boolean f;
    private byte g;
    private int h;

    static {
        l lVar = new l((byte) 0);
        a = lVar;
        lVar.c = Collections.emptyList();
        lVar.d = Collections.emptyList();
        lVar.e = false;
        lVar.f = false;
    }

    private l() {
        super((byte) 0);
        this.g = (byte) -1;
        this.h = -1;
    }

    private l(byte b) {
        this.g = (byte) -1;
        this.h = -1;
    }

    public static l a() {
        return a;
    }

    public static m a(l lVar) {
        return new m().a(lVar);
    }

    public static m k() {
        return new m();
    }

    public final int G() {
        int i = 0;
        int i2 = this.h;
        if (i2 == -1) {
            boolean z;
            i2 = 0;
            for (int i3 = 0; i3 < this.c.size(); i3++) {
                i2 += e.b(1, (o) this.c.get(i3));
            }
            while (i < this.d.size()) {
                i2 += e.b(2, (o) this.d.get(i));
                i++;
            }
            if ((this.b & 1) == 1) {
                z = this.e;
                i2 += e.a(3);
            }
            if ((this.b & 2) == 2) {
                z = this.f;
                i2 += e.a(4);
            }
            this.h = i2;
        }
        return i2;
    }

    public final /* synthetic */ p J() {
        return new m().a(this);
    }

    public final void a(e eVar) {
        int i = 0;
        G();
        for (int i2 = 0; i2 < this.c.size(); i2++) {
            eVar.a(1, (o) this.c.get(i2));
        }
        while (i < this.d.size()) {
            eVar.a(2, (o) this.d.get(i));
            i++;
        }
        if ((this.b & 1) == 1) {
            eVar.a(3, this.e);
        }
        if ((this.b & 2) == 2) {
            eVar.a(4, this.f);
        }
    }

    public final List b() {
        return this.c;
    }

    public final int c() {
        return this.c.size();
    }

    public final List d() {
        return this.d;
    }

    public final int e() {
        return this.d.size();
    }

    public final boolean f() {
        return (this.b & 1) == 1;
    }

    public final boolean g() {
        return this.e;
    }

    public final boolean h() {
        return (this.b & 2) == 2;
    }

    public final boolean i() {
        return this.f;
    }

    public final boolean j() {
        byte b = this.g;
        if (b != (byte) -1) {
            return b == (byte) 1;
        } else {
            this.g = (byte) 1;
            return true;
        }
    }
}
