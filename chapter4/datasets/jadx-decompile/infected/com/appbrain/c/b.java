package com.appbrain.c;

public abstract class b implements p {
    private b a(byte[] bArr, int i) {
        try {
            d a = d.a(bArr, i);
            a(a, g.a());
            a.a(0);
            return this;
        } catch (l e) {
            throw e;
        } catch (Throwable e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
        }
    }

    public abstract b a(d dVar, g gVar);

    public final b a(byte[] bArr) {
        return a(bArr, bArr.length);
    }

    public /* synthetic */ p b(d dVar, g gVar) {
        return a(dVar, gVar);
    }

    public /* synthetic */ Object clone() {
        return f();
    }

    public abstract b f();
}
