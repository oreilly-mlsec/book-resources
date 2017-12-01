package u.aly;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: AbstractIdTracker */
public abstract class a {
    private final int a = 10;
    private final int b = 20;
    private final String c;
    private List<az> d;
    private ba e;

    public abstract String f();

    public a(String str) {
        this.c = str;
    }

    public boolean a() {
        return g();
    }

    public String b() {
        return this.c;
    }

    public boolean c() {
        if (this.e == null || this.e.j() <= 20) {
            return true;
        }
        return false;
    }

    private boolean g() {
        ba baVar = this.e;
        String c = baVar == null ? null : baVar.c();
        int j = baVar == null ? 0 : baVar.j();
        String a = a(f());
        if (a == null || a.equals(c)) {
            return false;
        }
        if (baVar == null) {
            baVar = new ba();
        }
        baVar.a(a);
        baVar.a(System.currentTimeMillis());
        baVar.a(j + 1);
        az azVar = new az();
        azVar.a(this.c);
        azVar.c(a);
        azVar.b(c);
        azVar.a(baVar.f());
        if (this.d == null) {
            this.d = new ArrayList(2);
        }
        this.d.add(azVar);
        if (this.d.size() > 10) {
            this.d.remove(0);
        }
        this.e = baVar;
        return true;
    }

    public ba d() {
        return this.e;
    }

    public void a(ba baVar) {
        this.e = baVar;
    }

    public List<az> e() {
        return this.d;
    }

    public void a(List<az> list) {
        this.d = list;
    }

    public String a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0 || "0".equals(trim) || "unknown".equals(trim.toLowerCase(Locale.US))) {
            return null;
        }
        return trim;
    }

    public void a(bb bbVar) {
        this.e = (ba) bbVar.d().get(this.c);
        List<az> j = bbVar.j();
        if (j != null && j.size() > 0) {
            if (this.d == null) {
                this.d = new ArrayList();
            }
            for (az azVar : j) {
                if (this.c.equals(azVar.a)) {
                    this.d.add(azVar);
                }
            }
        }
    }
}
