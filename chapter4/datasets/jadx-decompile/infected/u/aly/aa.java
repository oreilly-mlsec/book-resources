package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.h;

/* compiled from: StatTracer */
public class aa implements r {
    private static final String h = "successful_request";
    private static final String i = "failed_requests ";
    private static final String j = "last_request_spent_ms";
    private static final String k = "last_request_time";
    private static final String l = "first_activate_time";
    private static final String m = "last_req";
    public int a;
    public int b;
    public long c;
    private final int d = 3600000;
    private int e;
    private long f = 0;
    private long g = 0;
    private Context n;

    public aa(Context context) {
        b(context);
    }

    private void b(Context context) {
        this.n = context.getApplicationContext();
        SharedPreferences a = x.a(context);
        this.a = a.getInt(h, 0);
        this.b = a.getInt(i, 0);
        this.e = a.getInt(j, 0);
        this.c = a.getLong(k, 0);
        this.f = a.getLong(m, 0);
    }

    public int e() {
        return this.e > 3600000 ? 3600000 : this.e;
    }

    public boolean f() {
        boolean z;
        if (this.c == 0) {
            z = true;
        } else {
            z = false;
        }
        boolean z2;
        if (h.a(this.n).g()) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z && r3) {
            return true;
        }
        return false;
    }

    public void g() {
        this.a++;
        this.c = this.f;
    }

    public void h() {
        this.b++;
    }

    public void i() {
        this.f = System.currentTimeMillis();
    }

    public void j() {
        this.e = (int) (System.currentTimeMillis() - this.f);
    }

    public void k() {
        x.a(this.n).edit().putInt(h, this.a).putInt(i, this.b).putInt(j, this.e).putLong(k, this.c).putLong(m, this.f).commit();
    }

    public void l() {
        x.a(this.n).edit().putLong(l, System.currentTimeMillis()).commit();
    }

    public boolean m() {
        if (this.g == 0) {
            this.g = x.a(this.n).getLong(l, 0);
        }
        return this.g == 0;
    }

    public long n() {
        return m() ? System.currentTimeMillis() : this.g;
    }

    public long o() {
        return this.f;
    }

    public static ar a(Context context) {
        SharedPreferences a = x.a(context);
        ar arVar = new ar();
        arVar.c(a.getInt(i, 0));
        arVar.d(a.getInt(j, 0));
        arVar.a(a.getInt(h, 0));
        return arVar;
    }

    public void a() {
        i();
    }

    public void b() {
        j();
    }

    public void c() {
        g();
    }

    public void d() {
        h();
    }
}
