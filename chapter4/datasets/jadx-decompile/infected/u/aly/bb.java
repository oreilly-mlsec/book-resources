package u.aly;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: IdTracking */
public class bb implements Serializable, Cloneable, cj<bb, e> {
    public static final Map<e, cv> d;
    private static final dn e = new dn("IdTracking");
    private static final dd f = new dd("snapshots", dp.k, (short) 1);
    private static final dd g = new dd("journals", dp.m, (short) 2);
    private static final dd h = new dd("checksum", (byte) 11, (short) 3);
    private static final Map<Class<? extends dq>, dr> i = new HashMap();
    public Map<String, ba> a;
    public List<az> b;
    public String c;
    private e[] j;

    /* compiled from: IdTracking */
    private static class a extends ds<bb> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (bb) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (bb) cjVar);
        }

        public void a(di diVar, bb bbVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    bbVar.p();
                    return;
                }
                int i;
                switch (l.c) {
                    case (short) 1:
                        if (l.b != dp.k) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        df n = diVar.n();
                        bbVar.a = new HashMap(n.c * 2);
                        for (i = 0; i < n.c; i++) {
                            String z = diVar.z();
                            ba baVar = new ba();
                            baVar.a(diVar);
                            bbVar.a.put(z, baVar);
                        }
                        diVar.o();
                        bbVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != dp.m) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        de p = diVar.p();
                        bbVar.b = new ArrayList(p.b);
                        for (i = 0; i < p.b; i++) {
                            az azVar = new az();
                            azVar.a(diVar);
                            bbVar.b.add(azVar);
                        }
                        diVar.q();
                        bbVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        bbVar.c = diVar.z();
                        bbVar.c(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, bb bbVar) throws cp {
            bbVar.p();
            diVar.a(bb.e);
            if (bbVar.a != null) {
                diVar.a(bb.f);
                diVar.a(new df((byte) 11, (byte) 12, bbVar.a.size()));
                for (Entry entry : bbVar.a.entrySet()) {
                    diVar.a((String) entry.getKey());
                    ((ba) entry.getValue()).b(diVar);
                }
                diVar.e();
                diVar.c();
            }
            if (bbVar.b != null && bbVar.l()) {
                diVar.a(bb.g);
                diVar.a(new de((byte) 12, bbVar.b.size()));
                for (az b : bbVar.b) {
                    b.b(diVar);
                }
                diVar.f();
                diVar.c();
            }
            if (bbVar.c != null && bbVar.o()) {
                diVar.a(bb.h);
                diVar.a(bbVar.c);
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: IdTracking */
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

    /* compiled from: IdTracking */
    private static class c extends dt<bb> {
        private c() {
        }

        public void a(di diVar, bb bbVar) throws cp {
            diVar = (do) diVar;
            diVar.a(bbVar.a.size());
            for (Entry entry : bbVar.a.entrySet()) {
                diVar.a((String) entry.getKey());
                ((ba) entry.getValue()).b(diVar);
            }
            BitSet bitSet = new BitSet();
            if (bbVar.l()) {
                bitSet.set(0);
            }
            if (bbVar.o()) {
                bitSet.set(1);
            }
            diVar.a(bitSet, 2);
            if (bbVar.l()) {
                diVar.a(bbVar.b.size());
                for (az b : bbVar.b) {
                    b.b(diVar);
                }
            }
            if (bbVar.o()) {
                diVar.a(bbVar.c);
            }
        }

        public void b(di diVar, bb bbVar) throws cp {
            int i = 0;
            diVar = (do) diVar;
            df dfVar = new df((byte) 11, (byte) 12, diVar.w());
            bbVar.a = new HashMap(dfVar.c * 2);
            for (int i2 = 0; i2 < dfVar.c; i2++) {
                String z = diVar.z();
                ba baVar = new ba();
                baVar.a(diVar);
                bbVar.a.put(z, baVar);
            }
            bbVar.a(true);
            BitSet b = diVar.b(2);
            if (b.get(0)) {
                de deVar = new de((byte) 12, diVar.w());
                bbVar.b = new ArrayList(deVar.b);
                while (i < deVar.b) {
                    az azVar = new az();
                    azVar.a(diVar);
                    bbVar.b.add(azVar);
                    i++;
                }
                bbVar.b(true);
            }
            if (b.get(1)) {
                bbVar.c = diVar.z();
                bbVar.c(true);
            }
        }
    }

    /* compiled from: IdTracking */
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

    /* compiled from: IdTracking */
    public enum e implements cq {
        SNAPSHOTS((short) 1, "snapshots"),
        JOURNALS((short) 2, "journals"),
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
                    return SNAPSHOTS;
                case 2:
                    return JOURNALS;
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
        return a(i);
    }

    public /* synthetic */ cj g() {
        return a();
    }

    static {
        i.put(ds.class, new b());
        i.put(dt.class, new d());
        Map enumMap = new EnumMap(e.class);
        enumMap.put(e.SNAPSHOTS, new cv("snapshots", (byte) 1, new cy(dp.k, new cw((byte) 11), new da((byte) 12, ba.class))));
        enumMap.put(e.JOURNALS, new cv("journals", (byte) 2, new cx(dp.m, new da((byte) 12, az.class))));
        enumMap.put(e.CHECKSUM, new cv("checksum", (byte) 2, new cw((byte) 11)));
        d = Collections.unmodifiableMap(enumMap);
        cv.a(bb.class, d);
    }

    public bb() {
        this.j = new e[]{e.JOURNALS, e.CHECKSUM};
    }

    public bb(Map<String, ba> map) {
        this();
        this.a = map;
    }

    public bb(bb bbVar) {
        this.j = new e[]{e.JOURNALS, e.CHECKSUM};
        if (bbVar.f()) {
            Map hashMap = new HashMap();
            for (Entry entry : bbVar.a.entrySet()) {
                hashMap.put((String) entry.getKey(), new ba((ba) entry.getValue()));
            }
            this.a = hashMap;
        }
        if (bbVar.l()) {
            List arrayList = new ArrayList();
            for (az azVar : bbVar.b) {
                arrayList.add(new az(azVar));
            }
            this.b = arrayList;
        }
        if (bbVar.o()) {
            this.c = bbVar.c;
        }
    }

    public bb a() {
        return new bb(this);
    }

    public void b() {
        this.a = null;
        this.b = null;
        this.c = null;
    }

    public int c() {
        return this.a == null ? 0 : this.a.size();
    }

    public void a(String str, ba baVar) {
        if (this.a == null) {
            this.a = new HashMap();
        }
        this.a.put(str, baVar);
    }

    public Map<String, ba> d() {
        return this.a;
    }

    public bb a(Map<String, ba> map) {
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
        return this.b == null ? 0 : this.b.size();
    }

    public Iterator<az> i() {
        return this.b == null ? null : this.b.iterator();
    }

    public void a(az azVar) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.add(azVar);
    }

    public List<az> j() {
        return this.b;
    }

    public bb a(List<az> list) {
        this.b = list;
        return this;
    }

    public void k() {
        this.b = null;
    }

    public boolean l() {
        return this.b != null;
    }

    public void b(boolean z) {
        if (!z) {
            this.b = null;
        }
    }

    public String m() {
        return this.c;
    }

    public bb a(String str) {
        this.c = str;
        return this;
    }

    public void n() {
        this.c = null;
    }

    public boolean o() {
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
        StringBuilder stringBuilder = new StringBuilder("IdTracking(");
        stringBuilder.append("snapshots:");
        if (this.a == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.a);
        }
        if (l()) {
            stringBuilder.append(", ");
            stringBuilder.append("journals:");
            if (this.b == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.b);
            }
        }
        if (o()) {
            stringBuilder.append(", ");
            stringBuilder.append("checksum:");
            if (this.c == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.c);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void p() throws cp {
        if (this.a == null) {
            throw new dj("Required field 'snapshots' was not present! Struct: " + toString());
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
