package u.aly;

/* compiled from: TTransportException */
public class dx extends cp {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    private static final long g = 1;
    protected int f = 0;

    public dx(int i) {
        this.f = i;
    }

    public dx(int i, String str) {
        super(str);
        this.f = i;
    }

    public dx(String str) {
        super(str);
    }

    public dx(int i, Throwable th) {
        super(th);
        this.f = i;
    }

    public dx(Throwable th) {
        super(th);
    }

    public dx(String str, Throwable th) {
        super(str, th);
    }

    public dx(int i, String str, Throwable th) {
        super(str, th);
        this.f = i;
    }

    public int a() {
        return this.f;
    }
}
