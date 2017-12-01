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

/* compiled from: IdJournal */
public class az implements Serializable, Cloneable, cj<az, e> {
    public static final Map<e, cv> e;
    private static final dn f = new dn("IdJournal");
    private static final dd g = new dd("domain", (byte) 11, (short) 1);
    private static final dd h = new dd("old_id", (byte) 11, (short) 2);
    private static final dd i = new dd("new_id", (byte) 11, (short) 3);
    private static final dd j = new dd("ts", (byte) 10, (short) 4);
    private static final Map<Class<? extends dq>, dr> k = new HashMap();
    private static final int l = 0;
    public String a;
    public String b;
    public String c;
    public long d;
    private byte m;
    private e[] n;

    /* compiled from: IdJournal */
    private static class a extends ds<az> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (az) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (az) cjVar);
        }

        public void a(di diVar, az azVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (azVar.o()) {
                        azVar.p();
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
                        azVar.a = diVar.z();
                        azVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        azVar.b = diVar.z();
                        azVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        azVar.c = diVar.z();
                        azVar.c(true);
                        break;
                    case (short) 4:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        azVar.d = diVar.x();
                        azVar.d(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, az azVar) throws cp {
            azVar.p();
            diVar.a(az.f);
            if (azVar.a != null) {
                diVar.a(az.g);
                diVar.a(azVar.a);
                diVar.c();
            }
            if (azVar.b != null && azVar.i()) {
                diVar.a(az.h);
                diVar.a(azVar.b);
                diVar.c();
            }
            if (azVar.c != null) {
                diVar.a(az.i);
                diVar.a(azVar.c);
                diVar.c();
            }
            diVar.a(az.j);
            diVar.a(azVar.d);
            diVar.c();
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: IdJournal */
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

    /* compiled from: IdJournal */
    private static class c extends dt<az> {
        private c() {
        }

        public void a(di diVar, az azVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(azVar.a);
            doVar.a(azVar.c);
            doVar.a(azVar.d);
            BitSet bitSet = new BitSet();
            if (azVar.i()) {
                bitSet.set(0);
            }
            doVar.a(bitSet, 1);
            if (azVar.i()) {
                doVar.a(azVar.b);
            }
        }

        public void b(di diVar, az azVar) throws cp {
            do doVar = (do) diVar;
            azVar.a = doVar.z();
            azVar.a(true);
            azVar.c = doVar.z();
            azVar.c(true);
            azVar.d = doVar.x();
            azVar.d(true);
            if (doVar.b(1).get(0)) {
                azVar.b = doVar.z();
                azVar.b(true);
            }
        }
    }

    /* compiled from: IdJournal */
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

    /* compiled from: IdJournal */
    public enum e implements cq {
        DOMAIN((short) 1, "domain"),
        OLD_ID((short) 2, "old_id"),
        NEW_ID((short) 3, "new_id"),
        TS((short) 4, "ts");
        
        private static final Map<String, e> e = null;
        private final short f;
        private final String g;

        static {
            e = new HashMap();
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                e.put(eVar.b(), eVar);
            }
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return DOMAIN;
                case 2:
                    return OLD_ID;
                case 3:
                    return NEW_ID;
                case 4:
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
            return (e) e.get(str);
        }

        private e(short s, String str) {
            this.f = s;
            this.g = str;
        }

        public short a() {
            return this.f;
        }

        public String b() {
            return this.g;
        }
    }

    public /* synthetic */ cq b(int i) {
        return a(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        k.put(ds.class, new b());
        k.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.DOMAIN, new cv("domain", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.OLD_ID, new cv("old_id", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.NEW_ID, new cv("new_id", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        e = Collections.unmodifiableMap(enumMap);
        cv.a(az.class, e);
    }

    public az() {
        this.m = (byte) 0;
        this.n = new e[]{e.OLD_ID};
    }

    public az(String str, String str2, long j) {
        this();
        this.a = str;
        this.c = str2;
        this.d = j;
        d(true);
    }

    public az(az azVar) {
        this.m = (byte) 0;
        this.n = new e[]{e.OLD_ID};
        this.m = azVar.m;
        if (azVar.e()) {
            this.a = azVar.a;
        }
        if (azVar.i()) {
            this.b = azVar.b;
        }
        if (azVar.l()) {
            this.c = azVar.c;
        }
        this.d = azVar.d;
    }

    public az a() {
        return new az(this);
    }

    public void b() {
        this.a = null;
        this.b = null;
        this.c = null;
        d(false);
        this.d = 0;
    }

    public String c() {
        return this.a;
    }

    public az a(String str) {
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

    public az b(String str) {
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

    public String j() {
        return this.c;
    }

    public az c(String str) {
        this.c = str;
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

    public long m() {
        return this.d;
    }

    public az a(long j) {
        this.d = j;
        d(true);
        return this;
    }

    public void n() {
        this.m = cg.b(this.m, 0);
    }

    public boolean o() {
        return cg.a(this.m, 0);
    }

    public void d(boolean z) {
        this.m = cg.a(this.m, 0, z);
    }

    public e a(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) k.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) k.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("IdJournal(");
        stringBuilder.append("domain:");
        if (this.a == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.a);
        }
        if (i()) {
            stringBuilder.append(", ");
            stringBuilder.append("old_id:");
            if (this.b == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.b);
            }
        }
        stringBuilder.append(", ");
        stringBuilder.append("new_id:");
        if (this.c == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.c);
        }
        stringBuilder.append(", ");
        stringBuilder.append("ts:");
        stringBuilder.append(this.d);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void p() throws cp {
        if (this.a == null) {
            throw new dj("Required field 'domain' was not present! Struct: " + toString());
        } else if (this.c == null) {
            throw new dj("Required field 'new_id' was not present! Struct: " + toString());
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
            this.m = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
