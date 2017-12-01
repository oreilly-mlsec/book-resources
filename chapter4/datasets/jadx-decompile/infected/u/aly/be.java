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

/* compiled from: InstantMsg */
public class be implements Serializable, Cloneable, cj<be, e> {
    public static final Map<e, cv> e;
    private static final dn f = new dn("InstantMsg");
    private static final dd g = new dd("id", (byte) 11, (short) 1);
    private static final dd h = new dd("errors", dp.m, (short) 2);
    private static final dd i = new dd("events", dp.m, (short) 3);
    private static final dd j = new dd("game_events", dp.m, (short) 4);
    private static final Map<Class<? extends dq>, dr> k = new HashMap();
    public String a;
    public List<av> b;
    public List<ax> c;
    public List<ax> d;
    private e[] l;

    /* compiled from: InstantMsg */
    private static class a extends ds<be> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (be) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (be) cjVar);
        }

        public void a(di diVar, be beVar) throws cp {
            diVar.j();
            while (true) {
                dd l = diVar.l();
                if (l.b == (byte) 0) {
                    diVar.k();
                    beVar.v();
                    return;
                }
                de p;
                int i;
                ax axVar;
                switch (l.c) {
                    case (short) 1:
                        if (l.b != (byte) 11) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        beVar.a = diVar.z();
                        beVar.a(true);
                        break;
                    case (short) 2:
                        if (l.b != dp.m) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        p = diVar.p();
                        beVar.b = new ArrayList(p.b);
                        for (i = 0; i < p.b; i++) {
                            av avVar = new av();
                            avVar.a(diVar);
                            beVar.b.add(avVar);
                        }
                        diVar.q();
                        beVar.b(true);
                        break;
                    case (short) 3:
                        if (l.b != dp.m) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        p = diVar.p();
                        beVar.c = new ArrayList(p.b);
                        for (i = 0; i < p.b; i++) {
                            axVar = new ax();
                            axVar.a(diVar);
                            beVar.c.add(axVar);
                        }
                        diVar.q();
                        beVar.c(true);
                        break;
                    case (short) 4:
                        if (l.b != dp.m) {
                            dl.a(diVar, l.b);
                            break;
                        }
                        p = diVar.p();
                        beVar.d = new ArrayList(p.b);
                        for (i = 0; i < p.b; i++) {
                            axVar = new ax();
                            axVar.a(diVar);
                            beVar.d.add(axVar);
                        }
                        diVar.q();
                        beVar.d(true);
                        break;
                    default:
                        dl.a(diVar, l.b);
                        break;
                }
                diVar.m();
            }
        }

        public void b(di diVar, be beVar) throws cp {
            beVar.v();
            diVar.a(be.f);
            if (beVar.a != null) {
                diVar.a(be.g);
                diVar.a(beVar.a);
                diVar.c();
            }
            if (beVar.b != null && beVar.k()) {
                diVar.a(be.h);
                diVar.a(new de((byte) 12, beVar.b.size()));
                for (av b : beVar.b) {
                    b.b(diVar);
                }
                diVar.f();
                diVar.c();
            }
            if (beVar.c != null && beVar.p()) {
                diVar.a(be.i);
                diVar.a(new de((byte) 12, beVar.c.size()));
                for (ax b2 : beVar.c) {
                    b2.b(diVar);
                }
                diVar.f();
                diVar.c();
            }
            if (beVar.d != null && beVar.u()) {
                diVar.a(be.j);
                diVar.a(new de((byte) 12, beVar.d.size()));
                for (ax b22 : beVar.d) {
                    b22.b(diVar);
                }
                diVar.f();
                diVar.c();
            }
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: InstantMsg */
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

    /* compiled from: InstantMsg */
    private static class c extends dt<be> {
        private c() {
        }

        public void a(di diVar, be beVar) throws cp {
            diVar = (do) diVar;
            diVar.a(beVar.a);
            BitSet bitSet = new BitSet();
            if (beVar.k()) {
                bitSet.set(0);
            }
            if (beVar.p()) {
                bitSet.set(1);
            }
            if (beVar.u()) {
                bitSet.set(2);
            }
            diVar.a(bitSet, 3);
            if (beVar.k()) {
                diVar.a(beVar.b.size());
                for (av b : beVar.b) {
                    b.b(diVar);
                }
            }
            if (beVar.p()) {
                diVar.a(beVar.c.size());
                for (ax b2 : beVar.c) {
                    b2.b(diVar);
                }
            }
            if (beVar.u()) {
                diVar.a(beVar.d.size());
                for (ax b22 : beVar.d) {
                    b22.b(diVar);
                }
            }
        }

        public void b(di diVar, be beVar) throws cp {
            int i;
            int i2 = 0;
            diVar = (do) diVar;
            beVar.a = diVar.z();
            beVar.a(true);
            BitSet b = diVar.b(3);
            if (b.get(0)) {
                de deVar;
                deVar = new de((byte) 12, diVar.w());
                beVar.b = new ArrayList(deVar.b);
                for (i = 0; i < deVar.b; i++) {
                    av avVar = new av();
                    avVar.a(diVar);
                    beVar.b.add(avVar);
                }
                beVar.b(true);
            }
            if (b.get(1)) {
                deVar = new de((byte) 12, diVar.w());
                beVar.c = new ArrayList(deVar.b);
                for (i = 0; i < deVar.b; i++) {
                    ax axVar = new ax();
                    axVar.a(diVar);
                    beVar.c.add(axVar);
                }
                beVar.c(true);
            }
            if (b.get(2)) {
                de deVar2 = new de((byte) 12, diVar.w());
                beVar.d = new ArrayList(deVar2.b);
                while (i2 < deVar2.b) {
                    ax axVar2 = new ax();
                    axVar2.a(diVar);
                    beVar.d.add(axVar2);
                    i2++;
                }
                beVar.d(true);
            }
        }
    }

    /* compiled from: InstantMsg */
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

    /* compiled from: InstantMsg */
    public enum e implements cq {
        ID((short) 1, "id"),
        ERRORS((short) 2, "errors"),
        EVENTS((short) 3, "events"),
        GAME_EVENTS((short) 4, "game_events");
        
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
                    return ID;
                case 2:
                    return ERRORS;
                case 3:
                    return EVENTS;
                case 4:
                    return GAME_EVENTS;
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
        enumMap.put(e.ID, new cv("id", (byte) 1, new cw((byte) 11)));
        enumMap.put(e.ERRORS, new cv("errors", (byte) 2, new cx(dp.m, new da((byte) 12, av.class))));
        enumMap.put(e.EVENTS, new cv("events", (byte) 2, new cx(dp.m, new da((byte) 12, ax.class))));
        enumMap.put(e.GAME_EVENTS, new cv("game_events", (byte) 2, new cx(dp.m, new da((byte) 12, ax.class))));
        e = Collections.unmodifiableMap(enumMap);
        cv.a(be.class, e);
    }

    public be() {
        this.l = new e[]{e.ERRORS, e.EVENTS, e.GAME_EVENTS};
    }

    public be(String str) {
        this();
        this.a = str;
    }

    public be(be beVar) {
        List arrayList;
        this.l = new e[]{e.ERRORS, e.EVENTS, e.GAME_EVENTS};
        if (beVar.e()) {
            this.a = beVar.a;
        }
        if (beVar.k()) {
            arrayList = new ArrayList();
            for (av avVar : beVar.b) {
                arrayList.add(new av(avVar));
            }
            this.b = arrayList;
        }
        if (beVar.p()) {
            arrayList = new ArrayList();
            for (ax axVar : beVar.c) {
                arrayList.add(new ax(axVar));
            }
            this.c = arrayList;
        }
        if (beVar.u()) {
            arrayList = new ArrayList();
            for (ax axVar2 : beVar.d) {
                arrayList.add(new ax(axVar2));
            }
            this.d = arrayList;
        }
    }

    public be a() {
        return new be(this);
    }

    public void b() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
    }

    public String c() {
        return this.a;
    }

    public be a(String str) {
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

    public int f() {
        return this.b == null ? 0 : this.b.size();
    }

    public Iterator<av> h() {
        return this.b == null ? null : this.b.iterator();
    }

    public void a(av avVar) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.add(avVar);
    }

    public List<av> i() {
        return this.b;
    }

    public be a(List<av> list) {
        this.b = list;
        return this;
    }

    public void j() {
        this.b = null;
    }

    public boolean k() {
        return this.b != null;
    }

    public void b(boolean z) {
        if (!z) {
            this.b = null;
        }
    }

    public int l() {
        return this.c == null ? 0 : this.c.size();
    }

    public Iterator<ax> m() {
        return this.c == null ? null : this.c.iterator();
    }

    public void a(ax axVar) {
        if (this.c == null) {
            this.c = new ArrayList();
        }
        this.c.add(axVar);
    }

    public List<ax> n() {
        return this.c;
    }

    public be b(List<ax> list) {
        this.c = list;
        return this;
    }

    public void o() {
        this.c = null;
    }

    public boolean p() {
        return this.c != null;
    }

    public void c(boolean z) {
        if (!z) {
            this.c = null;
        }
    }

    public int q() {
        return this.d == null ? 0 : this.d.size();
    }

    public Iterator<ax> r() {
        return this.d == null ? null : this.d.iterator();
    }

    public void b(ax axVar) {
        if (this.d == null) {
            this.d = new ArrayList();
        }
        this.d.add(axVar);
    }

    public List<ax> s() {
        return this.d;
    }

    public be c(List<ax> list) {
        this.d = list;
        return this;
    }

    public void t() {
        this.d = null;
    }

    public boolean u() {
        return this.d != null;
    }

    public void d(boolean z) {
        if (!z) {
            this.d = null;
        }
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
        StringBuilder stringBuilder = new StringBuilder("InstantMsg(");
        stringBuilder.append("id:");
        if (this.a == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.a);
        }
        if (k()) {
            stringBuilder.append(", ");
            stringBuilder.append("errors:");
            if (this.b == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.b);
            }
        }
        if (p()) {
            stringBuilder.append(", ");
            stringBuilder.append("events:");
            if (this.c == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.c);
            }
        }
        if (u()) {
            stringBuilder.append(", ");
            stringBuilder.append("game_events:");
            if (this.d == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.d);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void v() throws cp {
        if (this.a == null) {
            throw new dj("Required field 'id' was not present! Struct: " + toString());
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
