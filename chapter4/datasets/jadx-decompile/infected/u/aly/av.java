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

/* compiled from: Error */
public class av implements Serializable, Cloneable, cj<av, e> {
    public static final Map<e, cv> d;
    private static final dn e = new dn("Error");
    private static final dd f = new dd("ts", (byte) 10, (short) 1);
    private static final dd g = new dd("context", (byte) 11, (short) 2);
    private static final dd h = new dd("source", (byte) 8, (short) 3);
    private static final Map<Class<? extends dq>, dr> i = new HashMap();
    private static final int j = 0;
    public long a;
    public String b;
    public aw c;
    private byte k;
    private e[] l;

    /* compiled from: Error */
    private static class a extends ds<av> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (av) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (av) cjVar);
        }

        public void a(di diVar, av avVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (avVar.e()) {
                        avVar.m();
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
                        avVar.a = diVar.x();
                        avVar.b(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        avVar.b = diVar.z();
                        avVar.c(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        avVar.c = aw.a(diVar.w());
                        avVar.d(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, av avVar) throws cp {
            avVar.m();
            diVar.a(av.e);
            diVar.a(av.f);
            diVar.a(avVar.a);
            diVar.c();
            if (avVar.b != null) {
                diVar.a(av.g);
                diVar.a(avVar.b);
                diVar.c();
            }
            if (avVar.c != null && avVar.l()) {
                diVar.a(av.h);
                diVar.a(avVar.c.a());
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: Error */
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

    /* compiled from: Error */
    private static class c extends dt<av> {
        private c() {
        }

        public void a(di diVar, av avVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(avVar.a);
            doVar.a(avVar.b);
            BitSet bitSet = new BitSet();
            if (avVar.l()) {
                bitSet.set(0);
            }
            doVar.a(bitSet, 1);
            if (avVar.l()) {
                doVar.a(avVar.c.a());
            }
        }

        public void b(di diVar, av avVar) throws cp {
            do doVar = (do) diVar;
            avVar.a = doVar.x();
            avVar.b(true);
            avVar.b = doVar.z();
            avVar.c(true);
            if (doVar.b(1).get(0)) {
                avVar.c = aw.a(doVar.w());
                avVar.d(true);
            }
        }
    }

    /* compiled from: Error */
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

    /* compiled from: Error */
    public enum e implements cq {
        TS((short) 1, "ts"),
        CONTEXT((short) 2, "context"),
        SOURCE((short) 3, "source");
        
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
                    return TS;
                case 2:
                    return CONTEXT;
                case 3:
                    return SOURCE;
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
        enumMap.put(e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        enumMap.put(e.CONTEXT, new cv("context", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.SOURCE, new cv("source", (byte) 2, new cu(dp.n, aw.class)));
        d = Collections.unmodifiableMap(enumMap);
        cv.a(av.class, d);
    }

    public av() {
        this.k = (byte) 0;
        this.l = new e[]{e.SOURCE};
    }

    public av(long j, String str) {
        this();
        this.a = j;
        b(true);
        this.b = str;
    }

    public av(av avVar) {
        this.k = (byte) 0;
        this.l = new e[]{e.SOURCE};
        this.k = avVar.k;
        this.a = avVar.a;
        if (avVar.i()) {
            this.b = avVar.b;
        }
        if (avVar.l()) {
            this.c = avVar.c;
        }
    }

    public av a() {
        return new av(this);
    }

    public void b() {
        b(false);
        this.a = 0;
        this.b = null;
        this.c = null;
    }

    public long c() {
        return this.a;
    }

    public av a(long j) {
        this.a = j;
        b(true);
        return this;
    }

    public void d() {
        this.k = cg.b(this.k, 0);
    }

    public boolean e() {
        return cg.a(this.k, 0);
    }

    public void b(boolean z) {
        this.k = cg.a(this.k, 0, z);
    }

    public String f() {
        return this.b;
    }

    public av a(String str) {
        this.b = str;
        return this;
    }

    public void h() {
        this.b = null;
    }

    public boolean i() {
        return this.b != null;
    }

    public void c(boolean z) {
        if (!z) {
            this.b = null;
        }
    }

    public aw j() {
        return this.c;
    }

    public av a(aw awVar) {
        this.c = awVar;
        return this;
    }

    public void k() {
        this.c = null;
    }

    public boolean l() {
        return this.c != null;
    }

    public void d(boolean z) {
        if (!z) {
            this.c = null;
        }
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
        StringBuilder stringBuilder = new StringBuilder("Error(");
        stringBuilder.append("ts:");
        stringBuilder.append(this.a);
        stringBuilder.append(", ");
        stringBuilder.append("context:");
        if (this.b == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.b);
        }
        if (l()) {
            stringBuilder.append(", ");
            stringBuilder.append("source:");
            if (this.c == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.c);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m() throws cp {
        if (this.b == null) {
            throw new dj("Required field 'context' was not present! Struct: " + toString());
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
            this.k = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
