package u.aly;

/* compiled from: TMemoryInputTransport */
public final class dv extends dw {
    private byte[] a;
    private int b;
    private int c;

    public dv(byte[] bArr) {
        a(bArr);
    }

    public dv(byte[] bArr, int i, int i2) {
        c(bArr, i, i2);
    }

    public void a(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    public void c(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.b = i;
        this.c = i + i2;
    }

    public void e() {
        this.a = null;
    }

    public void c() {
    }

    public boolean a() {
        return true;
    }

    public void b() throws dx {
    }

    public int a(byte[] bArr, int i, int i2) throws dx {
        int h = h();
        if (i2 > h) {
            i2 = h;
        }
        if (i2 > 0) {
            System.arraycopy(this.a, this.b, bArr, i, i2);
            a(i2);
        }
        return i2;
    }

    public void b(byte[] bArr, int i, int i2) throws dx {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    public byte[] f() {
        return this.a;
    }

    public int g() {
        return this.b;
    }

    public int h() {
        return this.c - this.b;
    }

    public void a(int i) {
        this.b += i;
    }
}
