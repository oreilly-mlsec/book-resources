package u.aly;

/* compiled from: TTransport */
public abstract class dw {
    public abstract int a(byte[] bArr, int i, int i2) throws dx;

    public abstract boolean a();

    public abstract void b() throws dx;

    public abstract void b(byte[] bArr, int i, int i2) throws dx;

    public abstract void c();

    public boolean i() {
        return a();
    }

    public int d(byte[] bArr, int i, int i2) throws dx {
        int i3 = 0;
        while (i3 < i2) {
            int a = a(bArr, i + i3, i2 - i3);
            if (a <= 0) {
                throw new dx("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
            }
            i3 += a;
        }
        return i3;
    }

    public void b(byte[] bArr) throws dx {
        b(bArr, 0, bArr.length);
    }

    public void d() throws dx {
    }

    public byte[] f() {
        return null;
    }

    public int g() {
        return 0;
    }

    public int h() {
        return -1;
    }

    public void a(int i) {
    }
}
