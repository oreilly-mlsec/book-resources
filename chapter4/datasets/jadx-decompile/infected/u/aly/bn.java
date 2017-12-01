package u.aly;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: Session */
public class bn implements Serializable, Cloneable, cj<bn, e> {
    public static final Map<e, cv> h;
    private static final dn i = new dn("Session");
    private static final dd j = new dd("id", (byte) 11, (short) 1);
    private static final dd k = new dd("start_time", (byte) 10, (short) 2);
    private static final dd l = new dd("end_time", (byte) 10, (short) 3);
    private static final dd m = new dd("duration", (byte) 10, (short) 4);
    private static final dd n = new dd("pages", dp.m, (short) 5);
    private static final dd o = new dd("locations", dp.m, (short) 6);
    private static final dd p = new dd("traffic", (byte) 12, (short) 7);
    private static final Map<Class<? extends dq>, dr> q = new HashMap();
    private static final int r = 0;
    private static final int s = 1;
    private static final int t = 2;
    public String a;
    public long b;
    public long c;
    public long d;
    public List<bi> e;
    public List<bg> f;
    public bo g;
    private byte u;
    private e[] v;

    /* compiled from: Session */
    private static class a extends ds<bn> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bn) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bn) cjVar);
        }

        public void a(di diVar, bn bnVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (!bnVar.i()) {
                        throw new dj("Required field 'start_time' was not found in serialized data! Struct: " + toString());
                    } else if (!bnVar.l()) {
                        throw new dj("Required field 'end_time' was not found in serialized data! Struct: " + toString());
                    } else if (bnVar.o()) {
                        bnVar.C();
                        return;
                    } else {
                        throw new dj("Required field 'duration' was not found in serialized data! Struct: " + toString());
                    }
                }
                de p;
                int i;
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bnVar.a = diVar.z();
                        bnVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bnVar.b = diVar.x();
                        bnVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bnVar.c = diVar.x();
                        bnVar.c(true);
                        break;
                    case (short) 4:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bnVar.d = diVar.x();
                        bnVar.d(true);
                        break;
                    case (short) 5:
                        if (l.b != dp.m) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        p = diVar.p();
                        bnVar.e = new ArrayList(p.b);
                        for (i = 0; i < p.b; i++) {
                            bi biVar = new bi();
                            biVar.a(diVar);
                            bnVar.e.add(biVar);
                        }
                        diVar.q();
                        bnVar.e(true);
                        break;
                    case (short) 6:
                        if (l.b != dp.m) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        p = diVar.p();
                        bnVar.f = new ArrayList(p.b);
                        for (i = 0; i < p.b; i++) {
                            bg bgVar = new bg();
                            bgVar.a(diVar);
                            bnVar.f.add(bgVar);
                        }
                        diVar.q();
                        bnVar.f(true);
                        break;
                    case ci.h /*7*/:
                        if (l.b != (byte) 12) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bnVar.g = new bo();
                        bnVar.g.a(diVar);
                        bnVar.g(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bn bnVar) throws cp {
            bnVar.C();
            diVar.a(bn.i);
            if (bnVar.a != null) {
                diVar.a(bn.j);
                diVar.a(bnVar.a);
                diVar.c();
            }
            diVar.a(bn.k);
            diVar.a(bnVar.b);
            diVar.c();
            diVar.a(bn.l);
            diVar.a(bnVar.c);
            diVar.c();
            diVar.a(bn.m);
            diVar.a(bnVar.d);
            diVar.c();
            if (bnVar.e != null && bnVar.t()) {
                diVar.a(bn.n);
                diVar.a(new de((byte) 12, bnVar.e.size()));
                for (bi b : bnVar.e) {
                    b.b(diVar);
                }
                diVar.f();
                diVar.c();
            }
            if (bnVar.f != null && bnVar.y()) {
                diVar.a(bn.o);
                diVar.a(new de((byte) 12, bnVar.f.size()));
                for (bg b2 : bnVar.f) {
                    b2.b(diVar);
                }
                diVar.f();
                diVar.c();
            }
            if (bnVar.g != null && bnVar.B()) {
                diVar.a(bn.p);
                bnVar.g.b(diVar);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: Session */
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

    /* compiled from: Session */
    private static class c extends dt<bn> {
        private c() {
        }

        public void a(di diVar, bn bnVar) throws cp {
            diVar = (do) diVar;
            diVar.a(bnVar.a);
            diVar.a(bnVar.b);
            diVar.a(bnVar.c);
            diVar.a(bnVar.d);
            BitSet bitSet = new BitSet();
            if (bnVar.t()) {
                bitSet.set(0);
            }
            if (bnVar.y()) {
                bitSet.set(1);
            }
            if (bnVar.B()) {
                bitSet.set(2);
            }
            diVar.a(bitSet, 3);
            if (bnVar.t()) {
                diVar.a(bnVar.e.size());
                for (bi b : bnVar.e) {
                    b.b(diVar);
                }
            }
            if (bnVar.y()) {
                diVar.a(bnVar.f.size());
                for (bg b2 : bnVar.f) {
                    b2.b(diVar);
                }
            }
            if (bnVar.B()) {
                bnVar.g.b(diVar);
            }
        }

        public void b(di diVar, bn bnVar) throws cp {
            int i = 0;
            diVar = (do) diVar;
            bnVar.a = diVar.z();
            bnVar.a(true);
            bnVar.b = diVar.x();
            bnVar.b(true);
            bnVar.c = diVar.x();
            bnVar.c(true);
            bnVar.d = diVar.x();
            bnVar.d(true);
            BitSet b = diVar.b(3);
            if (b.get(0)) {
                de deVar = new de((byte) 12, diVar.w());
                bnVar.e = new ArrayList(deVar.b);
                for (int i2 = 0; i2 < deVar.b; i2++) {
                    bi biVar = new bi();
                    biVar.a(diVar);
                    bnVar.e.add(biVar);
                }
                bnVar.e(true);
            }
            if (b.get(1)) {
                de deVar2 = new de((byte) 12, diVar.w());
                bnVar.f = new ArrayList(deVar2.b);
                while (i < deVar2.b) {
                    bg bgVar = new bg();
                    bgVar.a(diVar);
                    bnVar.f.add(bgVar);
                    i++;
                }
                bnVar.f(true);
            }
            if (b.get(2)) {
                bnVar.g = new bo();
                bnVar.g.a(diVar);
                bnVar.g(true);
            }
        }
    }

    /* compiled from: Session */
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

    /* compiled from: Session */
    public enum e implements cq {
        ID((short) 1, "id"),
        START_TIME((short) 2, "start_time"),
        END_TIME((short) 3, "end_time"),
        DURATION((short) 4, "duration"),
        PAGES((short) 5, "pages"),
        LOCATIONS((short) 6, "locations"),
        TRAFFIC((short) 7, "traffic");
        
        private static final Map<String, e> h = null;
        private final short i;
        private final String j;

        static {
            h = new HashMap();
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                h.put(eVar.b(), eVar);
            }
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return ID;
                case 2:
                    return START_TIME;
                case 3:
                    return END_TIME;
                case 4:
                    return DURATION;
                case 5:
                    return PAGES;
                case 6:
                    return LOCATIONS;
                case ci.h /*7*/:
                    return TRAFFIC;
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
            return (e) h.get(str);
        }

        private e(short s, String str) {
            this.i = s;
            this.j = str;
        }

        public short a() {
            return this.i;
        }

        public String b() {
            return this.j;
        }
    }

    public /* synthetic */ cq b(int i) {
        return a(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        q.put(ds.class, new b());
        q.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.ID, new cv("id", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.START_TIME, new cv("start_time", (byte) 1, new cw((byte) 10)));
        enumMap.put(e.END_TIME, new cv("end_time", (byte) 1, new cw((byte) 10)));
        enumMap.put(e.DURATION, new cv("duration", (byte) 1, new cw((byte) 10)));
        enumMap.put(e.PAGES, new cv("pages", (byte) 2, new cx(dp.m, new da((byte) 12, bi.class))));
        enumMap.put(e.LOCATIONS, new cv("locations", (byte) 2, new cx(dp.m, new da((byte) 12, bg.class))));
        enumMap.put(e.TRAFFIC, new cv("traffic", (byte) 2, new da((byte) 12, bo.class)));
        h = Collections.unmodifiableMap(enumMap);
        cv.a(bn.class, h);
    }

    public bn() {
        this.u = (byte) 0;
        this.v = new e[]{e.PAGES, e.LOCATIONS, e.TRAFFIC};
    }

    public bn(String str, long j, long j2, long j3) {
        this();
        this.a = str;
        this.b = j;
        b(true);
        this.c = j2;
        c(true);
        this.d = j3;
        d(true);
    }

    public bn(bn bnVar) {
        List arrayList;
        this.u = (byte) 0;
        this.v = new e[]{e.PAGES, e.LOCATIONS, e.TRAFFIC};
        this.u = bnVar.u;
        if (bnVar.e()) {
            this.a = bnVar.a;
        }
        this.b = bnVar.b;
        this.c = bnVar.c;
        this.d = bnVar.d;
        if (bnVar.t()) {
            arrayList = new ArrayList();
            for (bi biVar : bnVar.e) {
                arrayList.add(new bi(biVar));
            }
            this.e = arrayList;
        }
        if (bnVar.y()) {
            arrayList = new ArrayList();
            for (bg bgVar : bnVar.f) {
                arrayList.add(new bg(bgVar));
            }
            this.f = arrayList;
        }
        if (bnVar.B()) {
            this.g = new bo(bnVar.g);
        }
    }

    public bn a() {
        return new bn(this);
    }

    public void b() {
        this.a = null;
        b(false);
        this.b = 0;
        c(false);
        this.c = 0;
        d(false);
        this.d = 0;
        this.e = null;
        this.f = null;
        this.g = null;
    }

    public String c() {
        return this.a;
    }

    public bn a(String str) {
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

    public bn a(long j) {
        this.b = j;
        b(true);
        return this;
    }

    public void h() {
        this.u = cg.b(this.u, 0);
    }

    public boolean i() {
        return cg.a(this.u, 0);
    }

    public void b(boolean z) {
        this.u = cg.a(this.u, 0, z);
    }

    public long j() {
        return this.c;
    }

    public bn b(long j) {
        this.c = j;
        c(true);
        return this;
    }

    public void k() {
        this.u = cg.b(this.u, 1);
    }

    public boolean l() {
        return cg.a(this.u, 1);
    }

    public void c(boolean z) {
        this.u = cg.a(this.u, 1, z);
    }

    public long m() {
        return this.d;
    }

    public bn c(long j) {
        this.d = j;
        d(true);
        return this;
    }

    public void n() {
        this.u = cg.b(this.u, 2);
    }

    public boolean o() {
        return cg.a(this.u, 2);
    }

    public void d(boolean z) {
        this.u = cg.a(this.u, 2, z);
    }

    public int p() {
        return this.e == null ? 0 : this.e.size();
    }

    public Iterator<bi> q() {
        return this.e == null ? null : this.e.iterator();
    }

    public void a(bi biVar) {
        if (this.e == null) {
            this.e = new ArrayList();
        }
        this.e.add(biVar);
    }

    public List<bi> r() {
        return this.e;
    }

    public bn a(List<bi> list) {
        this.e = list;
        return this;
    }

    public void s() {
        this.e = null;
    }

    public boolean t() {
        return this.e != null;
    }

    public void e(boolean z) {
        if (!z) {
            this.e = null;
        }
    }

    public int u() {
        return this.f == null ? 0 : this.f.size();
    }

    public Iterator<bg> v() {
        return this.f == null ? null : this.f.iterator();
    }

    public void a(bg bgVar) {
        if (this.f == null) {
            this.f = new ArrayList();
        }
        this.f.add(bgVar);
    }

    public List<bg> w() {
        return this.f;
    }

    public bn b(List<bg> list) {
        this.f = list;
        return this;
    }

    public void x() {
        this.f = null;
    }

    public boolean y() {
        return this.f != null;
    }

    public void f(boolean z) {
        if (!z) {
            this.f = null;
        }
    }

    public bo z() {
        return this.g;
    }

    public bn a(bo boVar) {
        this.g = boVar;
        return this;
    }

    public void A() {
        this.g = null;
    }

    public boolean B() {
        return this.g != null;
    }

    public void g(boolean z) {
        if (!z) {
            this.g = null;
        }
    }

    public e a(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) q.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) q.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Session(");
        stringBuilder.append("id:");
        if (this.a == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.a);
        }
        stringBuilder.append(", ");
        stringBuilder.append("start_time:");
        stringBuilder.append(this.b);
        stringBuilder.append(", ");
        stringBuilder.append("end_time:");
        stringBuilder.append(this.c);
        stringBuilder.append(", ");
        stringBuilder.append("duration:");
        stringBuilder.append(this.d);
        if (t()) {
            stringBuilder.append(", ");
            stringBuilder.append("pages:");
            if (this.e == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.e);
            }
        }
        if (y()) {
            stringBuilder.append(", ");
            stringBuilder.append("locations:");
            if (this.f == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.f);
            }
        }
        if (B()) {
            stringBuilder.append(", ");
            stringBuilder.append("traffic:");
            if (this.g == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.g);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void C() throws cp {
        if (this.a == null) {
            throw new dj("Required field 'id' was not present! Struct: " + toString());
        } else if (this.g != null) {
            this.g.j();
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
            this.u = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
