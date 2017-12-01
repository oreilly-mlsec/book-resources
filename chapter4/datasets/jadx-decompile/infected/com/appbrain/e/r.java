package com.appbrain.e;

import com.appbrain.c.c;
import com.appbrain.c.e;
import com.appbrain.c.h;
import com.appbrain.c.j;
import com.appbrain.c.m;
import com.appbrain.c.n;
import com.appbrain.c.p;
import u.aly.bs;

public final class r extends h {
    private static final r a;
    private int b;
    private h c;
    private n d;
    private n e;
    private Object f;
    private byte g;
    private int h;

    static {
        r rVar = new r((byte) 0);
        a = rVar;
        rVar.c = h.a();
        rVar.d = m.a;
        rVar.e = m.a;
        rVar.f = bs.b;
    }

    private r() {
        super((byte) 0);
        this.g = (byte) -1;
        this.h = -1;
    }

    private r(byte b) {
        this.g = (byte) -1;
        this.h = -1;
    }

    public static r a() {
        return a;
    }

    public static s g() {
        return new s();
    }

    private c h() {
        Object obj = this.f;
        if (!(obj instanceof String)) {
            return (c) obj;
        }
        c a = c.a((String) obj);
        this.f = a;
        return a;
    }

    public final int G() {
        int i = 0;
        int i2 = this.h;
        if (i2 == -1) {
            int i3;
            i2 = (this.b & 1) == 1 ? e.b(1, this.c) + 0 : 0;
            int i4 = 0;
            for (i3 = 0; i3 < this.d.size(); i3++) {
                i4 += e.a(this.d.a(i3));
            }
            i3 = (this.d.size() * 1) + (i2 + i4);
            i2 = 0;
            while (i < this.e.size()) {
                i2 += e.a(this.e.a(i));
                i++;
            }
            i2 = (i2 + i3) + (this.e.size() * 1);
            if ((this.b & 2) == 2) {
                i2 += e.b(4, h());
            }
            this.h = i2;
        }
        return i2;
    }

    public final /* synthetic */ p J() {
        return new s().a(this);
    }

    public final void a(e eVar) {
        int i = 0;
        G();
        if ((this.b & 1) == 1) {
            eVar.a(1, this.c);
        }
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            eVar.a(2, this.d.a(i2));
        }
        while (i < this.e.size()) {
            eVar.a(3, this.e.a(i));
            i++;
        }
        if ((this.b & 2) == 2) {
            eVar.a(4, h());
        }
    }

    public final boolean b() {
        return (this.b & 1) == 1;
    }

    public final h c() {
        return this.c;
    }

    public final boolean d() {
        return (this.b & 2) == 2;
    }

    public final String e() {
        Object obj = this.f;
        if (obj instanceof String) {
            return (String) obj;
        }
        c cVar = (c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.f = c;
        }
        return c;
    }

    public final boolean f() {
        byte b = this.g;
        if (b != (byte) -1) {
            return b == (byte) 1;
        } else {
            this.g = (byte) 1;
            return true;
        }
    }
}
