package u.aly;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Latent */
public class bf implements Serializable, Cloneable, cj<bf, e> {
    public static final Map<e, cv> c;
    private static final dn d = new dn("Latent");
    private static final dd e = new dd("latency", (byte) 8, (short) 1);
    private static final dd f = new dd("interval", (byte) 10, (short) 2);
    private static final Map<Class<? extends dq>, dr> g = new HashMap();
    private static final int h = 0;
    private static final int i = 1;
    public int a;
    public long b;
    private byte j;

    /* compiled from: Latent */
    private static class a extends ds<bf> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bf) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bf) cjVar);
        }

        public void a(di diVar, bf bfVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (!bfVar.e()) {
                        throw new dj("Required field 'latency' was not found in serialized data! Struct: " + toString());
                    } else if (bfVar.i()) {
                        bfVar.j();
                        return;
                    } else {
                        throw new dj("Required field 'interval' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bfVar.a = diVar.w();
                        bfVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bfVar.b = diVar.x();
                        bfVar.b(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bf bfVar) throws cp {
            bfVar.j();
            diVar.a(bf.d);
            diVar.a(bf.e);
            diVar.a(bfVar.a);
            diVar.c();
            diVar.a(bf.f);
            diVar.a(bfVar.b);
            diVar.c();
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: Latent */
    private static class b implements dr {
        private b() {
        }

        public /* synthetic */ dq b() {
            return a();
        }

        public a a() {
            return new a();
        }
    }

    /* compiled from: Latent */
    private static class c extends dt<bf> {
        private c() {
        }

        public void a(di diVar, bf bfVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(bfVar.a);
            doVar.a(bfVar.b);
        }

        public void b(di diVar, bf bfVar) throws cp {
            do doVar = (do) diVar;
            bfVar.a = doVar.w();
            bfVar.a(true);
            bfVar.b = doVar.x();
            bfVar.b(true);
        }
    }

    /* compiled from: Latent */
    private static class d implements dr {
        private d() {
        }

        public /* synthetic */ dq b() {
            return a();
        }

        public c a() {
            return new c();
        }
    }

    /* compiled from: Latent */
    public enum e implements cq {
        LATENCY((short) 1, "latency"),
        INTERVAL((short) 2, "interval");
        
        private static final Map<String, e> c = null;
        private final short d;
        private final String e;

        static {
            c = new HashMap();
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                c.put(eVar.b(), eVar);
            }
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return LATENCY;
                case 2:
                    return INTERVAL;
                default:
                    return null;
            }
        }

        public static e b(int i) {
            e a = a(i);
            if (a != null) {
                return a;
            }
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        public static e a(String str) {
            return (e) c.get(str);
        }

        private e(short s, String str) {
            this.d = s;
            this.e = str;
        }

        public short a() {
            return this.d;
        }

        public String b() {
            return this.e;
        }
    }

    public /* synthetic */ cq b(int i) {
        return c(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        g.put(ds.class, new b());
        g.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.LATENCY, new cv("latency", (byte) 1, new cw((byte) 8)));
        enumMap.put(e.INTERVAL, new cv("interval", (byte) 1, new cw((byte) 10)));
        c = Collections.unmodifiableMap(enumMap);
        cv.a(bf.class, c);
    }

    public bf() {
        this.j = (byte) 0;
    }

    public bf(int i, long j) {
        this();
        this.a = i;
        a(true);
        this.b = j;
        b(true);
    }

    public bf(bf bfVar) {
        this.j = (byte) 0;
        this.j = bfVar.j;
        this.a = bfVar.a;
        this.b = bfVar.b;
    }

    public bf a() {
        return new bf(this);
    }

    public void b() {
        a(false);
        this.a = 0;
        b(false);
        this.b = 0;
    }

    public int c() {
        return this.a;
    }

    public bf a(int i) {
        this.a = i;
        a(true);
        return this;
    }

    public void d() {
        this.j = cg.b(this.j, 0);
    }

    public boolean e() {
        return cg.a(this.j, 0);
    }

    public void a(boolean z) {
        this.j = cg.a(this.j, 0, z);
    }

    public long f() {
        return this.b;
    }

    public bf a(long j) {
        this.b = j;
        b(true);
        return this;
    }

    public void h() {
        this.j = cg.b(this.j, 1);
    }

    public boolean i() {
        return cg.a(this.j, 1);
    }

    public void b(boolean z) {
        this.j = cg.a(this.j, 1, z);
    }

    public e c(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) g.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) g.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Latent(");
        stringBuilder.append("latency:");
        stringBuilder.append(this.a);
        stringBuilder.append(", ");
        stringBuilder.append("interval:");
        stringBuilder.append(this.b);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void j() throws cp {
    }

    private void a(ObjectOutputStream objectOutputStream) throws IOException {
        try {
            b(new dc(new du((OutputStream) objectOutputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }

    private void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        try {
            this.j = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
