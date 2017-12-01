package u.aly;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.a;
import com.umeng.analytics.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: MemoCache */
public class s {
    private List<q> a = new ArrayList();
    private ao b = null;
    private aq c = null;
    private at d = null;
    private bh e = null;
    private Context f = null;

    public s(Context context) {
        this.f = context;
    }

    public Context a() {
        return this.f;
    }

    protected boolean a(int i) {
        return true;
    }

    public synchronized int b() {
        int size;
        size = this.a.size();
        if (this.b != null) {
            size++;
        }
        return size;
    }

    public synchronized void a(q qVar) {
        this.a.add(qVar);
    }

    public void a(bp bpVar) {
        String g = z.g(this.f);
        if (g != null) {
            synchronized (this) {
                if (this.b != null && new aa(this.f).f()) {
                    bpVar.a(this.b);
                    this.b = null;
                }
                for (q a : this.a) {
                    a.a(bpVar, g);
                }
                this.a.clear();
            }
            bpVar.a(c());
            bpVar.a(d());
            bpVar.a(e());
            bpVar.a(h());
            bpVar.a(f());
            bpVar.a(g());
            bpVar.a(j());
            bpVar.a(i());
        }
    }

    public synchronized void a(ao aoVar) {
        this.b = aoVar;
    }

    public synchronized aq c() {
        if (this.c == null) {
            this.c = new aq();
            a(this.f);
        }
        return this.c;
    }

    public synchronized at d() {
        if (this.d == null) {
            this.d = new at();
            b(this.f);
        }
        return this.d;
    }

    public synchronized bh e() {
        if (this.e == null) {
            this.e = new bh();
            c(this.f);
        }
        return this.e;
    }

    public bc f() {
        try {
            return f.a(this.f).a();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public bb g() {
        try {
            return d.a(this.f).b();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public ar h() {
        try {
            return aa.a(this.f);
        } catch (Exception e) {
            e.printStackTrace();
            return new ar();
        }
    }

    public Map<String, Integer> i() {
        return ak.a(this.f).e();
    }

    public ap j() {
        String[] a = e.a(this.f);
        if (a == null || TextUtils.isEmpty(a[0]) || TextUtils.isEmpty(a[1])) {
            return null;
        }
        return new ap(a[0], a[1]);
    }

    private void a(Context context) {
        try {
            this.c.a(AnalyticsConfig.getAppkey(context));
            this.c.e(AnalyticsConfig.getChannel(context));
            if (!(AnalyticsConfig.mWrapperType == null || AnalyticsConfig.mWrapperVersion == null)) {
                this.c.f(AnalyticsConfig.mWrapperType);
                this.c.g(AnalyticsConfig.mWrapperVersion);
            }
            this.c.c(bs.u(context));
            this.c.a(bm.ANDROID);
            this.c.d(a.c);
            this.c.b(bs.d(context));
            this.c.a(Integer.parseInt(bs.c(context)));
            this.c.c(AnalyticsConfig.mVerticalType);
            this.c.d(AnalyticsConfig.getSDKVersion());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void b(Context context) {
        try {
            this.d.f(bs.a());
            this.d.a(bs.f(context));
            this.d.b(bs.g(context));
            this.d.c(bs.p(context));
            this.d.e(Build.MODEL);
            this.d.g("Android");
            this.d.h(VERSION.RELEASE);
            int[] r = bs.r(context);
            if (r != null) {
                this.d.a(new bk(r[1], r[0]));
            }
            if (AnalyticsConfig.GPU_RENDERER == null || AnalyticsConfig.GPU_VENDER != null) {
                this.d.i(Build.BOARD);
                this.d.j(Build.BRAND);
                this.d.a(Build.TIME);
                this.d.k(Build.MANUFACTURER);
                this.d.l(Build.ID);
                this.d.m(Build.DEVICE);
            } else {
                this.d.i(Build.BOARD);
                this.d.j(Build.BRAND);
                this.d.a(Build.TIME);
                this.d.k(Build.MANUFACTURER);
                this.d.l(Build.ID);
                this.d.m(Build.DEVICE);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void c(Context context) {
        try {
            String[] j = bs.j(context);
            if (bs.d.equals(j[0])) {
                this.e.a(an.ACCESS_TYPE_WIFI);
            } else if (bs.c.equals(j[0])) {
                this.e.a(an.ACCESS_TYPE_2G_3G);
            } else {
                this.e.a(an.ACCESS_TYPE_UNKNOWN);
            }
            if (!bs.b.equals(j[1])) {
                this.e.e(j[1]);
            }
            this.e.c(bs.s(context));
            j = bs.n(context);
            this.e.b(j[0]);
            this.e.a(j[1]);
            this.e.a(bs.m(context));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
