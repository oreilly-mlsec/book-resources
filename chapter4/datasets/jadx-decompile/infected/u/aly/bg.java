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

/* compiled from: Location */
public class bg implements Serializable, Cloneable, cj<bg, e> {
    public static final Map<e, cv> d;
    private static final dn e = new dn("Location");
    private static final dd f = new dd("lat", (byte) 4, (short) 1);
    private static final dd g = new dd("lng", (byte) 4, (short) 2);
    private static final dd h = new dd("ts", (byte) 10, (short) 3);
    private static final Map<Class<? extends dq>, dr> i = new HashMap();
    private static final int j = 0;
    private static final int k = 1;
    private static final int l = 2;
    public double a;
    public double b;
    public long c;
    private byte m;

    /* compiled from: Location */
    private static class a extends ds<bg> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bg) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bg) cjVar);
        }

        public void a(di diVar, bg bgVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (!bgVar.e()) {
                        throw new dj("Required field 'lat' was not found in serialized data! Struct: " + toString());
                    } else if (!bgVar.i()) {
                        throw new dj("Required field 'lng' was not found in serialized data! Struct: " + toString());
                    } else if (bgVar.l()) {
                        bgVar.m();
                        return;
                    } else {
                        throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 4) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bgVar.a = diVar.y();
                        bgVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 4) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bgVar.b = diVar.y();
                        bgVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bgVar.c = diVar.x();
                        bgVar.c(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bg bgVar) throws cp {
            bgVar.m();
            diVar.a(bg.e);
            diVar.a(bg.f);
            diVar.a(bgVar.a);
            diVar.c();
            diVar.a(bg.g);
            diVar.a(bgVar.b);
            diVar.c();
            diVar.a(bg.h);
            diVar.a(bgVar.c);
            diVar.c();
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: Location */
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

    /* compiled from: Location */
    private static class c extends dt<bg> {
        private c() {
        }

        public void a(di diVar, bg bgVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(bgVar.a);
            doVar.a(bgVar.b);
            doVar.a(bgVar.c);
        }

        public void b(di diVar, bg bgVar) throws cp {
            do doVar = (do) diVar;
            bgVar.a = doVar.y();
            bgVar.a(true);
            bgVar.b = doVar.y();
            bgVar.b(true);
            bgVar.c = doVar.x();
            bgVar.c(true);
        }
    }

    /* compiled from: Location */
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

    /* compiled from: Location */
    public enum e implements cq {
        LAT((short) 1, "lat"),
        LNG((short) 2, "lng"),
        TS((short) 3, "ts");
        
        private static final Map<String, e> d = null;
        private final short e;
        private final String f;

        static {
            d = new HashMap();
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                d.put(eVar.b(), eVar);
            }
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return LAT;
                case 2:
                    return LNG;
                case 3:
                    return TS;
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
            return (e) d.get(str);
        }

        private e(short s, String str) {
            this.e = s;
            this.f = str;
        }

        public short a() {
            return this.e;
        }

        public String b() {
            return this.f;
        }
    }

    public /* synthetic */ cq b(int i) {
        return a(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        i.put(ds.class, new b());
        i.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.LAT, new cv("lat", (byte) 1, new cw((byte) 4)));
        enumMap.put(e.LNG, new cv("lng", (byte) 1, new cw((byte) 4)));
        enumMap.put(e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        d = Collections.unmodifiableMap(enumMap);
        cv.a(bg.class, d);
    }

    public bg() {
        this.m = (byte) 0;
    }

    public bg(double d, double d2, long j) {
        this();
        this.a = d;
        a(true);
        this.b = d2;
        b(true);
        this.c = j;
        c(true);
    }

    public bg(bg bgVar) {
        this.m = (byte) 0;
        this.m = bgVar.m;
        this.a = bgVar.a;
        this.b = bgVar.b;
        this.c = bgVar.c;
    }

    public bg a() {
        return new bg(this);
    }

    public void b() {
        a(false);
        this.a = 0.0d;
        b(false);
        this.b = 0.0d;
        c(false);
        this.c = 0;
    }

    public double c() {
        return this.a;
    }

    public bg a(double d) {
        this.a = d;
        a(true);
        return this;
    }

    public void d() {
        this.m = cg.b(this.m, 0);
    }

    public boolean e() {
        return cg.a(this.m, 0);
    }

    public void a(boolean z) {
        this.m = cg.a(this.m, 0, z);
    }

    public double f() {
        return this.b;
    }

    public bg b(double d) {
        this.b = d;
        b(true);
        return this;
    }

    public void h() {
        this.m = cg.b(this.m, 1);
    }

    public boolean i() {
        return cg.a(this.m, 1);
    }

    public void b(boolean z) {
        this.m = cg.a(this.m, 1, z);
    }

    public long j() {
        return this.c;
    }

    public bg a(long j) {
        this.c = j;
        c(true);
        return this;
    }

    public void k() {
        this.m = cg.b(this.m, 2);
    }

    public boolean l() {
        return cg.a(this.m, 2);
    }

    public void c(boolean z) {
        this.m = cg.a(this.m, 2, z);
    }

    public e a(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) i.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) i.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Location(");
        stringBuilder.append("lat:");
        stringBuilder.append(this.a);
        stringBuilder.append(", ");
        stringBuilder.append("lng:");
        stringBuilder.append(this.b);
        stringBuilder.append(", ");
        stringBuilder.append("ts:");
        stringBuilder.append(this.c);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m() throws cp {
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
            this.m = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
