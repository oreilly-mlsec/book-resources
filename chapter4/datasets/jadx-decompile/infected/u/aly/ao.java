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

/* compiled from: ActivateMsg */
public class ao implements Serializable, Cloneable, cj<ao, e> {
    public static final Map<e, cv> b;
    private static final dn c = new dn("ActivateMsg");
    private static final dd d = new dd("ts", (byte) 10, (short) 1);
    private static final Map<Class<? extends dq>, dr> e = new HashMap();
    private static final int f = 0;
    public long a;
    private byte g;

    /* compiled from: ActivateMsg */
    private static class a extends ds<ao> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (ao) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (ao) cjVar);
        }

        public void a(di diVar, ao aoVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (aoVar.e()) {
                        aoVar.f();
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
                        aoVar.a = diVar.x();
                        aoVar.a(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, ao aoVar) throws cp {
            aoVar.f();
            diVar.a(ao.c);
            diVar.a(ao.d);
            diVar.a(aoVar.a);
            diVar.c();
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: ActivateMsg */
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

    /* compiled from: ActivateMsg */
    private static class c extends dt<ao> {
        private c() {
        }

        public void a(di diVar, ao aoVar) throws cp {
            ((do) diVar).a(aoVar.a);
        }

        public void b(di diVar, ao aoVar) throws cp {
            aoVar.a = ((do) diVar).x();
            aoVar.a(true);
        }
    }

    /* compiled from: ActivateMsg */
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

    /* compiled from: ActivateMsg */
    public enum e implements cq {
        TS((short) 1, "ts");
        
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
        enumMap.put(e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        b = Collections.unmodifiableMap(enumMap);
        cv.a(ao.class, b);
    }

    public ao() {
        this.g = (byte) 0;
    }

    public ao(long j) {
        this();
        this.a = j;
        a(true);
    }

    public ao(ao aoVar) {
        this.g = (byte) 0;
        this.g = aoVar.g;
        this.a = aoVar.a;
    }

    public ao a() {
        return new ao(this);
    }

    public void b() {
        a(false);
        this.a = 0;
    }

    public long c() {
        return this.a;
    }

    public ao a(long j) {
        this.a = j;
        a(true);
        return this;
    }

    public void d() {
        this.g = cg.b(this.g, 0);
    }

    public boolean e() {
        return cg.a(this.g, 0);
    }

    public void a(boolean z) {
        this.g = cg.a(this.g, 0, z);
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
        StringBuilder stringBuilder = new StringBuilder("ActivateMsg(");
        stringBuilder.append("ts:");
        stringBuilder.append(this.a);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void f() throws cp {
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
            this.g = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
