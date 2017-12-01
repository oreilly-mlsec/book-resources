package com.appbrain.c;

import java.io.InputStream;
import java.io.OutputStream;

public final class e {
    private final byte[] a;
    private final int b;
    private int c;
    private final OutputStream d;

    private e(OutputStream outputStream, byte[] bArr) {
        this.d = outputStream;
        this.a = bArr;
        this.c = 0;
        this.b = bArr.length;
    }

    private e(byte[] bArr, int i) {
        this.d = null;
        this.a = bArr;
        this.c = 0;
        this.b = i + 0;
    }

    public static int a(int i) {
        return f(i) + 1;
    }

    public static int a(c cVar) {
        return g(cVar.a()) + cVar.a();
    }

    public static e a(OutputStream outputStream) {
        return new e(outputStream, new byte[4096]);
    }

    public static e a(byte[] bArr, int i) {
        return new e(bArr, i);
    }

    private void a(long j) {
        while ((-128 & j) != 0) {
            e((((int) j) & 127) | 128);
            j >>>= 7;
        }
        e((int) j);
    }

    public static int b(int i, long j) {
        int f = f(i);
        int i2 = (-128 & j) == 0 ? 1 : (-16384 & j) == 0 ? 2 : (-2097152 & j) == 0 ? 3 : (-268435456 & j) == 0 ? 4 : (-34359738368L & j) == 0 ? 5 : (-4398046511104L & j) == 0 ? 6 : (-562949953421312L & j) == 0 ? 7 : (-72057594037927936L & j) == 0 ? 8 : (Long.MIN_VALUE & j) == 0 ? 9 : 10;
        return i2 + f;
    }

    public static int b(int i, c cVar) {
        return f(i) + a(cVar);
    }

    public static int b(int i, o oVar) {
        int f = f(i);
        int G = oVar.G();
        return f + (G + g(G));
    }

    public static int c(int i, int i2) {
        return f(i) + d(i2);
    }

    private void c() {
        if (this.d == null) {
            throw new f();
        }
        this.d.write(this.a, 0, this.c);
        this.c = 0;
    }

    private void c(int i) {
        if (i >= 0) {
            b(i);
        } else {
            a((long) i);
        }
    }

    private static int d(int i) {
        return i >= 0 ? g(i) : 10;
    }

    public static int d(int i, int i2) {
        return f(i) + d(i2);
    }

    private void e(int i) {
        byte b = (byte) i;
        if (this.c == this.b) {
            c();
        }
        byte[] bArr = this.a;
        int i2 = this.c;
        this.c = i2 + 1;
        bArr[i2] = b;
    }

    private void e(int i, int i2) {
        b(u.a(i, i2));
    }

    private static int f(int i) {
        return g(u.a(i, 0));
    }

    private static int g(int i) {
        return (i & -128) == 0 ? 1 : (i & -16384) == 0 ? 2 : (-2097152 & i) == 0 ? 3 : (-268435456 & i) == 0 ? 4 : 5;
    }

    public final void a() {
        if (this.d != null) {
            c();
        }
    }

    public final void a(int i, int i2) {
        e(i, 0);
        c(i2);
    }

    public final void a(int i, long j) {
        e(i, 0);
        a(j);
    }

    public final void a(int i, c cVar) {
        e(i, 2);
        b(cVar.a());
        int a = cVar.a();
        if (this.b - this.c >= a) {
            cVar.a(this.a, 0, this.c, a);
            this.c = a + this.c;
            return;
        }
        int i2 = this.b - this.c;
        cVar.a(this.a, 0, this.c, i2);
        int i3 = i2 + 0;
        a -= i2;
        this.c = this.b;
        c();
        if (a <= this.b) {
            cVar.a(this.a, i3, 0, a);
            this.c = a;
            return;
        }
        InputStream d = cVar.d();
        if (((long) i3) != d.skip((long) i3)) {
            throw new IllegalStateException("Skip failed? Should never happen.");
        }
        while (a > 0) {
            i3 = Math.min(a, this.b);
            int read = d.read(this.a, 0, i3);
            if (read != i3) {
                throw new IllegalStateException("Read failed? Should never happen");
            }
            this.d.write(this.a, 0, read);
            a -= read;
        }
    }

    public final void a(int i, o oVar) {
        e(i, 2);
        b(oVar.G());
        oVar.a(this);
    }

    public final void a(int i, boolean z) {
        int i2 = 0;
        e(i, 0);
        if (z) {
            i2 = 1;
        }
        e(i2);
    }

    public final int b() {
        if (this.d == null) {
            return this.b - this.c;
        }
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
    }

    public final void b(int i) {
        while ((i & -128) != 0) {
            e((i & 127) | 128);
            i >>>= 7;
        }
        e(i);
    }

    public final void b(int i, int i2) {
        e(i, 0);
        c(i2);
    }
}
