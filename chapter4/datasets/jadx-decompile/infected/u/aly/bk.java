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

/* compiled from: Resolution */
public class bk implements Serializable, Cloneable, cj<bk, e> {
    public static final Map<e, cv> c;
    private static final dn d = new dn("Resolution");
    private static final dd e = new dd("height", (byte) 8, (short) 1);
    private static final dd f = new dd("width", (byte) 8, (short) 2);
    private static final Map<Class<? extends dq>, dr> g = new HashMap();
    private static final int h = 0;
    private static final int i = 1;
    public int a;
    public int b;
    private byte j;

    /* compiled from: Resolution */
    private static class a extends ds<bk> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bk) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bk) cjVar);
        }

        public void a(di diVar, bk bkVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (!bkVar.e()) {
                        throw new dj("Required field 'height' was not found in serialized data! Struct: " + toString());
                    } else if (bkVar.i()) {
                        bkVar.j();
                        return;
                    } else {
                        throw new dj("Required field 'width' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bkVar.a = diVar.w();
                        bkVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bkVar.b = diVar.w();
                        bkVar.b(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bk bkVar) throws cp {
            bkVar.j();
            diVar.a(bk.d);
            diVar.a(bk.e);
            diVar.a(bkVar.a);
            diVar.c();
            diVar.a(bk.f);
            diVar.a(bkVar.b);
            diVar.c();
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: Resolution */
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

    /* compiled from: Resolution */
    private static class c extends dt<bk> {
        private c() {
        }

        public void a(di diVar, bk bkVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(bkVar.a);
            doVar.a(bkVar.b);
        }

        public void b(di diVar, bk bkVar) throws cp {
            do doVar = (do) diVar;
            bkVar.a = doVar.w();
            bkVar.a(true);
            bkVar.b = doVar.w();
            bkVar.b(true);
        }
    }

    /* compiled from: Resolution */
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

    /* compiled from: Resolution */
    public enum e implements cq {
        HEIGHT((short) 1, "height"),
        WIDTH((short) 2, "width");
        
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
                    return HEIGHT;
                case 2:
                    return WIDTH;
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
        return d(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        g.put(ds.class, new b());
        g.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.HEIGHT, new cv("height", (byte) 1, new cw((byte) 8)));
        enumMap.put(e.WIDTH, new cv("width", (byte) 1, new cw((byte) 8)));
        c = Collections.unmodifiableMap(enumMap);
        cv.a(bk.class, c);
    }

    public bk() {
        this.j = (byte) 0;
    }

    public bk(int i, int i2) {
        this();
        this.a = i;
        a(true);
        this.b = i2;
        b(true);
    }

    public bk(bk bkVar) {
        this.j = (byte) 0;
        this.j = bkVar.j;
        this.a = bkVar.a;
        this.b = bkVar.b;
    }

    public bk a() {
        return new bk(this);
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

    public bk a(int i) {
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

    public int f() {
        return this.b;
    }

    public bk c(int i) {
        this.b = i;
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

    public e d(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) g.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) g.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Resolution(");
        stringBuilder.append("height:");
        stringBuilder.append(this.a);
        stringBuilder.append(", ");
        stringBuilder.append("width:");
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
