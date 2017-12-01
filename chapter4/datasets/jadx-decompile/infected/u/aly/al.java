package u.aly;

import android.content.Context;
import java.util.Arrays;
import u.aly.f.a;

/* compiled from: Defcon */
public class al implements w {
    private static final int a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;
    private static final long e = 14400000;
    private static final long f = 28800000;
    private static final long g = 86400000;
    private static al j = null;
    private int h = 0;
    private final long i = 60000;

    public static synchronized al a(Context context) {
        al alVar;
        synchronized (al.class) {
            if (j == null) {
                j = new al();
                j.a(f.a(context).b().a(0));
            }
            alVar = j;
        }
        return alVar;
    }

    private al() {
    }

    public bp a(Context context, bp bpVar) {
        if (bpVar == null) {
            return null;
        }
        if (this.h == 1) {
            bpVar.a(null);
            return bpVar;
        } else if (this.h == 2) {
            bpVar.b(Arrays.asList(new bn[]{b(context)}));
            bpVar.a(null);
            return bpVar;
        } else if (this.h != 3) {
            return bpVar;
        } else {
            bpVar.b(null);
            bpVar.a(null);
            return bpVar;
        }
    }

    public bn b(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        bn bnVar = new bn();
        bnVar.a(z.g(context));
        bnVar.a(currentTimeMillis);
        bnVar.b(currentTimeMillis + 60000);
        bnVar.c(60000);
        return bnVar;
    }

    public long a() {
        switch (this.h) {
            case 1:
                return e;
            case 2:
                return f;
            case 3:
                return 86400000;
            default:
                return 0;
        }
    }

    public long b() {
        return this.h == 0 ? 0 : 300000;
    }

    public void a(int i) {
        if (i >= 0 && i <= 3) {
            this.h = i;
        }
    }

    public boolean c() {
        return this.h != 0;
    }

    public void a(a aVar) {
        a(aVar.a(0));
    }
}
