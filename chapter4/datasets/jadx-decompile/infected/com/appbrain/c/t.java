package com.appbrain.c;

import java.util.Iterator;

final class t implements Iterator {
    Iterator a = this.b.a.iterator();
    final /* synthetic */ r b;

    t(r rVar) {
        this.b = rVar;
    }

    public final boolean hasNext() {
        return this.a.hasNext();
    }

    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.a.next();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
