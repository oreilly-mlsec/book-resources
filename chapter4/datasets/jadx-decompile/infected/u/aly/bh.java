package u.aly;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MiscInfo */
public class bh implements Serializable, Cloneable, cj<bh, e> {
    private static final int A = 3;
    public static final Map<e, cv> k;
    private static final dn l = new dn("MiscInfo");
    private static final dd m = new dd("time_zone", (byte) 8, (short) 1);
    private static final dd n = new dd("language", (byte) 11, (short) 2);
    private static final dd o = new dd("country", (byte) 11, (short) 3);
    private static final dd p = new dd("latitude", (byte) 4, (short) 4);
    private static final dd q = new dd("longitude", (byte) 4, (short) 5);
    private static final dd r = new dd("carrier", (byte) 11, (short) 6);
    private static final dd s = new dd("latency", (byte) 8, (short) 7);
    private static final dd t = new dd("display_name", (byte) 11, (short) 8);
    private static final dd u = new dd("access_type", (byte) 8, (short) 9);
    private static final dd v = new dd("access_subtype", (byte) 11, (short) 10);
    private static final Map<Class<? extends dq>, dr> w = new HashMap();
    private static final int x = 0;
    private static final int y = 1;
    private static final int z = 2;
    private byte B;
    private e[] C;
    public int a;
    public String b;
    public String c;
    public double d;
    public double e;
    public String f;
    public int g;
    public String h;
    public an i;
    public String j;

    /* compiled from: MiscInfo */
    private static class a extends ds<bh> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bh) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bh) cjVar);
        }

        public void a(di diVar, bh bhVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    bhVar.H();
                    return;
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bhVar.a = diVar.w();
                        bhVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bhVar.b = diVar.z();
                        bhVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bhVar.c = diVar.z();
                        bhVar.c(true);
                        break;
                    case (short) 4:
                        if (l.b != (byte) 4) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bhVar.d = diVar.y();
                        bhVar.d(true);
                        break;
                    case (short) 5:
                        if (l.b != (byte) 4) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bhVar.e = diVar.y();
                        bhVar.e(true);
                        break;
                    case (short) 6:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bhVar.f = diVar.z();
                        bhVar.f(true);
                        break;
                    case ci.h /*7*/:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bhVar.g = diVar.w();
                        bhVar.g(true);
                        break;
                    case (short) 8:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bhVar.h = diVar.z();
                        bhVar.h(true);
                        break;
                    case (short) 9:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bhVar.i = an.a(diVar.w());
                        bhVar.i(true);
                        break;
                    case (short) 10:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bhVar.j = diVar.z();
                        bhVar.j(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bh bhVar) throws cp {
            bhVar.H();
            diVar.a(bh.l);
            if (bhVar.e()) {
                diVar.a(bh.m);
                diVar.a(bhVar.a);
                diVar.c();
            }
            if (bhVar.b != null && bhVar.i()) {
                diVar.a(bh.n);
                diVar.a(bhVar.b);
                diVar.c();
            }
            if (bhVar.c != null && bhVar.l()) {
                diVar.a(bh.o);
                diVar.a(bhVar.c);
                diVar.c();
            }
            if (bhVar.o()) {
                diVar.a(bh.p);
                diVar.a(bhVar.d);
                diVar.c();
            }
            if (bhVar.r()) {
                diVar.a(bh.q);
                diVar.a(bhVar.e);
                diVar.c();
            }
            if (bhVar.f != null && bhVar.u()) {
                diVar.a(bh.r);
                diVar.a(bhVar.f);
                diVar.c();
            }
            if (bhVar.x()) {
                diVar.a(bh.s);
                diVar.a(bhVar.g);
                diVar.c();
            }
            if (bhVar.h != null && bhVar.A()) {
                diVar.a(bh.t);
                diVar.a(bhVar.h);
                diVar.c();
            }
            if (bhVar.i != null && bhVar.D()) {
                diVar.a(bh.u);
                diVar.a(bhVar.i.a());
                diVar.c();
            }
            if (bhVar.j != null && bhVar.G()) {
                diVar.a(bh.v);
                diVar.a(bhVar.j);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: MiscInfo */
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

    /* compiled from: MiscInfo */
    private static class c extends dt<bh> {
        private c() {
        }

        public void a(di diVar, bh bhVar) throws cp {
            do doVar = (do) diVar;
            BitSet bitSet = new BitSet();
            if (bhVar.e()) {
                bitSet.set(0);
            }
            if (bhVar.i()) {
                bitSet.set(1);
            }
            if (bhVar.l()) {
                bitSet.set(2);
            }
            if (bhVar.o()) {
                bitSet.set(3);
            }
            if (bhVar.r()) {
                bitSet.set(4);
            }
            if (bhVar.u()) {
                bitSet.set(5);
            }
            if (bhVar.x()) {
                bitSet.set(6);
            }
            if (bhVar.A()) {
                bitSet.set(7);
            }
            if (bhVar.D()) {
                bitSet.set(8);
            }
            if (bhVar.G()) {
                bitSet.set(9);
            }
            doVar.a(bitSet, 10);
            if (bhVar.e()) {
                doVar.a(bhVar.a);
            }
            if (bhVar.i()) {
                doVar.a(bhVar.b);
            }
            if (bhVar.l()) {
                doVar.a(bhVar.c);
            }
            if (bhVar.o()) {
                doVar.a(bhVar.d);
            }
            if (bhVar.r()) {
                doVar.a(bhVar.e);
            }
            if (bhVar.u()) {
                doVar.a(bhVar.f);
            }
            if (bhVar.x()) {
                doVar.a(bhVar.g);
            }
            if (bhVar.A()) {
                doVar.a(bhVar.h);
            }
            if (bhVar.D()) {
                doVar.a(bhVar.i.a());
            }
            if (bhVar.G()) {
                doVar.a(bhVar.j);
            }
        }

        public void b(di diVar, bh bhVar) throws cp {
            do doVar = (do) diVar;
            BitSet b = doVar.b(10);
            if (b.get(0)) {
                bhVar.a = doVar.w();
                bhVar.a(true);
            }
            if (b.get(1)) {
                bhVar.b = doVar.z();
                bhVar.b(true);
            }
            if (b.get(2)) {
                bhVar.c = doVar.z();
                bhVar.c(true);
            }
            if (b.get(3)) {
                bhVar.d = doVar.y();
                bhVar.d(true);
            }
            if (b.get(4)) {
                bhVar.e = doVar.y();
                bhVar.e(true);
            }
            if (b.get(5)) {
                bhVar.f = doVar.z();
                bhVar.f(true);
            }
            if (b.get(6)) {
                bhVar.g = doVar.w();
                bhVar.g(true);
            }
            if (b.get(7)) {
                bhVar.h = doVar.z();
                bhVar.h(true);
            }
            if (b.get(8)) {
                bhVar.i = an.a(doVar.w());
                bhVar.i(true);
            }
            if (b.get(9)) {
                bhVar.j = doVar.z();
                bhVar.j(true);
            }
        }
    }

    /* compiled from: MiscInfo */
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

    /* compiled from: MiscInfo */
    public enum e implements cq {
        TIME_ZONE((short) 1, "time_zone"),
        LANGUAGE((short) 2, "language"),
        COUNTRY((short) 3, "country"),
        LATITUDE((short) 4, "latitude"),
        LONGITUDE((short) 5, "longitude"),
        CARRIER((short) 6, "carrier"),
        LATENCY((short) 7, "latency"),
        DISPLAY_NAME((short) 8, "display_name"),
        ACCESS_TYPE((short) 9, "access_type"),
        ACCESS_SUBTYPE((short) 10, "access_subtype");
        
        private static final Map<String, e> k = null;
        private final short l;
        private final String m;

        static {
            k = new HashMap();
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                k.put(eVar.b(), eVar);
            }
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return TIME_ZONE;
                case 2:
                    return LANGUAGE;
                case 3:
                    return COUNTRY;
                case 4:
                    return LATITUDE;
                case 5:
                    return LONGITUDE;
                case 6:
                    return CARRIER;
                case ci.h /*7*/:
                    return LATENCY;
                case 8:
                    return DISPLAY_NAME;
                case 9:
                    return ACCESS_TYPE;
                case 10:
                    return ACCESS_SUBTYPE;
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
            return (e) k.get(str);
        }

        private e(short s, String str) {
            this.l = s;
            this.m = str;
        }

        public short a() {
            return this.l;
        }

        public String b() {
            return this.m;
        }
    }

    public /* synthetic */ cq b(int i) {
        return d(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        w.put(ds.class, new b());
        w.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.TIME_ZONE, new cv("time_zone", (byte) 2, new cw((byte) 8)));
        enumMap.put(e.LANGUAGE, new cv("language", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.COUNTRY, new cv("country", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.LATITUDE, new cv("latitude", (byte) 2, new cw((byte) 4)));
        enumMap.put(e.LONGITUDE, new cv("longitude", (byte) 2, new cw((byte) 4)));
        enumMap.put(e.CARRIER, new cv("carrier", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.LATENCY, new cv("latency", (byte) 2, new cw((byte) 8)));
        enumMap.put(e.DISPLAY_NAME, new cv("display_name", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.ACCESS_TYPE, new cv("access_type", (byte) 2, new cu(dp.n, an.class)));
        enumMap.put(e.ACCESS_SUBTYPE, new cv("access_subtype", (byte) 2, new cw((byte) 11)));
        k = Collections.unmodifiableMap(enumMap);
        cv.a(bh.class, k);
    }

    public bh() {
        this.B = (byte) 0;
        this.C = new e[]{e.TIME_ZONE, e.LANGUAGE, e.COUNTRY, e.LATITUDE, e.LONGITUDE, e.CARRIER, e.LATENCY, e.DISPLAY_NAME, e.ACCESS_TYPE, e.ACCESS_SUBTYPE};
    }

    public bh(bh bhVar) {
        this.B = (byte) 0;
        this.C = new e[]{e.TIME_ZONE, e.LANGUAGE, e.COUNTRY, e.LATITUDE, e.LONGITUDE, e.CARRIER, e.LATENCY, e.DISPLAY_NAME, e.ACCESS_TYPE, e.ACCESS_SUBTYPE};
        this.B = bhVar.B;
        this.a = bhVar.a;
        if (bhVar.i()) {
            this.b = bhVar.b;
        }
        if (bhVar.l()) {
            this.c = bhVar.c;
        }
        this.d = bhVar.d;
        this.e = bhVar.e;
        if (bhVar.u()) {
            this.f = bhVar.f;
        }
        this.g = bhVar.g;
        if (bhVar.A()) {
            this.h = bhVar.h;
        }
        if (bhVar.D()) {
            this.i = bhVar.i;
        }
        if (bhVar.G()) {
            this.j = bhVar.j;
        }
    }

    public bh a() {
        return new bh(this);
    }

    public void b() {
        a(false);
        this.a = 0;
        this.b = null;
        this.c = null;
        d(false);
        this.d = 0.0d;
        e(false);
        this.e = 0.0d;
        this.f = null;
        g(false);
        this.g = 0;
        this.h = null;
        this.i = null;
        this.j = null;
    }

    public int c() {
        return this.a;
    }

    public bh a(int i) {
        this.a = i;
        a(true);
        return this;
    }

    public void d() {
        this.B = cg.b(this.B, 0);
    }

    public boolean e() {
        return cg.a(this.B, 0);
    }

    public void a(boolean z) {
        this.B = cg.a(this.B, 0, z);
    }

    public String f() {
        return this.b;
    }

    public bh a(String str) {
        this.b = str;
        return this;
    }

    public void h() {
        this.b = null;
    }

    public boolean i() {
        return this.b != null;
    }

    public void b(boolean z) {
        if (!z) {
            this.b = null;
        }
    }

    public String j() {
        return this.c;
    }

    public bh b(String str) {
        this.c = str;
        return this;
    }

    public void k() {
        this.c = null;
    }

    public boolean l() {
        return this.c != null;
    }

    public void c(boolean z) {
        if (!z) {
            this.c = null;
        }
    }

    public double m() {
        return this.d;
    }

    public bh a(double d) {
        this.d = d;
        d(true);
        return this;
    }

    public void n() {
        this.B = cg.b(this.B, 1);
    }

    public boolean o() {
        return cg.a(this.B, 1);
    }

    public void d(boolean z) {
        this.B = cg.a(this.B, 1, z);
    }

    public double p() {
        return this.e;
    }

    public bh b(double d) {
        this.e = d;
        e(true);
        return this;
    }

    public void q() {
        this.B = cg.b(this.B, 2);
    }

    public boolean r() {
        return cg.a(this.B, 2);
    }

    public void e(boolean z) {
        this.B = cg.a(this.B, 2, z);
    }

    public String s() {
        return this.f;
    }

    public bh c(String str) {
        this.f = str;
        return this;
    }

    public void t() {
        this.f = null;
    }

    public boolean u() {
        return this.f != null;
    }

    public void f(boolean z) {
        if (!z) {
            this.f = null;
        }
    }

    public int v() {
        return this.g;
    }

    public bh c(int i) {
        this.g = i;
        g(true);
        return this;
    }

    public void w() {
        this.B = cg.b(this.B, 3);
    }

    public boolean x() {
        return cg.a(this.B, 3);
    }

    public void g(boolean z) {
        this.B = cg.a(this.B, 3, z);
    }

    public String y() {
        return this.h;
    }

    public bh d(String str) {
        this.h = str;
        return this;
    }

    public void z() {
        this.h = null;
    }

    public boolean A() {
        return this.h != null;
    }

    public void h(boolean z) {
        if (!z) {
            this.h = null;
        }
    }

    public an B() {
        return this.i;
    }

    public bh a(an anVar) {
        this.i = anVar;
        return this;
    }

    public void C() {
        this.i = null;
    }

    public boolean D() {
        return this.i != null;
    }

    public void i(boolean z) {
        if (!z) {
            this.i = null;
        }
    }

    public String E() {
        return this.j;
    }

    public bh e(String str) {
        this.j = str;
        return this;
    }

    public void F() {
        this.j = null;
    }

    public boolean G() {
        return this.j != null;
    }

    public void j(boolean z) {
        if (!z) {
            this.j = null;
        }
    }

    public e d(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) w.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) w.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        Object obj = null;
        StringBuilder stringBuilder = new StringBuilder("MiscInfo(");
        Object obj2 = 1;
        if (e()) {
            stringBuilder.append("time_zone:");
            stringBuilder.append(this.a);
            obj2 = null;
        }
        if (i()) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("language:");
            if (this.b == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.b);
            }
            obj2 = null;
        }
        if (l()) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("country:");
            if (this.c == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.c);
            }
            obj2 = null;
        }
        if (o()) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("latitude:");
            stringBuilder.append(this.d);
            obj2 = null;
        }
        if (r()) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("longitude:");
            stringBuilder.append(this.e);
            obj2 = null;
        }
        if (u()) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("carrier:");
            if (this.f == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.f);
            }
            obj2 = null;
        }
        if (x()) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("latency:");
            stringBuilder.append(this.g);
            obj2 = null;
        }
        if (A()) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("display_name:");
            if (this.h == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.h);
            }
            obj2 = null;
        }
        if (D()) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("access_type:");
            if (this.i == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.i);
            }
        } else {
            obj = obj2;
        }
        if (G()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("access_subtype:");
            if (this.j == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.j);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void H() throws cp {
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
            this.B = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
