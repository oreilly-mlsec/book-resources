package com.appbrain.c;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public final class d {
    private final byte[] a;
    private int b;
    private int c;
    private int d;
    private final InputStream e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;

    private d(InputStream inputStream) {
        this.h = Integer.MAX_VALUE;
        this.j = 64;
        this.k = 67108864;
        this.a = new byte[4096];
        this.b = 0;
        this.d = 0;
        this.g = 0;
        this.e = inputStream;
    }

    private d(byte[] bArr, int i) {
        this.h = Integer.MAX_VALUE;
        this.j = 64;
        this.k = 67108864;
        this.a = bArr;
        this.b = i + 0;
        this.d = 0;
        this.g = 0;
        this.e = null;
    }

    public static d a(InputStream inputStream) {
        return new d(inputStream);
    }

    public static d a(byte[] bArr, int i) {
        d dVar = new d(bArr, i);
        try {
            dVar.c(i);
            return dVar;
        } catch (Throwable e) {
            throw new IllegalArgumentException(e);
        }
    }

    private boolean a(boolean z) {
        if (this.d < this.b) {
            throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
        } else if (this.g + this.b != this.h) {
            this.g += this.b;
            this.d = 0;
            this.b = this.e == null ? -1 : this.e.read(this.a);
            if (this.b == 0 || this.b < -1) {
                throw new IllegalStateException("InputStream#read(byte[]) returned invalid result: " + this.b + "\nThe InputStream implementation is buggy.");
            } else if (this.b == -1) {
                this.b = 0;
                if (!z) {
                    return false;
                }
                throw l.a();
            } else {
                j();
                int i = (this.g + this.b) + this.c;
                if (i <= this.k && i >= 0) {
                    return true;
                }
                throw l.h();
            }
        } else if (!z) {
            return false;
        } else {
            throw l.a();
        }
    }

    private int c(int i) {
        if (i < 0) {
            throw l.b();
        }
        int i2 = (this.g + this.d) + i;
        int i3 = this.h;
        if (i2 > i3) {
            throw l.a();
        }
        this.h = i2;
        j();
        return i3;
    }

    private void d(int i) {
        if (i < 0) {
            throw l.b();
        } else if ((this.g + this.d) + i > this.h) {
            d((this.h - this.g) - this.d);
            throw l.a();
        } else if (i <= this.b - this.d) {
            this.d += i;
        } else {
            int i2 = this.b - this.d;
            this.d = this.b;
            a(true);
            while (i - i2 > this.b) {
                i2 += this.b;
                this.d = this.b;
                a(true);
            }
            this.d = i - i2;
        }
    }

    private void j() {
        this.b += this.c;
        int i = this.g + this.b;
        if (i > this.h) {
            this.c = i - this.h;
            this.b -= this.c;
            return;
        }
        this.c = 0;
    }

    public final int a() {
        boolean z = this.d == this.b && !a(false);
        if (z) {
            this.f = 0;
            return 0;
        }
        this.f = g();
        if (u.b(this.f) != 0) {
            return this.f;
        }
        throw l.d();
    }

    public final void a(int i) {
        if (this.f != i) {
            throw l.e();
        }
    }

    public final void a(p pVar, g gVar) {
        int g = g();
        if (this.i >= this.j) {
            throw l.g();
        }
        g = c(g);
        this.i++;
        pVar.b(this, gVar);
        a(0);
        this.i--;
        this.h = g;
        j();
    }

    public final long b() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte i2 = i();
            j |= ((long) (i2 & 127)) << i;
            if ((i2 & 128) == 0) {
                return j;
            }
        }
        throw l.c();
    }

    public final boolean b(int i) {
        switch (u.a(i)) {
            case 0:
                g();
                return true;
            case 1:
                i();
                i();
                i();
                i();
                i();
                i();
                i();
                i();
                return true;
            case 2:
                d(g());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                h();
                return true;
            default:
                throw l.f();
        }
        int a;
        do {
            a = a();
            if (a != 0) {
            }
            a(u.a(u.b(i), 4));
            return true;
        } while (b(a));
        a(u.a(u.b(i), 4));
        return true;
    }

    public final int c() {
        return g();
    }

    public final boolean d() {
        return g() != 0;
    }

    public final c e() {
        int g = g();
        if (g == 0) {
            return c.a;
        }
        if (g <= this.b - this.d && g > 0) {
            c a = c.a(this.a, this.d, g);
            this.d += g;
            return a;
        } else if (g < 0) {
            throw l.b();
        } else if ((this.g + this.d) + g > this.h) {
            d((this.h - this.g) - this.d);
            throw l.a();
        } else {
            byte[] bArr;
            if (g <= this.b - this.d) {
                bArr = new byte[g];
                System.arraycopy(this.a, this.d, bArr, 0, g);
                this.d += g;
            } else if (g < 4096) {
                Object obj = new byte[g];
                r0 = this.b - this.d;
                System.arraycopy(this.a, this.d, obj, 0, r0);
                this.d = this.b;
                a(true);
                while (g - r0 > this.b) {
                    System.arraycopy(this.a, 0, obj, r0, this.b);
                    r0 += this.b;
                    this.d = this.b;
                    a(true);
                }
                System.arraycopy(this.a, 0, obj, r0, g - r0);
                this.d = g - r0;
                r0 = obj;
            } else {
                int read;
                int i = this.d;
                int i2 = this.b;
                this.g += this.b;
                this.d = 0;
                this.b = 0;
                r0 = g - (i2 - i);
                List<byte[]> arrayList = new ArrayList();
                int i3 = r0;
                while (i3 > 0) {
                    Object obj2 = new byte[Math.min(i3, 4096)];
                    r0 = 0;
                    while (r0 < obj2.length) {
                        read = this.e == null ? -1 : this.e.read(obj2, r0, obj2.length - r0);
                        if (read == -1) {
                            throw l.a();
                        }
                        this.g += read;
                        r0 += read;
                    }
                    r0 = i3 - obj2.length;
                    arrayList.add(obj2);
                    i3 = r0;
                }
                Object obj3 = new byte[g];
                r0 = i2 - i;
                System.arraycopy(this.a, i, obj3, 0, r0);
                read = r0;
                for (byte[] bArr2 : arrayList) {
                    System.arraycopy(bArr2, 0, obj3, read, bArr2.length);
                    read = bArr2.length + read;
                }
                r0 = obj3;
            }
            return c.a(bArr2);
        }
    }

    public final int f() {
        return g();
    }

    public final int g() {
        byte i = i();
        if (i >= (byte) 0) {
            return i;
        }
        int i2 = i & 127;
        byte i3 = i();
        if (i3 >= (byte) 0) {
            return i2 | (i3 << 7);
        }
        i2 |= (i3 & 127) << 7;
        i3 = i();
        if (i3 >= (byte) 0) {
            return i2 | (i3 << 14);
        }
        i2 |= (i3 & 127) << 14;
        i3 = i();
        if (i3 >= (byte) 0) {
            return i2 | (i3 << 21);
        }
        i2 |= (i3 & 127) << 21;
        i3 = i();
        i2 |= i3 << 28;
        if (i3 >= (byte) 0) {
            return i2;
        }
        for (int i4 = 0; i4 < 5; i4++) {
            if (i() >= (byte) 0) {
                return i2;
            }
        }
        throw l.c();
    }

    public final int h() {
        return (((i() & 255) | ((i() & 255) << 8)) | ((i() & 255) << 16)) | ((i() & 255) << 24);
    }

    public final byte i() {
        if (this.d == this.b) {
            a(true);
        }
        byte[] bArr = this.a;
        int i = this.d;
        this.d = i + 1;
        return bArr[i];
    }
}
