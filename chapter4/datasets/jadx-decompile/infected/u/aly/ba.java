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

/* compiled from: IdSnapshot */
public class ba implements Serializable, Cloneable, cj<ba, e> {
    public static final Map<e, cv> d;
    private static final dn e = new dn("IdSnapshot");
    private static final dd f = new dd("identity", (byte) 11, (short) 1);
    private static final dd g = new dd("ts", (byte) 10, (short) 2);
    private static final dd h = new dd("version", (byte) 8, (short) 3);
    private static final Map<Class<? extends dq>, dr> i = new HashMap();
    private static final int j = 0;
    private static final int k = 1;
    public String a;
    public long b;
    public int c;
    private byte l;

    /* compiled from: IdSnapshot */
    private static class a extends ds<ba> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (ba) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (ba) cjVar);
        }

        public void a(di diVar, ba baVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (!baVar.i()) {
                        throw new dj("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    } else if (baVar.l()) {
                        baVar.m();
                        return;
                    } else {
                        throw new dj("Required field 'version' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        baVar.a = diVar.z();
                        baVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        baVar.b = diVar.x();
                        baVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        baVar.c = diVar.w();
                        baVar.c(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, ba baVar) throws cp {
            baVar.m();
            diVar.a(ba.e);
            if (baVar.a != null) {
                diVar.a(ba.f);
                diVar.a(baVar.a);
                diVar.c();
            }
            diVar.a(ba.g);
            diVar.a(baVar.b);
            diVar.c();
            diVar.a(ba.h);
            diVar.a(baVar.c);
            diVar.c();
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: IdSnapshot */
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

    /* compiled from: IdSnapshot */
    private static class c extends dt<ba> {
        private c() {
        }

        public void a(di diVar, ba baVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(baVar.a);
            doVar.a(baVar.b);
            doVar.a(baVar.c);
        }

        public void b(di diVar, ba baVar) throws cp {
            do doVar = (do) diVar;
            baVar.a = doVar.z();
            baVar.a(true);
            baVar.b = doVar.x();
            baVar.b(true);
            baVar.c = doVar.w();
            baVar.c(true);
        }
    }

    /* compiled from: IdSnapshot */
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

    /* compiled from: IdSnapshot */
    public enum e implements cq {
        IDENTITY((short) 1, "identity"),
        TS((short) 2, "ts"),
        VERSION((short) 3, "version");
        
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
                    return IDENTITY;
                case 2:
                    return TS;
                case 3:
                    return VERSION;
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
        enumMap.put(e.IDENTITY, new cv("identity", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        enumMap.put(e.VERSION, new cv("version", (byte) 1, new cw((byte) 8)));
        d = Collections.unmodifiableMap(enumMap);
        cv.a(ba.class, d);
    }

    public ba() {
        this.l = (byte) 0;
    }

    public ba(String str, long j, int i) {
        this();
        this.a = str;
        this.b = j;
        b(true);
        this.c = i;
        c(true);
    }

    public ba(ba baVar) {
        this.l = (byte) 0;
        this.l = baVar.l;
        if (baVar.e()) {
            this.a = baVar.a;
        }
        this.b = baVar.b;
        this.c = baVar.c;
    }

    public ba a() {
        return new ba(this);
    }

    public void b() {
        this.a = null;
        b(false);
        this.b = 0;
        c(false);
        this.c = 0;
    }

    public String c() {
        return this.a;
    }

    public ba a(String str) {
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

    public ba a(long j) {
        this.b = j;
        b(true);
        return this;
    }

    public void h() {
        this.l = cg.b(this.l, 0);
    }

    public boolean i() {
        return cg.a(this.l, 0);
    }

    public void b(boolean z) {
        this.l = cg.a(this.l, 0, z);
    }

    public int j() {
        return this.c;
    }

    public ba a(int i) {
        this.c = i;
        c(true);
        return this;
    }

    public void k() {
        this.l = cg.b(this.l, 1);
    }

    public boolean l() {
        return cg.a(this.l, 1);
    }

    public void c(boolean z) {
        this.l = cg.a(this.l, 1, z);
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
        StringBuilder stringBuilder = new StringBuilder("IdSnapshot(");
        stringBuilder.append("identity:");
        if (this.a == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.a);
        }
        stringBuilder.append(", ");
        stringBuilder.append("ts:");
        stringBuilder.append(this.b);
        stringBuilder.append(", ");
        stringBuilder.append("version:");
        stringBuilder.append(this.c);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m() throws cp {
        if (this.a == null) {
            throw new dj("Required field 'identity' was not present! Struct: " + toString());
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
            this.l = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
