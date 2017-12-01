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

/* compiled from: Ekv */
public class au implements Serializable, Cloneable, cj<au, e> {
    public static final Map<e, cv> f;
    private static final dn g = new dn("Ekv");
    private static final dd h = new dd("ts", (byte) 10, (short) 1);
    private static final dd i = new dd("name", (byte) 11, (short) 2);
    private static final dd j = new dd("ckv", dp.k, (short) 3);
    private static final dd k = new dd("duration", (byte) 10, (short) 4);
    private static final dd l = new dd("acc", (byte) 8, (short) 5);
    private static final Map<Class<? extends dq>, dr> m = new HashMap();
    private static final int n = 0;
    private static final int o = 1;
    private static final int p = 2;
    public long a;
    public String b;
    public Map<String, String> c;
    public long d;
    public int e;
    private byte q;
    private e[] r;

    /* compiled from: Ekv */
    private static class a extends ds<au> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (au) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (au) cjVar);
        }

        public void a(di diVar, au auVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (auVar.e()) {
                        auVar.t();
                        return;
                    }
                    throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        auVar.a = diVar.x();
                        auVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        auVar.b = diVar.z();
                        auVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != dp.k) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        df n = diVar.n();
                        auVar.c = new HashMap(n.c * 2);
                        for (int i = 0; i < n.c; i++) {
                            auVar.c.put(diVar.z(), diVar.z());
                        }
                        diVar.o();
                        auVar.c(true);
                        break;
                    case (short) 4:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        auVar.d = diVar.x();
                        auVar.d(true);
                        break;
                    case (short) 5:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        auVar.e = diVar.w();
                        auVar.e(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, au auVar) throws cp {
            auVar.t();
            diVar.a(au.g);
            diVar.a(au.h);
            diVar.a(auVar.a);
            diVar.c();
            if (auVar.b != null) {
                diVar.a(au.i);
                diVar.a(auVar.b);
                diVar.c();
            }
            if (auVar.c != null) {
                diVar.a(au.j);
                diVar.a(new df((byte) 11, (byte) 11, auVar.c.size()));
                for (Entry entry : auVar.c.entrySet()) {
                    diVar.a((String) entry.getKey());
                    diVar.a((String) entry.getValue());
                }
                diVar.e();
                diVar.c();
            }
            if (auVar.p()) {
                diVar.a(au.k);
                diVar.a(auVar.d);
                diVar.c();
            }
            if (auVar.s()) {
                diVar.a(au.l);
                diVar.a(auVar.e);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: Ekv */
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

    /* compiled from: Ekv */
    private static class c extends dt<au> {
        private c() {
        }

        public void a(di diVar, au auVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(auVar.a);
            doVar.a(auVar.b);
            doVar.a(auVar.c.size());
            for (Entry entry : auVar.c.entrySet()) {
                doVar.a((String) entry.getKey());
                doVar.a((String) entry.getValue());
            }
            BitSet bitSet = new BitSet();
            if (auVar.p()) {
                bitSet.set(0);
            }
            if (auVar.s()) {
                bitSet.set(1);
            }
            doVar.a(bitSet, 2);
            if (auVar.p()) {
                doVar.a(auVar.d);
            }
            if (auVar.s()) {
                doVar.a(auVar.e);
            }
        }

        public void b(di diVar, au auVar) throws cp {
            do doVar = (do) diVar;
            auVar.a = doVar.x();
            auVar.a(true);
            auVar.b = doVar.z();
            auVar.b(true);
            df dfVar = new df((byte) 11, (byte) 11, doVar.w());
            auVar.c = new HashMap(dfVar.c * 2);
            for (int i = 0; i < dfVar.c; i++) {
                auVar.c.put(doVar.z(), doVar.z());
            }
            auVar.c(true);
            BitSet b = doVar.b(2);
            if (b.get(0)) {
                auVar.d = doVar.x();
                auVar.d(true);
            }
            if (b.get(1)) {
                auVar.e = doVar.w();
                auVar.e(true);
            }
        }
    }

    /* compiled from: Ekv */
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

    /* compiled from: Ekv */
    public enum e implements cq {
        TS((short) 1, "ts"),
        NAME((short) 2, "name"),
        CKV((short) 3, "ckv"),
        DURATION((short) 4, "duration"),
        ACC((short) 5, "acc");
        
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
                    return TS;
                case 2:
                    return NAME;
                case 3:
                    return CKV;
                case 4:
                    return DURATION;
                case 5:
                    return ACC;
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
        enumMap.put(e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        enumMap.put(e.NAME, new cv("name", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.CKV, new cv("ckv", (byte) 1, new cy(dp.k, new cw((byte) 11), new cw((byte) 11))));
        enumMap.put(e.DURATION, new cv("duration", (byte) 2, new cw((byte) 10)));
        enumMap.put(e.ACC, new cv("acc", (byte) 2, new cw((byte) 8)));
        f = Collections.unmodifiableMap(enumMap);
        cv.a(au.class, f);
    }

    public au() {
        this.q = (byte) 0;
        this.r = new e[]{e.DURATION, e.ACC};
    }

    public au(long j, String str, Map<String, String> map) {
        this();
        this.a = j;
        a(true);
        this.b = str;
        this.c = map;
    }

    public au(au auVar) {
        this.q = (byte) 0;
        this.r = new e[]{e.DURATION, e.ACC};
        this.q = auVar.q;
        this.a = auVar.a;
        if (auVar.i()) {
            this.b = auVar.b;
        }
        if (auVar.m()) {
            Map hashMap = new HashMap();
            for (Entry entry : auVar.c.entrySet()) {
                hashMap.put((String) entry.getKey(), (String) entry.getValue());
            }
            this.c = hashMap;
        }
        this.d = auVar.d;
        this.e = auVar.e;
    }

    public au a() {
        return new au(this);
    }

    public void b() {
        a(false);
        this.a = 0;
        this.b = null;
        this.c = null;
        d(false);
        this.d = 0;
        e(false);
        this.e = 0;
    }

    public long c() {
        return this.a;
    }

    public au a(long j) {
        this.a = j;
        a(true);
        return this;
    }

    public void d() {
        this.q = cg.b(this.q, 0);
    }

    public boolean e() {
        return cg.a(this.q, 0);
    }

    public void a(boolean z) {
        this.q = cg.a(this.q, 0, z);
    }

    public String f() {
        return this.b;
    }

    public au a(String str) {
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

    public int j() {
        return this.c == null ? 0 : this.c.size();
    }

    public void a(String str, String str2) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        this.c.put(str, str2);
    }

    public Map<String, String> k() {
        return this.c;
    }

    public au a(Map<String, String> map) {
        this.c = map;
        return this;
    }

    public void l() {
        this.c = null;
    }

    public boolean m() {
        return this.c != null;
    }

    public void c(boolean z) {
        if (!z) {
            this.c = null;
        }
    }

    public long n() {
        return this.d;
    }

    public au b(long j) {
        this.d = j;
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

    public int q() {
        return this.e;
    }

    public au a(int i) {
        this.e = i;
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
        StringBuilder stringBuilder = new StringBuilder("Ekv(");
        stringBuilder.append("ts:");
        stringBuilder.append(this.a);
        stringBuilder.append(", ");
        stringBuilder.append("name:");
        if (this.b == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.b);
        }
        stringBuilder.append(", ");
        stringBuilder.append("ckv:");
        if (this.c == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.c);
        }
        if (p()) {
            stringBuilder.append(", ");
            stringBuilder.append("duration:");
            stringBuilder.append(this.d);
        }
        if (s()) {
            stringBuilder.append(", ");
            stringBuilder.append("acc:");
            stringBuilder.append(this.e);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void t() throws cp {
        if (this.b == null) {
            throw new dj("Required field 'name' was not present! Struct: " + toString());
        } else if (this.c == null) {
            throw new dj("Required field 'ckv' was not present! Struct: " + toString());
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
