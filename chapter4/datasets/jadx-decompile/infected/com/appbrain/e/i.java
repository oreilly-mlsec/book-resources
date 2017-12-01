package com.appbrain.e;

import com.appbrain.c.b;
import com.appbrain.c.d;
import com.appbrain.c.g;
import com.appbrain.c.o;
import com.appbrain.c.p;
import com.appbrain.c.q;
import u.aly.bs;

public final class i extends com.appbrain.c.i {
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private Object I = bs.b;
    private int J;
    private int a;
    private int b;
    private long c;
    private long d;
    private Object e = bs.b;
    private Object f = bs.b;
    private Object g = bs.b;
    private Object h = bs.b;
    private Object i = bs.b;
    private Object j = bs.b;
    private Object k = bs.b;
    private int l;
    private int m;
    private int n;
    private Object o = bs.b;
    private Object p = bs.b;
    private Object q = bs.b;
    private Object r = bs.b;
    private Object s = bs.b;
    private Object t = bs.b;
    private Object u = bs.b;
    private int v;
    private Object w = bs.b;
    private Object x = bs.b;
    private int y;
    private int z;

    private i() {
    }

    private i a(d dVar) {
        while (true) {
            int a = dVar.a();
            switch (a) {
                case 0:
                    break;
                case 8:
                    this.a |= 1;
                    this.c = dVar.b();
                    continue;
                case 16:
                    this.a |= 2;
                    this.d = dVar.b();
                    continue;
                case 26:
                    this.a |= 4;
                    this.e = dVar.e();
                    continue;
                case 34:
                    this.a |= 8;
                    this.f = dVar.e();
                    continue;
                case 42:
                    this.a |= 16;
                    this.g = dVar.e();
                    continue;
                case 50:
                    this.a |= 32;
                    this.h = dVar.e();
                    continue;
                case 58:
                    this.a |= 64;
                    this.i = dVar.e();
                    continue;
                case 66:
                    this.a |= 128;
                    this.j = dVar.e();
                    continue;
                case 74:
                    this.a |= 256;
                    this.k = dVar.e();
                    continue;
                case 80:
                    this.a |= 512;
                    this.l = dVar.c();
                    continue;
                case 88:
                    this.a |= 1024;
                    this.m = dVar.c();
                    continue;
                case 96:
                    this.a |= 2048;
                    this.n = dVar.c();
                    continue;
                case 106:
                    this.a |= 4096;
                    this.o = dVar.e();
                    continue;
                case 114:
                    this.a |= 8192;
                    this.p = dVar.e();
                    continue;
                case 122:
                    this.a |= 16384;
                    this.q = dVar.e();
                    continue;
                case 130:
                    this.a |= 32768;
                    this.r = dVar.e();
                    continue;
                case 162:
                    this.a |= 65536;
                    this.s = dVar.e();
                    continue;
                case 170:
                    this.a |= 131072;
                    this.t = dVar.e();
                    continue;
                case 178:
                    this.a |= 262144;
                    this.u = dVar.e();
                    continue;
                case 184:
                    this.a |= 524288;
                    this.v = dVar.c();
                    continue;
                case 194:
                    this.a |= 1048576;
                    this.w = dVar.e();
                    continue;
                case 202:
                    this.a |= 2097152;
                    this.x = dVar.e();
                    continue;
                case 208:
                    this.a |= 4194304;
                    this.y = dVar.c();
                    continue;
                case 216:
                    this.a |= 8388608;
                    this.z = dVar.c();
                    continue;
                case 224:
                    this.a |= 16777216;
                    this.A = dVar.c();
                    continue;
                case 232:
                    this.a |= 33554432;
                    this.B = dVar.c();
                    continue;
                case 240:
                    this.a |= 67108864;
                    this.C = dVar.c();
                    continue;
                case 248:
                    this.a |= 134217728;
                    this.D = dVar.c();
                    continue;
                case 256:
                    this.a |= 268435456;
                    this.E = dVar.c();
                    continue;
                case 264:
                    this.a |= 536870912;
                    this.F = dVar.c();
                    continue;
                case 272:
                    this.a |= 1073741824;
                    this.G = dVar.c();
                    continue;
                case 280:
                    this.a |= Integer.MIN_VALUE;
                    this.H = dVar.c();
                    continue;
                case 290:
                    this.b |= 1;
                    this.I = dVar.e();
                    continue;
                case 296:
                    this.b |= 2;
                    this.J = dVar.c();
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

    public final h a() {
        h b = b();
        if (b.au()) {
            return b;
        }
        throw new q();
    }

    public final i a(int i) {
        this.a |= 512;
        this.l = i;
        return this;
    }

    public final i a(long j) {
        this.a |= 1;
        this.c = j;
        return this;
    }

    public final i a(h hVar) {
        if (hVar != h.a()) {
            if (hVar.b()) {
                a(hVar.c());
            }
            if (hVar.d()) {
                b(hVar.e());
            }
            if (hVar.f()) {
                a(hVar.g());
            }
            if (hVar.h()) {
                b(hVar.i());
            }
            if (hVar.j()) {
                c(hVar.k());
            }
            if (hVar.l()) {
                d(hVar.m());
            }
            if (hVar.n()) {
                e(hVar.o());
            }
            if (hVar.p()) {
                f(hVar.q());
            }
            if (hVar.r()) {
                g(hVar.s());
            }
            if (hVar.t()) {
                a(hVar.u());
            }
            if (hVar.v()) {
                b(hVar.w());
            }
            if (hVar.x()) {
                int y = hVar.y();
                this.a |= 2048;
                this.n = y;
            }
            if (hVar.z()) {
                h(hVar.A());
            }
            if (hVar.B()) {
                i(hVar.C());
            }
            if (hVar.D()) {
                j(hVar.E());
            }
            if (hVar.F()) {
                k(hVar.H());
            }
            if (hVar.I()) {
                l(hVar.L());
            }
            if (hVar.M()) {
                m(hVar.N());
            }
            if (hVar.O()) {
                n(hVar.P());
            }
            if (hVar.Q()) {
                c(hVar.R());
            }
            if (hVar.S()) {
                o(hVar.T());
            }
            if (hVar.U()) {
                p(hVar.V());
            }
            if (hVar.W()) {
                d(hVar.X());
            }
            if (hVar.Y()) {
                e(hVar.Z());
            }
            if (hVar.aa()) {
                f(hVar.ab());
            }
            if (hVar.ac()) {
                g(hVar.ad());
            }
            if (hVar.ae()) {
                h(hVar.af());
            }
            if (hVar.ag()) {
                i(hVar.ah());
            }
            if (hVar.ai()) {
                j(hVar.aj());
            }
            if (hVar.ak()) {
                k(hVar.al());
            }
            if (hVar.am()) {
                l(hVar.an());
            }
            if (hVar.ao()) {
                m(hVar.ap());
            }
            if (hVar.aq()) {
                q(hVar.ar());
            }
            if (hVar.as()) {
                n(hVar.at());
            }
        }
        return this;
    }

    public final i a(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 4;
        this.e = str;
        return this;
    }

    public final /* synthetic */ p b(d dVar, g gVar) {
        return a(dVar);
    }

    public final h b() {
        int i = 1;
        h hVar = new h();
        int i2 = this.a;
        int i3 = this.b;
        int i4 = (i2 & 1) == 1 ? 1 : 0;
        hVar.d = this.c;
        if ((i2 & 2) == 2) {
            i4 |= 2;
        }
        hVar.e = this.d;
        if ((i2 & 4) == 4) {
            i4 |= 4;
        }
        hVar.f = this.e;
        if ((i2 & 8) == 8) {
            i4 |= 8;
        }
        hVar.g = this.f;
        if ((i2 & 16) == 16) {
            i4 |= 16;
        }
        hVar.h = this.g;
        if ((i2 & 32) == 32) {
            i4 |= 32;
        }
        hVar.i = this.h;
        if ((i2 & 64) == 64) {
            i4 |= 64;
        }
        hVar.j = this.i;
        if ((i2 & 128) == 128) {
            i4 |= 128;
        }
        hVar.k = this.j;
        if ((i2 & 256) == 256) {
            i4 |= 256;
        }
        hVar.l = this.k;
        if ((i2 & 512) == 512) {
            i4 |= 512;
        }
        hVar.m = this.l;
        if ((i2 & 1024) == 1024) {
            i4 |= 1024;
        }
        hVar.n = this.m;
        if ((i2 & 2048) == 2048) {
            i4 |= 2048;
        }
        hVar.o = this.n;
        if ((i2 & 4096) == 4096) {
            i4 |= 4096;
        }
        hVar.p = this.o;
        if ((i2 & 8192) == 8192) {
            i4 |= 8192;
        }
        hVar.q = this.p;
        if ((i2 & 16384) == 16384) {
            i4 |= 16384;
        }
        hVar.r = this.q;
        if ((i2 & 32768) == 32768) {
            i4 |= 32768;
        }
        hVar.s = this.r;
        if ((i2 & 65536) == 65536) {
            i4 |= 65536;
        }
        hVar.t = this.s;
        if ((131072 & i2) == 131072) {
            i4 |= 131072;
        }
        hVar.u = this.t;
        if ((262144 & i2) == 262144) {
            i4 |= 262144;
        }
        hVar.v = this.u;
        if ((524288 & i2) == 524288) {
            i4 |= 524288;
        }
        hVar.w = this.v;
        if ((1048576 & i2) == 1048576) {
            i4 |= 1048576;
        }
        hVar.x = this.w;
        if ((2097152 & i2) == 2097152) {
            i4 |= 2097152;
        }
        hVar.y = this.x;
        if ((4194304 & i2) == 4194304) {
            i4 |= 4194304;
        }
        hVar.z = this.y;
        if ((8388608 & i2) == 8388608) {
            i4 |= 8388608;
        }
        hVar.A = this.z;
        if ((16777216 & i2) == 16777216) {
            i4 |= 16777216;
        }
        hVar.B = this.A;
        if ((33554432 & i2) == 33554432) {
            i4 |= 33554432;
        }
        hVar.C = this.B;
        if ((67108864 & i2) == 67108864) {
            i4 |= 67108864;
        }
        hVar.D = this.C;
        if ((134217728 & i2) == 134217728) {
            i4 |= 134217728;
        }
        hVar.E = this.D;
        if ((268435456 & i2) == 268435456) {
            i4 |= 268435456;
        }
        hVar.F = this.E;
        if ((536870912 & i2) == 536870912) {
            i4 |= 536870912;
        }
        hVar.G = this.F;
        if ((1073741824 & i2) == 1073741824) {
            i4 |= 1073741824;
        }
        hVar.H = this.G;
        if ((i2 & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            i4 |= Integer.MIN_VALUE;
        }
        hVar.I = this.H;
        if ((i3 & 1) != 1) {
            i = 0;
        }
        hVar.J = this.I;
        if ((i3 & 2) == 2) {
            i |= 2;
        }
        hVar.K = this.J;
        hVar.b = i4;
        hVar.c = i;
        return hVar;
    }

    public final i b(int i) {
        this.a |= 1024;
        this.m = i;
        return this;
    }

    public final i b(long j) {
        this.a |= 2;
        this.d = j;
        return this;
    }

    public final i b(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 8;
        this.f = str;
        return this;
    }

    public final i c(int i) {
        this.a |= 524288;
        this.v = i;
        return this;
    }

    public final i c(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 16;
        this.g = str;
        return this;
    }

    public final i d(int i) {
        this.a |= 4194304;
        this.y = i;
        return this;
    }

    public final i d(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 32;
        this.h = str;
        return this;
    }

    public final /* synthetic */ com.appbrain.c.i e() {
        return new i().a(b());
    }

    public final i e(int i) {
        this.a |= 8388608;
        this.z = i;
        return this;
    }

    public final i e(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 64;
        this.i = str;
        return this;
    }

    public final i f(int i) {
        this.a |= 16777216;
        this.A = i;
        return this;
    }

    public final i f(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 128;
        this.j = str;
        return this;
    }

    public final /* synthetic */ o g() {
        return a();
    }

    public final i g(int i) {
        this.a |= 33554432;
        this.B = i;
        return this;
    }

    public final i g(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 256;
        this.k = str;
        return this;
    }

    public final i h(int i) {
        this.a |= 67108864;
        this.C = i;
        return this;
    }

    public final i h(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 4096;
        this.o = str;
        return this;
    }

    public final i i(int i) {
        this.a |= 134217728;
        this.D = i;
        return this;
    }

    public final i i(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 8192;
        this.p = str;
        return this;
    }

    public final i j(int i) {
        this.a |= 268435456;
        this.E = i;
        return this;
    }

    public final i j(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 16384;
        this.q = str;
        return this;
    }

    public final i k(int i) {
        this.a |= 536870912;
        this.F = i;
        return this;
    }

    public final i k(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 32768;
        this.r = str;
        return this;
    }

    public final i l(int i) {
        this.a |= 1073741824;
        this.G = i;
        return this;
    }

    public final i l(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 65536;
        this.s = str;
        return this;
    }

    public final i m(int i) {
        this.a |= Integer.MIN_VALUE;
        this.H = i;
        return this;
    }

    public final i m(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 131072;
        this.t = str;
        return this;
    }

    public final i n(int i) {
        this.b |= 2;
        this.J = i;
        return this;
    }

    public final i n(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 262144;
        this.u = str;
        return this;
    }

    public final i o(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 1048576;
        this.w = str;
        return this;
    }

    public final i p(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.a |= 2097152;
        this.x = str;
        return this;
    }

    public final i q(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.b |= 1;
        this.I = str;
        return this;
    }
}
