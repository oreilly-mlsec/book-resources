package u.aly;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: IdTracker */
public class d {
    public static d a;
    private final String b = "umeng_it.cache";
    private File c;
    private bb d = null;
    private long e;
    private long f;
    private Set<a> g = new HashSet();
    private a h = null;

    /* compiled from: IdTracker */
    public static class a {
        private Context a;
        private Set<String> b = new HashSet();

        public a(Context context) {
            this.a = context;
        }

        public boolean a(String str) {
            return !this.b.contains(str);
        }

        public void b(String str) {
            this.b.add(str);
        }

        public void c(String str) {
            this.b.remove(str);
        }

        public void a() {
            if (!this.b.isEmpty()) {
                StringBuilder stringBuilder = new StringBuilder();
                for (String append : this.b) {
                    stringBuilder.append(append);
                    stringBuilder.append(',');
                }
                stringBuilder.deleteCharAt(stringBuilder.length() - 1);
                x.a(this.a).edit().putString("invld_id", stringBuilder.toString()).commit();
            }
        }

        public void b() {
            Object string = x.a(this.a).getString("invld_id", null);
            if (!TextUtils.isEmpty(string)) {
                String[] split = string.split(",");
                if (split != null) {
                    for (CharSequence charSequence : split) {
                        if (!TextUtils.isEmpty(charSequence)) {
                            this.b.add(charSequence);
                        }
                    }
                }
            }
        }
    }

    d(Context context) {
        this.c = new File(context.getFilesDir(), "umeng_it.cache");
        this.f = com.umeng.analytics.a.g;
        this.h = new a(context);
        this.h.b();
    }

    public static synchronized d a(Context context) {
        d dVar;
        synchronized (d.class) {
            if (a == null) {
                a = new d(context);
                a.a(new e(context));
                a.a(new g(context));
                a.a(new b(context));
                a.a(new j(context));
                a.a(new i(context));
                a.a(new h());
                a.e();
            }
            dVar = a;
        }
        return dVar;
    }

    public boolean a(a aVar) {
        if (this.h.a(aVar.b())) {
            return this.g.add(aVar);
        }
        return false;
    }

    public void a(long j) {
        this.f = j;
    }

    public void a() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.e >= this.f) {
            Object obj = null;
            for (a aVar : this.g) {
                if (aVar.c()) {
                    if (aVar.a()) {
                        obj = 1;
                        if (!aVar.c()) {
                            this.h.b(aVar.b());
                        }
                    }
                    obj = obj;
                }
            }
            if (obj != null) {
                g();
                this.h.a();
                f();
            }
            this.e = currentTimeMillis;
        }
    }

    public bb b() {
        return this.d;
    }

    private void g() {
        bb bbVar = new bb();
        Map hashMap = new HashMap();
        List arrayList = new ArrayList();
        for (a aVar : this.g) {
            if (aVar.c()) {
                if (aVar.d() != null) {
                    hashMap.put(aVar.b(), aVar.d());
                }
                if (!(aVar.e() == null || aVar.e().isEmpty())) {
                    arrayList.addAll(aVar.e());
                }
            }
        }
        bbVar.a(arrayList);
        bbVar.a(hashMap);
        synchronized (this) {
            this.d = bbVar;
        }
    }

    public String c() {
        return null;
    }

    public void d() {
        boolean z = false;
        for (a aVar : this.g) {
            if (aVar.c()) {
                boolean z2;
                if (aVar.e() == null || aVar.e().isEmpty()) {
                    z2 = z;
                } else {
                    aVar.a(null);
                    z2 = true;
                }
                z = z2;
            }
        }
        if (z) {
            this.d.b(false);
            f();
        }
    }

    public void e() {
        bb h = h();
        if (h != null) {
            List<a> arrayList = new ArrayList(this.g.size());
            synchronized (this) {
                this.d = h;
                for (a aVar : this.g) {
                    aVar.a(this.d);
                    if (!aVar.c()) {
                        arrayList.add(aVar);
                    }
                }
                for (a aVar2 : arrayList) {
                    this.g.remove(aVar2);
                }
            }
            g();
        }
    }

    public void f() {
        if (this.d != null) {
            a(this.d);
        }
    }

    private bb h() {
        InputStream fileInputStream;
        Exception e;
        Throwable th;
        if (!this.c.exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(this.c);
            try {
                byte[] b = cf.b(fileInputStream);
                cj bbVar = new bb();
                new cm().a(bbVar, b);
                cf.c(fileInputStream);
                return bbVar;
            } catch (Exception e2) {
                e = e2;
                try {
                    e.printStackTrace();
                    cf.c(fileInputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    cf.c(fileInputStream);
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            e.printStackTrace();
            cf.c(fileInputStream);
            return null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            cf.c(fileInputStream);
            throw th;
        }
    }

    private void a(bb bbVar) {
        if (bbVar != null) {
            try {
                byte[] a;
                synchronized (this) {
                    a = new cs().a(bbVar);
                }
                if (a != null) {
                    cf.a(this.c, a);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
