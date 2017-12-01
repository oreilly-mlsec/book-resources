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

/* compiled from: ClientStats */
public class ar implements Serializable, Cloneable, cj<ar, e> {
    public static final Map<e, cv> d;
    private static final dn e = new dn("ClientStats");
    private static final dd f = new dd("successful_requests", (byte) 8, (short) 1);
    private static final dd g = new dd("failed_requests", (byte) 8, (short) 2);
    private static final dd h = new dd("last_request_spent_ms", (byte) 8, (short) 3);
    private static final Map<Class<? extends dq>, dr> i = new HashMap();
    private static final int j = 0;
    private static final int k = 1;
    private static final int l = 2;
    public int a;
    public int b;
    public int c;
    private byte m;
    private e[] n;

    /* compiled from: ClientStats */
    private static class a extends ds<ar> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (ar) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (ar) cjVar);
        }

        public void a(di diVar, ar arVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (!arVar.e()) {
                        throw new dj("Required field 'successful_requests' was not found in serialized data! Struct: " + toString());
                    } else if (arVar.i()) {
                        arVar.m();
                        return;
                    } else {
                        throw new dj("Required field 'failed_requests' was not found in serialized data! Struct: " + toString());
                    }
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        arVar.a = diVar.w();
                        arVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        arVar.b = diVar.w();
                        arVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        arVar.c = diVar.w();
                        arVar.c(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, ar arVar) throws cp {
            arVar.m();
            diVar.a(ar.e);
            diVar.a(ar.f);
            diVar.a(arVar.a);
            diVar.c();
            diVar.a(ar.g);
            diVar.a(arVar.b);
            diVar.c();
            if (arVar.l()) {
                diVar.a(ar.h);
                diVar.a(arVar.c);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: ClientStats */
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

    /* compiled from: ClientStats */
    private static class c extends dt<ar> {
        private c() {
        }

        public void a(di diVar, ar arVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(arVar.a);
            doVar.a(arVar.b);
            BitSet bitSet = new BitSet();
            if (arVar.l()) {
                bitSet.set(0);
            }
            doVar.a(bitSet, 1);
            if (arVar.l()) {
                doVar.a(arVar.c);
            }
        }

        public void b(di diVar, ar arVar) throws cp {
            do doVar = (do) diVar;
            arVar.a = doVar.w();
            arVar.a(true);
            arVar.b = doVar.w();
            arVar.b(true);
            if (doVar.b(1).get(0)) {
                arVar.c = doVar.w();
                arVar.c(true);
            }
        }
    }

    /* compiled from: ClientStats */
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

    /* compiled from: ClientStats */
    public enum e implements cq {
        SUCCESSFUL_REQUESTS((short) 1, "successful_requests"),
        FAILED_REQUESTS((short) 2, "failed_requests"),
        LAST_REQUEST_SPENT_MS((short) 3, "last_request_spent_ms");
        
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
                    return SUCCESSFUL_REQUESTS;
                case 2:
                    return FAILED_REQUESTS;
                case 3:
                    return LAST_REQUEST_SPENT_MS;
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
        return e(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        i.put(ds.class, new b());
        i.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.SUCCESSFUL_REQUESTS, new cv("successful_requests", (byte) 1, new cw((byte) 8)));
        enumMap.put(e.FAILED_REQUESTS, new cv("failed_requests", (byte) 1, new cw((byte) 8)));
        enumMap.put(e.LAST_REQUEST_SPENT_MS, new cv("last_request_spent_ms", (byte) 2, new cw((byte) 8)));
        d = Collections.unmodifiableMap(enumMap);
        cv.a(ar.class, d);
    }

    public ar() {
        this.m = (byte) 0;
        this.n = new e[]{e.LAST_REQUEST_SPENT_MS};
        this.a = 0;
        this.b = 0;
    }

    public ar(int i, int i2) {
        this();
        this.a = i;
        a(true);
        this.b = i2;
        b(true);
    }

    public ar(ar arVar) {
        this.m = (byte) 0;
        this.n = new e[]{e.LAST_REQUEST_SPENT_MS};
        this.m = arVar.m;
        this.a = arVar.a;
        this.b = arVar.b;
        this.c = arVar.c;
    }

    public ar a() {
        return new ar(this);
    }

    public void b() {
        this.a = 0;
        this.b = 0;
        c(false);
        this.c = 0;
    }

    public int c() {
        return this.a;
    }

    public ar a(int i) {
        this.a = i;
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

    public int f() {
        return this.b;
    }

    public ar c(int i) {
        this.b = i;
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

    public int j() {
        return this.c;
    }

    public ar d(int i) {
        this.c = i;
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

    public e e(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) i.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) i.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ClientStats(");
        stringBuilder.append("successful_requests:");
        stringBuilder.append(this.a);
        stringBuilder.append(", ");
        stringBuilder.append("failed_requests:");
        stringBuilder.append(this.b);
        if (l()) {
            stringBuilder.append(", ");
            stringBuilder.append("last_request_spent_ms:");
            stringBuilder.append(this.c);
        }
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
