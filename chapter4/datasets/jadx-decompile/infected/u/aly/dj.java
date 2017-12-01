package u.aly;

/* compiled from: TProtocolException */
public class dj extends cp {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    private static final long h = 1;
    protected int g = 0;

    public dj(int i) {
        this.g = i;
    }

    public dj(int i, String str) {
        super(str);
        this.g = i;
    }

    public dj(String str) {
        super(str);
    }

    public dj(int i, Throwable th) {
        super(th);
        this.g = i;
    }

    public dj(Throwable th) {
        super(th);
    }

    public dj(String str, Throwable th) {
        super(str, th);
    }

    public dj(int i, String str, Throwable th) {
        super(str, th);
        this.g = i;
    }

    public int a() {
        return this.g;
    }
}
