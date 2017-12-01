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

/* compiled from: ImprintValue */
public class bd implements Serializable, Cloneable, cj<bd, e> {
    public static final Map<e, cv> d;
    private static final dn e = new dn("ImprintValue");
    private static final dd f = new dd("value", (byte) 11, (short) 1);
    private static final dd g = new dd("ts", (byte) 10, (short) 2);
    private static final dd h = new dd("guid", (byte) 11, (short) 3);
    private static final Map<Class<? extends dq>, dr> i = new HashMap();
    private static final int j = 0;
    public String a;
    public long b;
    public String c;
    private byte k;
    private e[] l;

    /* compiled from: ImprintValue */
    private static class a extends ds<bd> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bd) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bd) cjVar);
        }

        public void a(di diVar, bd bdVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    if (bdVar.i()) {
                        bdVar.m();
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
                        bdVar.a = diVar.z();
                        bdVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 10) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bdVar.b = diVar.x();
                        bdVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bdVar.c = diVar.z();
                        bdVar.c(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bd bdVar) throws cp {
            bdVar.m();
            diVar.a(bd.e);
            if (bdVar.a != null && bdVar.e()) {
                diVar.a(bd.f);
                diVar.a(bdVar.a);
                diVar.c();
            }
            diVar.a(bd.g);
            diVar.a(bdVar.b);
            diVar.c();
            if (bdVar.c != null) {
                diVar.a(bd.h);
                diVar.a(bdVar.c);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: ImprintValue */
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

    /* compiled from: ImprintValue */
    private static class c extends dt<bd> {
        private c() {
        }

        public void a(di diVar, bd bdVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(bdVar.b);
            doVar.a(bdVar.c);
            BitSet bitSet = new BitSet();
            if (bdVar.e()) {
                bitSet.set(0);
            }
            doVar.a(bitSet, 1);
            if (bdVar.e()) {
                doVar.a(bdVar.a);
            }
        }

        public void b(di diVar, bd bdVar) throws cp {
            do doVar = (do) diVar;
            bdVar.b = doVar.x();
            bdVar.b(true);
            bdVar.c = doVar.z();
            bdVar.c(true);
            if (doVar.b(1).get(0)) {
                bdVar.a = doVar.z();
                bdVar.a(true);
            }
        }
    }

    /* compiled from: ImprintValue */
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

    /* compiled from: ImprintValue */
    public enum e implements cq {
        VALUE((short) 1, "value"),
        TS((short) 2, "ts"),
        GUID((short) 3, "guid");
        
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
                    return VALUE;
                case 2:
                    return TS;
                case 3:
                    return GUID;
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
        enumMap.put(e.VALUE, new cv("value", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.TS, new cv("ts", (byte) 1, new cw((byte) 10)));
        enumMap.put(e.GUID, new cv("guid", (byte) 1, new cw((byte) 11)));
        d = Collections.unmodifiableMap(enumMap);
        cv.a(bd.class, d);
    }

    public bd() {
        this.k = (byte) 0;
        this.l = new e[]{e.VALUE};
    }

    public bd(long j, String str) {
        this();
        this.b = j;
        b(true);
        this.c = str;
    }

    public bd(bd bdVar) {
        this.k = (byte) 0;
        this.l = new e[]{e.VALUE};
        this.k = bdVar.k;
        if (bdVar.e()) {
            this.a = bdVar.a;
        }
        this.b = bdVar.b;
        if (bdVar.l()) {
            this.c = bdVar.c;
        }
    }

    public bd a() {
        return new bd(this);
    }

    public void b() {
        this.a = null;
        b(false);
        this.b = 0;
        this.c = null;
    }

    public String c() {
        return this.a;
    }

    public bd a(String str) {
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

    public bd a(long j) {
        this.b = j;
        b(true);
        return this;
    }

    public void h() {
        this.k = cg.b(this.k, 0);
    }

    public boolean i() {
        return cg.a(this.k, 0);
    }

    public void b(boolean z) {
        this.k = cg.a(this.k, 0, z);
    }

    public String j() {
        return this.c;
    }

    public bd b(String str) {
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
        StringBuilder stringBuilder = new StringBuilder("ImprintValue(");
        Object obj = 1;
        if (e()) {
            stringBuilder.append("value:");
            if (this.a == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.a);
            }
            obj = null;
        }
        if (obj == null) {
            stringBuilder.append(", ");
        }
        stringBuilder.append("ts:");
        stringBuilder.append(this.b);
        stringBuilder.append(", ");
        stringBuilder.append("guid:");
        if (this.c == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.c);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void m() throws cp {
        if (this.c == null) {
            throw new dj("Required field 'guid' was not present! Struct: " + toString());
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
