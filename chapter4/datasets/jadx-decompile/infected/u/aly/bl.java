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

/* compiled from: Response */
public class bl implements Serializable, Cloneable, cj<bl, e> {
    public static final Map<e, cv> d;
    private static final dn e = new dn("Response");
    private static final dd f = new dd("resp_code", (byte) 8, (short) 1);
    private static final dd g = new dd("msg", (byte) 11, (short) 2);
    private static final dd h = new dd("imprint", (byte) 12, (short) 3);
    private static final Map<Class<? extends dq>, dr> i = new HashMap();
    private static final int j = 0;
    public int a;
    public String b;
    public bc c;
    private byte k;
    private e[] l;

    /* compiled from: Response */
    private static class a extends ds<bl> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bl) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bl) cjVar);
        }

        public void a(di diVar, bl blVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (blVar.e()) {
                        blVar.m();
                        return;
                    }
                    throw new dj("Required field 'resp_code' was not found in serialized data! Struct: " + toString());
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        blVar.a = diVar.w();
                        blVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        blVar.b = diVar.z();
                        blVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 12) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        blVar.c = new bc();
                        blVar.c.a(diVar);
                        blVar.c(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bl blVar) throws cp {
            blVar.m();
            diVar.a(bl.e);
            diVar.a(bl.f);
            diVar.a(blVar.a);
            diVar.c();
            if (blVar.b != null && blVar.i()) {
                diVar.a(bl.g);
                diVar.a(blVar.b);
                diVar.c();
            }
            if (blVar.c != null && blVar.l()) {
                diVar.a(bl.h);
                blVar.c.b(diVar);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: Response */
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

    /* compiled from: Response */
    private static class c extends dt<bl> {
        private c() {
        }

        public void a(di diVar, bl blVar) throws cp {
            diVar = (do) diVar;
            diVar.a(blVar.a);
            BitSet bitSet = new BitSet();
            if (blVar.i()) {
                bitSet.set(0);
            }
            if (blVar.l()) {
                bitSet.set(1);
            }
            diVar.a(bitSet, 2);
            if (blVar.i()) {
                diVar.a(blVar.b);
            }
            if (blVar.l()) {
                blVar.c.b(diVar);
            }
        }

        public void b(di diVar, bl blVar) throws cp {
            diVar = (do) diVar;
            blVar.a = diVar.w();
            blVar.a(true);
            BitSet b = diVar.b(2);
            if (b.get(0)) {
                blVar.b = diVar.z();
                blVar.b(true);
            }
            if (b.get(1)) {
                blVar.c = new bc();
                blVar.c.a(diVar);
                blVar.c(true);
            }
        }
    }

    /* compiled from: Response */
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

    /* compiled from: Response */
    public enum e implements cq {
        RESP_CODE((short) 1, "resp_code"),
        MSG((short) 2, "msg"),
        IMPRINT((short) 3, "imprint");
        
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
                    return RESP_CODE;
                case 2:
                    return MSG;
                case 3:
                    return IMPRINT;
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
        return c(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        i.put(ds.class, new b());
        i.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.RESP_CODE, new cv("resp_code", (byte) 1, new cw((byte) 8)));
        enumMap.put(e.MSG, new cv("msg", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.IMPRINT, new cv("imprint", (byte) 2, new da((byte) 12, bc.class)));
        d = Collections.unmodifiableMap(enumMap);
        cv.a(bl.class, d);
    }

    public bl() {
        this.k = (byte) 0;
        this.l = new e[]{e.MSG, e.IMPRINT};
    }

    public bl(int i) {
        this();
        this.a = i;
        a(true);
    }

    public bl(bl blVar) {
        this.k = (byte) 0;
        this.l = new e[]{e.MSG, e.IMPRINT};
        this.k = blVar.k;
        this.a = blVar.a;
        if (blVar.i()) {
            this.b = blVar.b;
        }
        if (blVar.l()) {
            this.c = new bc(blVar.c);
        }
    }

    public bl a() {
        return new bl(this);
    }

    public void b() {
        a(false);
        this.a = 0;
        this.b = null;
        this.c = null;
    }

    public int c() {
        return this.a;
    }

    public bl a(int i) {
        this.a = i;
        a(true);
        return this;
    }

    public void d() {
        this.k = cg.b(this.k, 0);
    }

    public boolean e() {
        return cg.a(this.k, 0);
    }

    public void a(boolean z) {
        this.k = cg.a(this.k, 0, z);
    }

    public String f() {
        return this.b;
    }

    public bl a(String str) {
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

    public bc j() {
        return this.c;
    }

    public bl a(bc bcVar) {
        this.c = bcVar;
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

    public e c(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) i.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) i.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("Response(");
        stringBuilder.append("resp_code:");
        stringBuilder.append(this.a);
        if (i()) {
            stringBuilder.append(", ");
            stringBuilder.append("msg:");
            if (this.b == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.b);
            }
        }
        if (l()) {
            stringBuilder.append(", ");
            stringBuilder.append("imprint:");
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
        if (this.c != null) {
            this.c.n();
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
