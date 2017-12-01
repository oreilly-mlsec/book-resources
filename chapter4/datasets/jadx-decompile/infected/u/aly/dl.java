package u.aly;

import u.aly.dc.a;

/* compiled from: TProtocolUtil */
public class dl {
    private static int a = Integer.MAX_VALUE;

    public static void a(int i) {
        a = i;
    }

    public static void a(di diVar, byte b) throws cp {
        a(diVar, b, a);
    }

    public static void a(di diVar, byte b, int i) throws cp {
        int i2 = 0;
        if (i <= 0) {
            throw new cp("Maximum skip depth exceeded");
        }
        switch (b) {
            case (byte) 2:
                diVar.t();
                return;
            case (byte) 3:
                diVar.u();
                return;
            case (byte) 4:
                diVar.y();
                return;
            case (byte) 6:
                diVar.v();
                return;
            case (byte) 8:
                diVar.w();
                return;
            case (byte) 10:
                diVar.x();
                return;
            case (byte) 11:
                diVar.A();
                return;
            case (byte) 12:
                diVar.j();
                while (true) {
                    dd l = diVar.l();
                    if (l.b == (byte) 0) {
                        diVar.k();
                        return;
                    } else {
                        a(diVar, l.b, i - 1);
                        diVar.m();
                    }
                }
            case (byte) 13:
                df n = diVar.n();
                while (i2 < n.c) {
                    a(diVar, n.a, i - 1);
                    a(diVar, n.b, i - 1);
                    i2++;
                }
                diVar.o();
                return;
            case (byte) 14:
                dm r = diVar.r();
                while (i2 < r.b) {
                    a(diVar, r.a, i - 1);
                    i2++;
                }
                diVar.s();
                return;
            case (byte) 15:
                de p = diVar.p();
                while (i2 < p.b) {
                    a(diVar, p.a, i - 1);
                    i2++;
                }
                diVar.q();
                return;
            default:
                return;
        }
    }

    public static dk a(byte[] bArr, dk dkVar) {
        if (bArr[0] > dp.n) {
            return new a();
        }
        if (bArr.length <= 1 || (bArr[1] & 128) == 0) {
            return dkVar;
        }
        return new a();
    }
}
