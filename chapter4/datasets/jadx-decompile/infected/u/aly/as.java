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

/* compiled from: ControlPolicy */
public class as implements Serializable, Cloneable, cj<as, e> {
    public static final Map<e, cv> b;
    private static final dn c = new dn("ControlPolicy");
    private static final dd d = new dd("latent", (byte) 12, (short) 1);
    private static final Map<Class<? extends dq>, dr> e = new HashMap();
    public bf a;
    private e[] f;

    /* compiled from: ControlPolicy */
    private static class a extends ds<as> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (as) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (as) cjVar);
        }

        public void a(di diVar, as asVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    asVar.f();
                    return;
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 12) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        asVar.a = new bf();
                        asVar.a.a(diVar);
                        asVar.a(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, as asVar) throws cp {
            asVar.f();
            diVar.a(as.c);
            if (asVar.a != null && asVar.e()) {
                diVar.a(as.d);
                asVar.a.b(diVar);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: ControlPolicy */
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

    /* compiled from: ControlPolicy */
    private static class c extends dt<as> {
        private c() {
        }

        public void a(di diVar, as asVar) throws cp {
            diVar = (do) diVar;
            BitSet bitSet = new BitSet();
            if (asVar.e()) {
                bitSet.set(0);
            }
            diVar.a(bitSet, 1);
            if (asVar.e()) {
                asVar.a.b(diVar);
            }
        }

        public void b(di diVar, as asVar) throws cp {
            diVar = (do) diVar;
            if (diVar.b(1).get(0)) {
                asVar.a = new bf();
                asVar.a.a(diVar);
                asVar.a(true);
            }
        }
    }

    /* compiled from: ControlPolicy */
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

    /* compiled from: ControlPolicy */
    public enum e implements cq {
        LATENT((short) 1, "latent");
        
        private static final Map<String, e> b = null;
        private final short c;
        private final String d;

        static {
            b = new HashMap();
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                b.put(eVar.b(), eVar);
            }
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return LATENT;
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
            return (e) b.get(str);
        }

        private e(short s, String str) {
            this.c = s;
            this.d = str;
        }

        public short a() {
            return this.c;
        }

        public String b() {
            return this.d;
        }
    }

    public /* synthetic */ cq b(int i) {
        return a(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        e.put(ds.class, new b());
        e.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.LATENT, new cv("latent", (byte) 2, new da((byte) 12, bf.class)));
        b = Collections.unmodifiableMap(enumMap);
        cv.a(as.class, b);
    }

    public as() {
        this.f = new e[]{e.LATENT};
    }

    public as(as asVar) {
        this.f = new e[]{e.LATENT};
        if (asVar.e()) {
            this.a = new bf(asVar.a);
        }
    }

    public as a() {
        return new as(this);
    }

    public void b() {
        this.a = null;
    }

    public bf c() {
        return this.a;
    }

    public as a(bf bfVar) {
        this.a = bfVar;
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

    public e a(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) e.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) e.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ControlPolicy(");
        if (e()) {
            stringBuilder.append("latent:");
            if (this.a == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.a);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void f() throws cp {
        if (this.a != null) {
            this.a.j();
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
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
