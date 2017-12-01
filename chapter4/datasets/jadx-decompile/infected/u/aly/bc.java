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
import java.util.Map.Entry;

/* compiled from: Imprint */
public class bc implements Serializable, Cloneable, cj<bc, e> {
    public static final Map<e, cv> d;
    private static final dn e = new dn("Imprint");
    private static final dd f = new dd("property", dp.k, (short) 1);
    private static final dd g = new dd("version", (byte) 8, (short) 2);
    private static final dd h = new dd("checksum", (byte) 11, (short) 3);
    private static final Map<Class<? extends dq>, dr> i = new HashMap();
    private static final int j = 0;
    public Map<String, bd> a;
    public int b;
    public String c;
    private byte k;

    /* compiled from: Imprint */
    private static class a extends ds<bc> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bc) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bc) cjVar);
        }

        public void a(di diVar, bc bcVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (bcVar.j()) {
                        bcVar.n();
                        return;
                    }
                    throw new dj("Required field 'version' was not found in serialized data! Struct: " + toString());
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != dp.k) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        df n = diVar.n();
                        bcVar.a = new HashMap(n.c * 2);
                        for (int i = 0; i < n.c; i++) {
                            String z = diVar.z();
                            bd bdVar = new bd();
                            bdVar.a(diVar);
                            bcVar.a.put(z, bdVar);
                        }
                        diVar.o();
                        bcVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bcVar.b = diVar.w();
                        bcVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bcVar.c = diVar.z();
                        bcVar.c(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bc bcVar) throws cp {
            bcVar.n();
            diVar.a(bc.e);
            if (bcVar.a != null) {
                diVar.a(bc.f);
                diVar.a(new df((byte) 11, (byte) 12, bcVar.a.size()));
                for (Entry entry : bcVar.a.entrySet()) {
                    diVar.a((String) entry.getKey());
                    ((bd) entry.getValue()).b(diVar);
                }
                diVar.e();
                diVar.c();
            }
            diVar.a(bc.g);
            diVar.a(bcVar.b);
            diVar.c();
            if (bcVar.c != null) {
                diVar.a(bc.h);
                diVar.a(bcVar.c);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: Imprint */
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

    /* compiled from: Imprint */
    private static class c extends dt<bc> {
        private c() {
        }

        public void a(di diVar, bc bcVar) throws cp {
            diVar = (do) diVar;
            diVar.a(bcVar.a.size());
            for (Entry entry : bcVar.a.entrySet()) {
                diVar.a((String) entry.getKey());
                ((bd) entry.getValue()).b(diVar);
            }
            diVar.a(bcVar.b);
            diVar.a(bcVar.c);
        }

        public void b(di diVar, bc bcVar) throws cp {
            diVar = (do) diVar;
            df dfVar = new df((byte) 11, (byte) 12, diVar.w());
            bcVar.a = new HashMap(dfVar.c * 2);
            for (int i = 0; i < dfVar.c; i++) {
                String z = diVar.z();
                bd bdVar = new bd();
                bdVar.a(diVar);
                bcVar.a.put(z, bdVar);
            }
            bcVar.a(true);
            bcVar.b = diVar.w();
            bcVar.b(true);
            bcVar.c = diVar.z();
            bcVar.c(true);
        }
    }

    /* compiled from: Imprint */
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

    /* compiled from: Imprint */
    public enum e implements cq {
        PROPERTY((short) 1, "property"),
        VERSION((short) 2, "version"),
        CHECKSUM((short) 3, "checksum");
        
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
                    return PROPERTY;
                case 2:
                    return VERSION;
                case 3:
                    return CHECKSUM;
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
        enumMap.put(e.PROPERTY, new cv("property", (byte) 1, new cy(dp.k, new cw((byte) 11), new da((byte) 12, bd.class))));
        enumMap.put(e.VERSION, new cv("version", (byte) 1, new cw((byte) 8)));
        enumMap.put(e.CHECKSUM, new cv("checksum", (byte) 1, new cw((byte) 11)));
        d = Collections.unmodifiableMap(enumMap);
        cv.a(bc.class, d);
    }

    public bc() {
        this.k = (byte) 0;
    }

    public bc(Map<String, bd> map, int i, String str) {
        this();
        this.a = map;
        this.b = i;
        b(true);
        this.c = str;
    }

    public bc(bc bcVar) {
        this.k = (byte) 0;
        this.k = bcVar.k;
        if (bcVar.f()) {
            Map hashMap = new HashMap();
            for (Entry entry : bcVar.a.entrySet()) {
                hashMap.put((String) entry.getKey(), new bd((bd) entry.getValue()));
            }
            this.a = hashMap;
        }
        this.b = bcVar.b;
        if (bcVar.m()) {
            this.c = bcVar.c;
        }
    }

    public bc a() {
        return new bc(this);
    }

    public void b() {
        this.a = null;
        b(false);
        this.b = 0;
        this.c = null;
    }

    public int c() {
        return this.a == null ? 0 : this.a.size();
    }

    public void a(String str, bd bdVar) {
        if (this.a == null) {
            this.a = new HashMap();
        }
        this.a.put(str, bdVar);
    }

    public Map<String, bd> d() {
        return this.a;
    }

    public bc a(Map<String, bd> map) {
        this.a = map;
        return this;
    }

    public void e() {
        this.a = null;
    }

    public boolean f() {
        return this.a != null;
    }

    public void a(boolean z) {
        if (!z) {
            this.a = null;
        }
    }

    public int h() {
        return this.b;
    }

    public bc a(int i) {
        this.b = i;
        b(true);
        return this;
    }

    public void i() {
        this.k = cg.b(this.k, 0);
    }

    public boolean j() {
        return cg.a(this.k, 0);
    }

    public void b(boolean z) {
        this.k = cg.a(this.k, 0, z);
    }

    public String k() {
        return this.c;
    }

    public bc a(String str) {
        this.c = str;
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
        StringBuilder stringBuilder = new StringBuilder("Imprint(");
        stringBuilder.append("property:");
        if (this.a == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.a);
        }
        stringBuilder.append(", ");
        stringBuilder.append("version:");
        stringBuilder.append(this.b);
        stringBuilder.append(", ");
        stringBuilder.append("checksum:");
        if (this.c == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.c);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void n() throws cp {
        if (this.a == null) {
            throw new dj("Required field 'property' was not present! Struct: " + toString());
        } else if (this.c == null) {
            throw new dj("Required field 'checksum' was not present! Struct: " + toString());
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
