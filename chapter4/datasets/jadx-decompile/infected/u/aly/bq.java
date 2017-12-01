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

/* compiled from: UserInfo */
public class bq implements Serializable, Cloneable, cj<bq, e> {
    public static final Map<e, cv> e;
    private static final dn f = new dn("UserInfo");
    private static final dd g = new dd("gender", (byte) 8, (short) 1);
    private static final dd h = new dd("age", (byte) 8, (short) 2);
    private static final dd i = new dd("id", (byte) 11, (short) 3);
    private static final dd j = new dd("source", (byte) 11, (short) 4);
    private static final Map<Class<? extends dq>, dr> k = new HashMap();
    private static final int l = 0;
    public ay a;
    public int b;
    public String c;
    public String d;
    private byte m;
    private e[] n;

    /* compiled from: UserInfo */
    private static class a extends ds<bq> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bq) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bq) cjVar);
        }

        public void a(di diVar, bq bqVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    bqVar.p();
                    return;
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bqVar.a = ay.a(diVar.w());
                        bqVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bqVar.b = diVar.w();
                        bqVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bqVar.c = diVar.z();
                        bqVar.c(true);
                        break;
                    case (short) 4:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bqVar.d = diVar.z();
                        bqVar.d(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bq bqVar) throws cp {
            bqVar.p();
            diVar.a(bq.f);
            if (bqVar.a != null && bqVar.e()) {
                diVar.a(bq.g);
                diVar.a(bqVar.a.a());
                diVar.c();
            }
            if (bqVar.i()) {
                diVar.a(bq.h);
                diVar.a(bqVar.b);
                diVar.c();
            }
            if (bqVar.c != null && bqVar.l()) {
                diVar.a(bq.i);
                diVar.a(bqVar.c);
                diVar.c();
            }
            if (bqVar.d != null && bqVar.o()) {
                diVar.a(bq.j);
                diVar.a(bqVar.d);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: UserInfo */
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

    /* compiled from: UserInfo */
    private static class c extends dt<bq> {
        private c() {
        }

        public void a(di diVar, bq bqVar) throws cp {
            do doVar = (do) diVar;
            BitSet bitSet = new BitSet();
            if (bqVar.e()) {
                bitSet.set(0);
            }
            if (bqVar.i()) {
                bitSet.set(1);
            }
            if (bqVar.l()) {
                bitSet.set(2);
            }
            if (bqVar.o()) {
                bitSet.set(3);
            }
            doVar.a(bitSet, 4);
            if (bqVar.e()) {
                doVar.a(bqVar.a.a());
            }
            if (bqVar.i()) {
                doVar.a(bqVar.b);
            }
            if (bqVar.l()) {
                doVar.a(bqVar.c);
            }
            if (bqVar.o()) {
                doVar.a(bqVar.d);
            }
        }

        public void b(di diVar, bq bqVar) throws cp {
            do doVar = (do) diVar;
            BitSet b = doVar.b(4);
            if (b.get(0)) {
                bqVar.a = ay.a(doVar.w());
                bqVar.a(true);
            }
            if (b.get(1)) {
                bqVar.b = doVar.w();
                bqVar.b(true);
            }
            if (b.get(2)) {
                bqVar.c = doVar.z();
                bqVar.c(true);
            }
            if (b.get(3)) {
                bqVar.d = doVar.z();
                bqVar.d(true);
            }
        }
    }

    /* compiled from: UserInfo */
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

    /* compiled from: UserInfo */
    public enum e implements cq {
        GENDER((short) 1, "gender"),
        AGE((short) 2, "age"),
        ID((short) 3, "id"),
        SOURCE((short) 4, "source");
        
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
                    return GENDER;
                case 2:
                    return AGE;
                case 3:
                    return ID;
                case 4:
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
        return c(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        k.put(ds.class, new b());
        k.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.GENDER, new cv("gender", (byte) 2, new cu(dp.n, ay.class)));
        enumMap.put(e.AGE, new cv("age", (byte) 2, new cw((byte) 8)));
        enumMap.put(e.ID, new cv("id", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.SOURCE, new cv("source", (byte) 2, new cw((byte) 11)));
        e = Collections.unmodifiableMap(enumMap);
        cv.a(bq.class, e);
    }

    public bq() {
        this.m = (byte) 0;
        this.n = new e[]{e.GENDER, e.AGE, e.ID, e.SOURCE};
    }

    public bq(bq bqVar) {
        this.m = (byte) 0;
        this.n = new e[]{e.GENDER, e.AGE, e.ID, e.SOURCE};
        this.m = bqVar.m;
        if (bqVar.e()) {
            this.a = bqVar.a;
        }
        this.b = bqVar.b;
        if (bqVar.l()) {
            this.c = bqVar.c;
        }
        if (bqVar.o()) {
            this.d = bqVar.d;
        }
    }

    public bq a() {
        return new bq(this);
    }

    public void b() {
        this.a = null;
        b(false);
        this.b = 0;
        this.c = null;
        this.d = null;
    }

    public ay c() {
        return this.a;
    }

    public bq a(ay ayVar) {
        this.a = ayVar;
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

    public int f() {
        return this.b;
    }

    public bq a(int i) {
        this.b = i;
        b(true);
        return this;
    }

    public void h() {
        this.m = cg.b(this.m, 0);
    }

    public boolean i() {
        return cg.a(this.m, 0);
    }

    public void b(boolean z) {
        this.m = cg.a(this.m, 0, z);
    }

    public String j() {
        return this.c;
    }

    public bq a(String str) {
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

    public String m() {
        return this.d;
    }

    public bq b(String str) {
        this.d = str;
        return this;
    }

    public void n() {
        this.d = null;
    }

    public boolean o() {
        return this.d != null;
    }

    public void d(boolean z) {
        if (!z) {
            this.d = null;
        }
    }

    public e c(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) k.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) k.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        Object obj = null;
        StringBuilder stringBuilder = new StringBuilder("UserInfo(");
        Object obj2 = 1;
        if (e()) {
            stringBuilder.append("gender:");
            if (this.a == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.a);
            }
            obj2 = null;
        }
        if (i()) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("age:");
            stringBuilder.append(this.b);
            obj2 = null;
        }
        if (l()) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("id:");
            if (this.c == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.c);
            }
        } else {
            obj = obj2;
        }
        if (o()) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("source:");
            if (this.d == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.d);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void p() throws cp {
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
