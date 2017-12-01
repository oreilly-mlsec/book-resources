package com.appbrain.c;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

public final class m extends AbstractList implements n, RandomAccess {
    public static final n a = new r(new m());
    private final List b;

    public m() {
        this.b = new ArrayList();
    }

    public m(List list) {
        this.b = new ArrayList(list);
    }

    private static String a(Object obj) {
        return obj instanceof String ? (String) obj : ((c) obj).c();
    }

    public final c a(int i) {
        Object obj = this.b.get(i);
        if (!(obj instanceof String)) {
            return (c) obj;
        }
        c a = c.a((String) obj);
        this.b.set(i, a);
        return a;
    }

    public final void a(c cVar) {
        this.b.add(cVar);
        this.modCount++;
    }

    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        this.b.add(i, (String) obj);
        this.modCount++;
    }

    public final boolean addAll(int i, Collection collection) {
        boolean addAll = this.b.addAll(i, collection);
        this.modCount++;
        return addAll;
    }

    public final void clear() {
        this.b.clear();
        this.modCount++;
    }

    public final /* synthetic */ Object get(int i) {
        Object obj = this.b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        c cVar = (c) obj;
        String c = cVar.c();
        if (j.a(cVar)) {
            this.b.set(i, c);
        }
        return c;
    }

    public final /* synthetic */ Object remove(int i) {
        Object remove = this.b.remove(i);
        this.modCount++;
        return a(remove);
    }

    public final /* synthetic */ Object set(int i, Object obj) {
        return a(this.b.set(i, (String) obj));
    }

    public final int size() {
        return this.b.size();
    }
}
