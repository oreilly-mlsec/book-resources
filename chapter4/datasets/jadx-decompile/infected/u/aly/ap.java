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

/* compiled from: ActiveUser */
public class ap implements Serializable, Cloneable, cj<ap, e> {
    public static final Map<e, cv> c;
    private static final dn d = new dn("ActiveUser");
    private static final dd e = new dd("provider", (byte) 11, (short) 1);
    private static final dd f = new dd("puid", (byte) 11, (short) 2);
    private static final Map<Class<? extends dq>, dr> g = new HashMap();
    public String a;
    public String b;

    /* compiled from: ActiveUser */
    private static class a extends ds<ap> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (ap) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (ap) cjVar);
        }

        public void a(di diVar, ap apVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    apVar.j();
                    return;
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        apVar.a = diVar.z();
                        apVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        apVar.b = diVar.z();
                        apVar.b(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, ap apVar) throws cp {
            apVar.j();
            diVar.a(ap.d);
            if (apVar.a != null) {
                diVar.a(ap.e);
                diVar.a(apVar.a);
                diVar.c();
            }
            if (apVar.b != null) {
                diVar.a(ap.f);
                diVar.a(apVar.b);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: ActiveUser */
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

    /* compiled from: ActiveUser */
    private static class c extends dt<ap> {
        private c() {
        }

        public void a(di diVar, ap apVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(apVar.a);
            doVar.a(apVar.b);
        }

        public void b(di diVar, ap apVar) throws cp {
            do doVar = (do) diVar;
            apVar.a = doVar.z();
            apVar.a(true);
            apVar.b = doVar.z();
            apVar.b(true);
        }
    }

    /* compiled from: ActiveUser */
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

    /* compiled from: ActiveUser */
    public enum e implements cq {
        PROVIDER((short) 1, "provider"),
        PUID((short) 2, "puid");
        
        private static final Map<String, e> c = null;
        private final short d;
        private final String e;

        static {
            c = new HashMap();
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                c.put(eVar.b(), eVar);
            }
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return PROVIDER;
                case 2:
                    return PUID;
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
            return (e) c.get(str);
        }

        private e(short s, String str) {
            this.d = s;
            this.e = str;
        }

        public short a() {
            return this.d;
        }

        public String b() {
            return this.e;
        }
    }

    public /* synthetic */ cq b(int i) {
        return a(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        g.put(ds.class, new b());
        g.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.PROVIDER, new cv("provider", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.PUID, new cv("puid", (byte) 1, new cw((byte) 11)));
        c = Collections.unmodifiableMap(enumMap);
        cv.a(ap.class, c);
    }

    public ap(String str, String str2) {
        this();
        this.a = str;
        this.b = str2;
    }

    public ap(ap apVar) {
        if (apVar.e()) {
            this.a = apVar.a;
        }
        if (apVar.i()) {
            this.b = apVar.b;
        }
    }

    public ap a() {
        return new ap(this);
    }

    public void b() {
        this.a = null;
        this.b = null;
    }

    public String c() {
        return this.a;
    }

    public ap a(String str) {
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

    public String f() {
        return this.b;
    }

    public ap b(String str) {
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

    public e a(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) g.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) g.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ActiveUser(");
        stringBuilder.append("provider:");
        if (this.a == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.a);
        }
        stringBuilder.append(", ");
        stringBuilder.append("puid:");
        if (this.b == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.b);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void j() throws cp {
        if (this.a == null) {
            throw new dj("Required field 'provider' was not present! Struct: " + toString());
        } else if (this.b == null) {
            throw new dj("Required field 'puid' was not present! Struct: " + toString());
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
