package com.appbrain.c;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class r extends AbstractList implements n, RandomAccess {
    private final n a;

    public r(n nVar) {
        this.a = nVar;
    }

    public final c a(int i) {
        return this.a.a(i);
    }

    public final void a(c cVar) {
        throw new UnsupportedOperationException();
    }

    public final /* bridge */ /* synthetic */ Object get(int i) {
        return (String) this.a.get(i);
    }

    public final Iterator iterator() {
        return new t(this);
    }

    public final ListIterator listIterator(int i) {
        return new s(this, i);
    }

    public final int size() {
        return this.a.size();
    }
}
