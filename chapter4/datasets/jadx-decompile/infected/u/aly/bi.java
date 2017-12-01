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

/* compiled from: Page */
public class bi implements Serializable, Cloneable, cj<bi, e> {
    public static final Map<e, cv> c;
    private static final dn d = new dn("Page");
    private static final dd e = new dd("page_name", (byte) 11, (short) 1);
    private static final dd f = new dd("duration", (byte) 10, (short) 2);
    private static final Map<Class<? extends dq>, dr> g = new HashMap();
    private static final int h = 0;
    public String a;
    public long b;
    private byte i;

    /* compiled from: Page */
    private static class a extends ds<bi> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bi) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bi) cjVar);
        }

        public void a(di diVar, bi biVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (biVar.i()) {
                        biVar.j();
                        return;
                    }
                    throw new dj("Required field 'duration' was not found in serialized data! Struct: " + toString());
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        biVar.a = diVar.z();
                        biVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        biVar.b = diVar.x();
                        biVar.b(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bi biVar) throws cp {
            biVar.j();
            diVar.a(bi.d);
            if (biVar.a != null) {
                diVar.a(bi.e);
                diVar.a(biVar.a);
                diVar.c();
            }
            diVar.a(bi.f);
            diVar.a(biVar.b);
            diVar.c();
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: Page */
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

    /* compiled from: Page */
    private static class c extends dt<bi> {
        private c() {
        }

        public void a(di diVar, bi biVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(biVar.a);
            doVar.a(biVar.b);
        }

        public void b(di diVar, bi biVar) throws cp {
            do doVar = (do) diVar;
            biVar.a = doVar.z();
            biVar.a(true);
            biVar.b = doVar.x();
            biVar.b(true);
        }
    }

    /* compiled from: Page */
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

    /* compiled from: Page */
    public enum e implements cq {
        PAGE_NAME((short) 1, "page_name"),
        DURATION((short) 2, "duration");
        
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
                    return PAGE_NAME;
                case 2:
                    return DURATION;
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
        return a(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        g.put(ds.class, new b());
        g.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.PAGE_NAME, new cv("page_name", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.DURATION, new cv("duration", (byte) 1, new cw((byte) 10)));
        c = Collections.unmodifiableMap(enumMap);
        cv.a(bi.class, c);
    }

    public bi() {
        this.i = (byte) 0;
    }

    public bi(String str, long j) {
        this();
        this.a = str;
        this.b = j;
        b(true);
    }

    public bi(bi biVar) {
        this.i = (byte) 0;
        this.i = biVar.i;
        if (biVar.e()) {
            this.a = biVar.a;
        }
        this.b = biVar.b;
    }

    public bi a() {
        return new bi(this);
    }

    public void b() {
        this.a = null;
        b(false);
        this.b = 0;
    }

    public String c() {
        return this.a;
    }

    public bi a(String str) {
        this.a = str;
        return this;
    }

    public void d() {
        this.a = null;
    }

    public boolean e() {
        return this.a != null;
    }

    public void a(boolean z) {
        if (!z) {
            this.a = null;
        }
    }

    public long f() {
        return this.b;
    }

    public bi a(long j) {
        this.b = j;
        b(true);
        return this;
    }

    public void h() {
        this.i = cg.b(this.i, 0);
    }

    public boolean i() {
        return cg.a(this.i, 0);
    }

    public void b(boolean z) {
        this.i = cg.a(this.i, 0, z);
    }

    public e a(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) g.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) g.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Page(");
        stringBuilder.append("page_name:");
        if (this.a == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.a);
        }
        stringBuilder.append(", ");
        stringBuilder.append("duration:");
        stringBuilder.append(this.b);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void j() throws cp {
        if (this.a == null) {
            throw new dj("Required field 'page_name' was not present! Struct: " + toString());
        }
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
            this.i = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
