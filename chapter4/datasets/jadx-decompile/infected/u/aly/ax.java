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
import java.util.Map.Entry;

/* compiled from: Event */
public class ax implements Serializable, Cloneable, cj<ax, e> {
    public static final Map<e, cv> f;
    private static final dn g = new dn("Event");
    private static final dd h = new dd("name", (byte) 11, (short) 1);
    private static final dd i = new dd("properties", dp.k, (short) 2);
    private static final dd j = new dd("duration", (byte) 10, (short) 3);
    private static final dd k = new dd("acc", (byte) 8, (short) 4);
    private static final dd l = new dd("ts", (byte) 10, (short) 5);
    private static final Map<Class<? extends dq>, dr> m = new HashMap();
    private static final int n = 0;
    private static final int o = 1;
    private static final int p = 2;
    public String a;
    public Map<String, bj> b;
    public long c;
    public int d;
    public long e;
    private byte q;
    private e[] r;

    /* compiled from: Event */
    private static class a extends ds<ax> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (ax) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (ax) cjVar);
        }

        public void a(di diVar, ax axVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (axVar.s()) {
                        axVar.t();
                        return;
                    }
                    throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        axVar.a = diVar.z();
                        axVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != dp.k) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        df n = diVar.n();
                        axVar.b = new HashMap(n.c * 2);
                        for (int i = 0; i < n.c; i++) {
                            String z = diVar.z();
                            bj bjVar = new bj();
                            bjVar.a(diVar);
                            axVar.b.put(z, bjVar);
                        }
                        diVar.o();
                        axVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        axVar.c = diVar.x();
                        axVar.c(true);
                        break;
                    case (short) 4:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        axVar.d = diVar.w();
                        axVar.d(true);
                        break;
                    case (short) 5:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        axVar.e = diVar.x();
                        axVar.e(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, ax axVar) throws cp {
            axVar.t();
            diVar.a(ax.g);
            if (axVar.a != null) {
                diVar.a(ax.h);
                diVar.a(axVar.a);
                diVar.c();
            }
            if (axVar.b != null) {
                diVar.a(ax.i);
                diVar.a(new df((byte) 11, (byte) 12, axVar.b.size()));
                for (Entry entry : axVar.b.entrySet()) {
                    diVar.a((String) entry.getKey());
                    ((bj) entry.getValue()).b(diVar);
                }
                diVar.e();
                diVar.c();
            }
            if (axVar.m()) {
                diVar.a(ax.j);
                diVar.a(axVar.c);
                diVar.c();
            }
            if (axVar.p()) {
                diVar.a(ax.k);
                diVar.a(axVar.d);
                diVar.c();
            }
            diVar.a(ax.l);
            diVar.a(axVar.e);
            diVar.c();
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: Event */
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

    /* compiled from: Event */
    private static class c extends dt<ax> {
        private c() {
        }

        public void a(di diVar, ax axVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(axVar.a);
            doVar.a(axVar.b.size());
            for (Entry entry : axVar.b.entrySet()) {
                doVar.a((String) entry.getKey());
                ((bj) entry.getValue()).b((di) doVar);
            }
            doVar.a(axVar.e);
            BitSet bitSet = new BitSet();
            if (axVar.m()) {
                bitSet.set(0);
            }
            if (axVar.p()) {
                bitSet.set(1);
            }
            doVar.a(bitSet, 2);
            if (axVar.m()) {
                doVar.a(axVar.c);
            }
            if (axVar.p()) {
                doVar.a(axVar.d);
            }
        }

        public void b(di diVar, ax axVar) throws cp {
            do doVar = (do) diVar;
            axVar.a = doVar.z();
            axVar.a(true);
            df dfVar = new df((byte) 11, (byte) 12, doVar.w());
            axVar.b = new HashMap(dfVar.c * 2);
            for (int i = 0; i < dfVar.c; i++) {
                String z = doVar.z();
                bj bjVar = new bj();
                bjVar.a((di) doVar);
                axVar.b.put(z, bjVar);
            }
            axVar.b(true);
            axVar.e = doVar.x();
            axVar.e(true);
            BitSet b = doVar.b(2);
            if (b.get(0)) {
                axVar.c = doVar.x();
                axVar.c(true);
            }
            if (b.get(1)) {
                axVar.d = doVar.w();
                axVar.d(true);
            }
        }
    }

    /* compiled from: Event */
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

    /* compiled from: Event */
    public enum e implements cq {
        NAME((short) 1, "name"),
        PROPERTIES((short) 2, "properties"),
        DURATION((short) 3, "duration"),
        ACC((short) 4, "acc"),
        TS((short) 5, "ts");
        
        private static final Map<String, e> f = null;
        private final short g;
        private final String h;

        static {
            f = new HashMap();
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f.put(eVar.b(), eVar);
            }
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return NAME;
                case 2:
                    return PROPERTIES;
                case 3:
                    return DURATION;
                case 4:
                    return ACC;
                case 5:
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
            return (e) f.get(str);
        }

        private e(short s, String str) {
            this.g = s;
            this.h = str;
        }

        public short a() {
            return this.g;
        }

        public String b() {
            return this.h;
        }
    }

    public /* synthetic */ cq b(int i) {
        return c(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        m.put(ds.class, new b());
        m.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.NAME, new cv("name", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.PROPERTIES, new cv("properties", (byte) 1, new cy(dp.k, new cw((byte) 11), new da((byte) 12, bj.class))));
        enumMap.put(e.DURATION, new cv("duration", (byte) 2, new cw((byte) 10)));
        enumMap.put(e.ACC, new cv("acc", (byte) 2, new cw((byte) 8)));
        enumMap.put(e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        f = Collections.unmodifiableMap(enumMap);
        cv.a(ax.class, f);
    }

    public ax() {
        this.q = (byte) 0;
        this.r = new e[]{e.DURATION, e.ACC};
    }

    public ax(String str, Map<String, bj> map, long j) {
        this();
        this.a = str;
        this.b = map;
        this.e = j;
        e(true);
    }

    public ax(ax axVar) {
        this.q = (byte) 0;
        this.r = new e[]{e.DURATION, e.ACC};
        this.q = axVar.q;
        if (axVar.e()) {
            this.a = axVar.a;
        }
        if (axVar.j()) {
            Map hashMap = new HashMap();
            for (Entry entry : axVar.b.entrySet()) {
                hashMap.put((String) entry.getKey(), new bj((bj) entry.getValue()));
            }
            this.b = hashMap;
        }
        this.c = axVar.c;
        this.d = axVar.d;
        this.e = axVar.e;
    }

    public ax a() {
        return new ax(this);
    }

    public void b() {
        this.a = null;
        this.b = null;
        c(false);
        this.c = 0;
        d(false);
        this.d = 0;
        e(false);
        this.e = 0;
    }

    public String c() {
        return this.a;
    }

    public ax a(String str) {
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

    public int f() {
        return this.b == null ? 0 : this.b.size();
    }

    public void a(String str, bj bjVar) {
        if (this.b == null) {
            this.b = new HashMap();
        }
        this.b.put(str, bjVar);
    }

    public Map<String, bj> h() {
        return this.b;
    }

    public ax a(Map<String, bj> map) {
        this.b = map;
        return this;
    }

    public void i() {
        this.b = null;
    }

    public boolean j() {
        return this.b != null;
    }

    public void b(boolean z) {
        if (!z) {
            this.b = null;
        }
    }

    public long k() {
        return this.c;
    }

    public ax a(long j) {
        this.c = j;
        c(true);
        return this;
    }

    public void l() {
        this.q = cg.b(this.q, 0);
    }

    public boolean m() {
        return cg.a(this.q, 0);
    }

    public void c(boolean z) {
        this.q = cg.a(this.q, 0, z);
    }

    public int n() {
        return this.d;
    }

    public ax a(int i) {
        this.d = i;
        d(true);
        return this;
    }

    public void o() {
        this.q = cg.b(this.q, 1);
    }

    public boolean p() {
        return cg.a(this.q, 1);
    }

    public void d(boolean z) {
        this.q = cg.a(this.q, 1, z);
    }

    public long q() {
        return this.e;
    }

    public ax b(long j) {
        this.e = j;
        e(true);
        return this;
    }

    public void r() {
        this.q = cg.b(this.q, 2);
    }

    public boolean s() {
        return cg.a(this.q, 2);
    }

    public void e(boolean z) {
        this.q = cg.a(this.q, 2, z);
    }

    public e c(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) m.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) m.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Event(");
        stringBuilder.append("name:");
        if (this.a == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.a);
        }
        stringBuilder.append(", ");
        stringBuilder.append("properties:");
        if (this.b == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.b);
        }
        if (m()) {
            stringBuilder.append(", ");
            stringBuilder.append("duration:");
            stringBuilder.append(this.c);
        }
        if (p()) {
            stringBuilder.append(", ");
            stringBuilder.append("acc:");
            stringBuilder.append(this.d);
        }
        stringBuilder.append(", ");
        stringBuilder.append("ts:");
        stringBuilder.append(this.e);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void t() throws cp {
        if (this.a == null) {
            throw new dj("Required field 'name' was not present! Struct: " + toString());
        } else if (this.b == null) {
            throw new dj("Required field 'properties' was not present! Struct: " + toString());
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
            this.q = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
