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

/* compiled from: AppInfo */
public class aq implements Serializable, Cloneable, cj<aq, e> {
    public static final Map<e, cv> k;
    private static final dn l = new dn("AppInfo");
    private static final dd m = new dd("key", (byte) 11, (short) 1);
    private static final dd n = new dd("version", (byte) 11, (short) 2);
    private static final dd o = new dd("version_index", (byte) 8, (short) 3);
    private static final dd p = new dd("package_name", (byte) 11, (short) 4);
    private static final dd q = new dd("sdk_type", (byte) 8, (short) 5);
    private static final dd r = new dd("sdk_version", (byte) 11, (short) 6);
    private static final dd s = new dd("channel", (byte) 11, (short) 7);
    private static final dd t = new dd("wrapper_type", (byte) 11, (short) 8);
    private static final dd u = new dd("wrapper_version", (byte) 11, (short) 9);
    private static final dd v = new dd("vertical_type", (byte) 8, (short) 10);
    private static final Map<Class<? extends dq>, dr> w = new HashMap();
    private static final int x = 0;
    private static final int y = 1;
    private e[] A;
    public String a;
    public String b;
    public int c;
    public String d;
    public bm e;
    public String f;
    public String g;
    public String h;
    public String i;
    public int j;
    private byte z;

    /* compiled from: AppInfo */
    private static class a extends ds<aq> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (aq) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (aq) cjVar);
        }

        public void a(di diVar, aq aqVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    aqVar.H();
                    return;
                }
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        aqVar.a = diVar.z();
                        aqVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        aqVar.b = diVar.z();
                        aqVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        aqVar.c = diVar.w();
                        aqVar.c(true);
                        break;
                    case (short) 4:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        aqVar.d = diVar.z();
                        aqVar.d(true);
                        break;
                    case (short) 5:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        aqVar.e = bm.a(diVar.w());
                        aqVar.e(true);
                        break;
                    case (short) 6:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        aqVar.f = diVar.z();
                        aqVar.f(true);
                        break;
                    case ci.h /*7*/:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        aqVar.g = diVar.z();
                        aqVar.g(true);
                        break;
                    case (short) 8:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        aqVar.h = diVar.z();
                        aqVar.h(true);
                        break;
                    case (short) 9:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        aqVar.i = diVar.z();
                        aqVar.i(true);
                        break;
                    case (short) 10:
                        if (l.b != (byte) 8) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        aqVar.j = diVar.w();
                        aqVar.j(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, aq aqVar) throws cp {
            aqVar.H();
            diVar.a(aq.l);
            if (aqVar.a != null) {
                diVar.a(aq.m);
                diVar.a(aqVar.a);
                diVar.c();
            }
            if (aqVar.b != null && aqVar.i()) {
                diVar.a(aq.n);
                diVar.a(aqVar.b);
                diVar.c();
            }
            if (aqVar.l()) {
                diVar.a(aq.o);
                diVar.a(aqVar.c);
                diVar.c();
            }
            if (aqVar.d != null && aqVar.o()) {
                diVar.a(aq.p);
                diVar.a(aqVar.d);
                diVar.c();
            }
            if (aqVar.e != null) {
                diVar.a(aq.q);
                diVar.a(aqVar.e.a());
                diVar.c();
            }
            if (aqVar.f != null) {
                diVar.a(aq.r);
                diVar.a(aqVar.f);
                diVar.c();
            }
            if (aqVar.g != null) {
                diVar.a(aq.s);
                diVar.a(aqVar.g);
                diVar.c();
            }
            if (aqVar.h != null && aqVar.A()) {
                diVar.a(aq.t);
                diVar.a(aqVar.h);
                diVar.c();
            }
            if (aqVar.i != null && aqVar.D()) {
                diVar.a(aq.u);
                diVar.a(aqVar.i);
                diVar.c();
            }
            if (aqVar.G()) {
                diVar.a(aq.v);
                diVar.a(aqVar.j);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: AppInfo */
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

    /* compiled from: AppInfo */
    private static class c extends dt<aq> {
        private c() {
        }

        public void a(di diVar, aq aqVar) throws cp {
            do doVar = (do) diVar;
            doVar.a(aqVar.a);
            doVar.a(aqVar.e.a());
            doVar.a(aqVar.f);
            doVar.a(aqVar.g);
            BitSet bitSet = new BitSet();
            if (aqVar.i()) {
                bitSet.set(0);
            }
            if (aqVar.l()) {
                bitSet.set(1);
            }
            if (aqVar.o()) {
                bitSet.set(2);
            }
            if (aqVar.A()) {
                bitSet.set(3);
            }
            if (aqVar.D()) {
                bitSet.set(4);
            }
            if (aqVar.G()) {
                bitSet.set(5);
            }
            doVar.a(bitSet, 6);
            if (aqVar.i()) {
                doVar.a(aqVar.b);
            }
            if (aqVar.l()) {
                doVar.a(aqVar.c);
            }
            if (aqVar.o()) {
                doVar.a(aqVar.d);
            }
            if (aqVar.A()) {
                doVar.a(aqVar.h);
            }
            if (aqVar.D()) {
                doVar.a(aqVar.i);
            }
            if (aqVar.G()) {
                doVar.a(aqVar.j);
            }
        }

        public void b(di diVar, aq aqVar) throws cp {
            do doVar = (do) diVar;
            aqVar.a = doVar.z();
            aqVar.a(true);
            aqVar.e = bm.a(doVar.w());
            aqVar.e(true);
            aqVar.f = doVar.z();
            aqVar.f(true);
            aqVar.g = doVar.z();
            aqVar.g(true);
            BitSet b = doVar.b(6);
            if (b.get(0)) {
                aqVar.b = doVar.z();
                aqVar.b(true);
            }
            if (b.get(1)) {
                aqVar.c = doVar.w();
                aqVar.c(true);
            }
            if (b.get(2)) {
                aqVar.d = doVar.z();
                aqVar.d(true);
            }
            if (b.get(3)) {
                aqVar.h = doVar.z();
                aqVar.h(true);
            }
            if (b.get(4)) {
                aqVar.i = doVar.z();
                aqVar.i(true);
            }
            if (b.get(5)) {
                aqVar.j = doVar.w();
                aqVar.j(true);
            }
        }
    }

    /* compiled from: AppInfo */
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

    /* compiled from: AppInfo */
    public enum e implements cq {
        KEY((short) 1, "key"),
        VERSION((short) 2, "version"),
        VERSION_INDEX((short) 3, "version_index"),
        PACKAGE_NAME((short) 4, "package_name"),
        SDK_TYPE((short) 5, "sdk_type"),
        SDK_VERSION((short) 6, "sdk_version"),
        CHANNEL((short) 7, "channel"),
        WRAPPER_TYPE((short) 8, "wrapper_type"),
        WRAPPER_VERSION((short) 9, "wrapper_version"),
        VERTICAL_TYPE((short) 10, "vertical_type");
        
        private static final Map<String, e> k = null;
        private final short l;
        private final String m;

        static {
            k = new HashMap();
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                k.put(eVar.b(), eVar);
            }
        }

        public static e a(int i) {
            switch (i) {
                case 1:
                    return KEY;
                case 2:
                    return VERSION;
                case 3:
                    return VERSION_INDEX;
                case 4:
                    return PACKAGE_NAME;
                case 5:
                    return SDK_TYPE;
                case 6:
                    return SDK_VERSION;
                case ci.h /*7*/:
                    return CHANNEL;
                case 8:
                    return WRAPPER_TYPE;
                case 9:
                    return WRAPPER_VERSION;
                case 10:
                    return VERTICAL_TYPE;
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
            return (e) k.get(str);
        }

        private e(short s, String str) {
            this.l = s;
            this.m = str;
        }

        public short a() {
            return this.l;
        }

        public String b() {
            return this.m;
        }
    }

    public /* synthetic */ cq b(int i) {
        return d(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        w.put(ds.class, new b());
        w.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.KEY, new cv("key", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.VERSION, new cv("version", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.VERSION_INDEX, new cv("version_index", (byte) 2, new cw((byte) 8)));
        enumMap.put(e.PACKAGE_NAME, new cv("package_name", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.SDK_TYPE, new cv("sdk_type", (byte) 1, new cu(dp.n, bm.class)));
        enumMap.put(e.SDK_VERSION, new cv("sdk_version", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.CHANNEL, new cv("channel", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.WRAPPER_TYPE, new cv("wrapper_type", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.WRAPPER_VERSION, new cv("wrapper_version", (byte) 2, new cw((byte) 11)));
        enumMap.put(e.VERTICAL_TYPE, new cv("vertical_type", (byte) 2, new cw((byte) 8)));
        k = Collections.unmodifiableMap(enumMap);
        cv.a(aq.class, k);
    }

    public aq() {
        this.z = (byte) 0;
        this.A = new e[]{e.VERSION, e.VERSION_INDEX, e.PACKAGE_NAME, e.WRAPPER_TYPE, e.WRAPPER_VERSION, e.VERTICAL_TYPE};
    }

    public aq(String str, bm bmVar, String str2, String str3) {
        this();
        this.a = str;
        this.e = bmVar;
        this.f = str2;
        this.g = str3;
    }

    public aq(aq aqVar) {
        this.z = (byte) 0;
        this.A = new e[]{e.VERSION, e.VERSION_INDEX, e.PACKAGE_NAME, e.WRAPPER_TYPE, e.WRAPPER_VERSION, e.VERTICAL_TYPE};
        this.z = aqVar.z;
        if (aqVar.e()) {
            this.a = aqVar.a;
        }
        if (aqVar.i()) {
            this.b = aqVar.b;
        }
        this.c = aqVar.c;
        if (aqVar.o()) {
            this.d = aqVar.d;
        }
        if (aqVar.r()) {
            this.e = aqVar.e;
        }
        if (aqVar.u()) {
            this.f = aqVar.f;
        }
        if (aqVar.x()) {
            this.g = aqVar.g;
        }
        if (aqVar.A()) {
            this.h = aqVar.h;
        }
        if (aqVar.D()) {
            this.i = aqVar.i;
        }
        this.j = aqVar.j;
    }

    public aq a() {
        return new aq(this);
    }

    public void b() {
        this.a = null;
        this.b = null;
        c(false);
        this.c = 0;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        j(false);
        this.j = 0;
    }

    public String c() {
        return this.a;
    }

    public aq a(String str) {
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

    public aq b(String str) {
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

    public int j() {
        return this.c;
    }

    public aq a(int i) {
        this.c = i;
        c(true);
        return this;
    }

    public void k() {
        this.z = cg.b(this.z, 0);
    }

    public boolean l() {
        return cg.a(this.z, 0);
    }

    public void c(boolean z) {
        this.z = cg.a(this.z, 0, z);
    }

    public String m() {
        return this.d;
    }

    public aq c(String str) {
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

    public bm p() {
        return this.e;
    }

    public aq a(bm bmVar) {
        this.e = bmVar;
        return this;
    }

    public void q() {
        this.e = null;
    }

    public boolean r() {
        return this.e != null;
    }

    public void e(boolean z) {
        if (!z) {
            this.e = null;
        }
    }

    public String s() {
        return this.f;
    }

    public aq d(String str) {
        this.f = str;
        return this;
    }

    public void t() {
        this.f = null;
    }

    public boolean u() {
        return this.f != null;
    }

    public void f(boolean z) {
        if (!z) {
            this.f = null;
        }
    }

    public String v() {
        return this.g;
    }

    public aq e(String str) {
        this.g = str;
        return this;
    }

    public void w() {
        this.g = null;
    }

    public boolean x() {
        return this.g != null;
    }

    public void g(boolean z) {
        if (!z) {
            this.g = null;
        }
    }

    public String y() {
        return this.h;
    }

    public aq f(String str) {
        this.h = str;
        return this;
    }

    public void z() {
        this.h = null;
    }

    public boolean A() {
        return this.h != null;
    }

    public void h(boolean z) {
        if (!z) {
            this.h = null;
        }
    }

    public String B() {
        return this.i;
    }

    public aq g(String str) {
        this.i = str;
        return this;
    }

    public void C() {
        this.i = null;
    }

    public boolean D() {
        return this.i != null;
    }

    public void i(boolean z) {
        if (!z) {
            this.i = null;
        }
    }

    public int E() {
        return this.j;
    }

    public aq c(int i) {
        this.j = i;
        j(true);
        return this;
    }

    public void F() {
        this.z = cg.b(this.z, 1);
    }

    public boolean G() {
        return cg.a(this.z, 1);
    }

    public void j(boolean z) {
        this.z = cg.a(this.z, 1, z);
    }

    public e d(int i) {
        return e.a(i);
    }

    public void a(di diVar) throws cp {
        ((dr) w.get(diVar.D())).b().b(diVar, this);
    }

    public void b(di diVar) throws cp {
        ((dr) w.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("AppInfo(");
        stringBuilder.append("key:");
        if (this.a == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.a);
        }
        if (i()) {
            stringBuilder.append(", ");
            stringBuilder.append("version:");
            if (this.b == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.b);
            }
        }
        if (l()) {
            stringBuilder.append(", ");
            stringBuilder.append("version_index:");
            stringBuilder.append(this.c);
        }
        if (o()) {
            stringBuilder.append(", ");
            stringBuilder.append("package_name:");
            if (this.d == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.d);
            }
        }
        stringBuilder.append(", ");
        stringBuilder.append("sdk_type:");
        if (this.e == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.e);
        }
        stringBuilder.append(", ");
        stringBuilder.append("sdk_version:");
        if (this.f == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.f);
        }
        stringBuilder.append(", ");
        stringBuilder.append("channel:");
        if (this.g == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.g);
        }
        if (A()) {
            stringBuilder.append(", ");
            stringBuilder.append("wrapper_type:");
            if (this.h == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.h);
            }
        }
        if (D()) {
            stringBuilder.append(", ");
            stringBuilder.append("wrapper_version:");
            if (this.i == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.i);
            }
        }
        if (G()) {
            stringBuilder.append(", ");
            stringBuilder.append("vertical_type:");
            stringBuilder.append(this.j);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void H() throws cp {
        if (this.a == null) {
            throw new dj("Required field 'key' was not present! Struct: " + toString());
        } else if (this.e == null) {
            throw new dj("Required field 'sdk_type' was not present! Struct: " + toString());
        } else if (this.f == null) {
            throw new dj("Required field 'sdk_version' was not present! Struct: " + toString());
        } else if (this.g == null) {
            throw new dj("Required field 'channel' was not present! Struct: " + toString());
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
            this.z = (byte) 0;
            a(new dc(new du((InputStream) objectInputStream)));
        } catch (cp e) {
            throw new IOException(e.getMessage());
        }
    }
}
