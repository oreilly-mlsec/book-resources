package u.aly;

import android.content.Context;
import com.umeng.analytics.f;
import com.umeng.analytics.g;

/* compiled from: CacheService */
public final class l implements p {
    private static l c;
    private p a = new k(this.b);
    private Context b;

    private l(Context context) {
        this.b = context.getApplicationContext();
    }

    public static synchronized l a(Context context) {
        l lVar;
        synchronized (l.class) {
            if (c == null && context != null) {
                c = new l(context);
            }
            lVar = c;
        }
        return lVar;
    }

    public void a(p pVar) {
        this.a = pVar;
    }

    public void a(final q qVar) {
        f.b(new g(this) {
            final /* synthetic */ l b;

            public void a() {
                this.b.a.a(qVar);
            }
        });
    }

    public void b(q qVar) {
        this.a.b(qVar);
    }

    public void a() {
        f.b(new g(this) {
            final /* synthetic */ l a;

            {
                this.a = r1;
            }

            public void a() {
                this.a.a.a();
            }
        });
    }

    public void b() {
        f.b(new g(this) {
            final /* synthetic */ l a;

            {
                this.a = r1;
            }

            public void a() {
                this.a.a.b();
            }
        });
    }

    public void c() {
        f.c(new g(this) {
            final /* synthetic */ l a;

            {
                this.a = r1;
            }

            public void a() {
                this.a.a.c();
            }
        });
    }
}
