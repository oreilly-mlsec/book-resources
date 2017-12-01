package u.aly;

/* compiled from: TApplicationException */
public class ci extends cp {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    public static final int g = 6;
    public static final int h = 7;
    private static final dn j = new dn("TApplicationException");
    private static final dd k = new dd("message", (byte) 11, (short) 1);
    private static final dd l = new dd("type", (byte) 8, (short) 2);
    private static final long m = 1;
    protected int i = 0;

    public ci(int i) {
        this.i = i;
    }

    public ci(int i, String str) {
        super(str);
        this.i = i;
    }

    public ci(String str) {
        super(str);
    }

    public int a() {
        return this.i;
    }

    public static ci a(di diVar) throws cp {
        diVar.j();
        String str = null;
        int i = 0;
        while (true) {
            dd l = diVar.l();
            if (l.b == (byte) 0) {
                diVar.k();
                return new ci(i, str);
            }
            switch (l.c) {
                case (short) 1:
                    if (l.b != (byte) 11) {
                        dl.a(diVar, l.b);
                        break;
                    }
                    str = diVar.z();
                    break;
                case (short) 2:
                    if (l.b != (byte) 8) {
                        dl.a(diVar, l.b);
                        break;
                    }
                    i = diVar.w();
                    break;
                default:
                    dl.a(diVar, l.b);
                    break;
            }
            diVar.m();
        }
    }

    public void b(di diVar) throws cp {
        diVar.a(j);
        if (getMessage() != null) {
            diVar.a(k);
            diVar.a(getMessage());
            diVar.c();
        }
        diVar.a(l);
        diVar.a(this.i);
        diVar.c();
        diVar.d();
        diVar.b();
    }
}
