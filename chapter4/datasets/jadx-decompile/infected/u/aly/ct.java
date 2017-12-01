package u.aly;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: TUnion */
public abstract class ct<T extends ct<?, ?>, F extends cq> implements cj<T, F> {
    private static final Map<Class<? extends dq>, dr> a = new HashMap();
    protected Object b;
    protected F c;

    /* compiled from: TUnion */
    private static class a extends ds<ct> {
        private a() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (ct) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (ct) cjVar);
        }

        public void a(di diVar, ct ctVar) throws cp {
            ctVar.c = null;
            ctVar.b = null;
            diVar.j();
            dd l = diVar.l();
            ctVar.b = ctVar.a(diVar, l);
            if (ctVar.b != null) {
                ctVar.c = ctVar.b(l.c);
            }
            diVar.m();
            diVar.l();
            diVar.k();
        }

        public void b(di diVar, ct ctVar) throws cp {
            if (ctVar.i() == null || ctVar.j() == null) {
                throw new dj("Cannot write a TUnion with no set value!");
            }
            diVar.a(ctVar.c());
            diVar.a(ctVar.a(ctVar.c));
            ctVar.c(diVar);
            diVar.c();
            diVar.d();
            diVar.b();
        }
    }

    /* compiled from: TUnion */
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

    /* compiled from: TUnion */
    private static class c extends dt<ct> {
        private c() {
        }

        public /* synthetic */ void a(di diVar, cj cjVar) throws cp {
            b(diVar, (ct) cjVar);
        }

        public /* synthetic */ void b(di diVar, cj cjVar) throws cp {
            a(diVar, (ct) cjVar);
        }

        public void a(di diVar, ct ctVar) throws cp {
            ctVar.c = null;
            ctVar.b = null;
            short v = diVar.v();
            ctVar.b = ctVar.a(diVar, v);
            if (ctVar.b != null) {
                ctVar.c = ctVar.b(v);
            }
        }

        public void b(di diVar, ct ctVar) throws cp {
            if (ctVar.i() == null || ctVar.j() == null) {
                throw new dj("Cannot write a TUnion with no set value!");
            }
            diVar.a(ctVar.c.a());
            ctVar.d(diVar);
        }
    }

    /* compiled from: TUnion */
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

    protected abstract Object a(di diVar, dd ddVar) throws cp;

    protected abstract Object a(di diVar, short s) throws cp;

    protected abstract dd a(F f);

    protected abstract void a(F f, Object obj) throws ClassCastException;

    protected abstract F b(short s);

    protected abstract dn c();

    protected abstract void c(di diVar) throws cp;

    protected abstract void d(di diVar) throws cp;

    protected ct() {
        this.c = null;
        this.b = null;
    }

    static {
        a.put(ds.class, new b());
        a.put(dt.class, new d());
    }

    protected ct(F f, Object obj) {
        b(f, obj);
    }

    protected ct(ct<T, F> ctVar) {
        if (ctVar.getClass().equals(getClass())) {
            this.c = ctVar.c;
            this.b = a(ctVar.b);
            return;
        }
        throw new ClassCastException();
    }

    private static Object a(Object obj) {
        if (obj instanceof cj) {
            return ((cj) obj).g();
        }
        if (obj instanceof ByteBuffer) {
            return ck.d((ByteBuffer) obj);
        }
        if (obj instanceof List) {
            return a((List) obj);
        }
        if (obj instanceof Set) {
            return a((Set) obj);
        }
        if (obj instanceof Map) {
            return a((Map) obj);
        }
        return obj;
    }

    private static Map a(Map<Object, Object> map) {
        Map hashMap = new HashMap();
        for (Entry entry : map.entrySet()) {
            hashMap.put(a(entry.getKey()), a(entry.getValue()));
        }
        return hashMap;
    }

    private static Set a(Set set) {
        Set hashSet = new HashSet();
        for (Object a : set) {
            hashSet.add(a(a));
        }
        return hashSet;
    }

    private static List a(List list) {
        List arrayList = new ArrayList(list.size());
        for (Object a : list) {
            arrayList.add(a(a));
        }
        return arrayList;
    }

    public F i() {
        return this.c;
    }

    public Object j() {
        return this.b;
    }

    public Object b(F f) {
        if (f == this.c) {
            return j();
        }
        throw new IllegalArgumentException("Cannot get the value of field " + f + " because union's set field is " + this.c);
    }

    public Object c(int i) {
        return b(b((short) i));
    }

    public boolean k() {
        return this.c != null;
    }

    public boolean c(F f) {
        return this.c == f;
    }

    public boolean d(int i) {
        return c(b((short) i));
    }

    public void a(di diVar) throws cp {
        ((dr) a.get(diVar.D())).b().b(diVar, this);
    }

    public void b(F f, Object obj) {
        a((cq) f, obj);
        this.c = f;
        this.b = obj;
    }

    public void a(int i, Object obj) {
        b(b((short) i), obj);
    }

    public void b(di diVar) throws cp {
        ((dr) a.get(diVar.D())).b().a(diVar, this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<");
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append(" ");
        if (i() != null) {
            Object j = j();
            stringBuilder.append(a(i()).a);
            stringBuilder.append(":");
            if (j instanceof ByteBuffer) {
                ck.a((ByteBuffer) j, stringBuilder);
            } else {
                stringBuilder.append(j.toString());
            }
        }
        stringBuilder.append(">");
        return stringBuilder.toString();
    }

    public final void b() {
        this.c = null;
        this.b = null;
    }
}
