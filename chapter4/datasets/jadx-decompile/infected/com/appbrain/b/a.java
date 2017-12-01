package com.appbrain.b;

import com.appbrain.d.b;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import u.aly.bs;

public final class a {
    private byte[] a = null;

    public static byte[] a(d dVar) {
        d a = dVar.a();
        byte[] K = a.b().K();
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(K);
            a.a(ByteBuffer.wrap(instance.digest()).getLong());
            a.a(e.INTEGRITY_ONLY);
            return a.b().K();
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public final byte[] a(byte[] bArr) {
        c a = c.a(bArr);
        if (a.h()) {
            d I = a.I();
            I.c();
            I.d();
            byte[] K = I.b().K();
            try {
                MessageDigest instance = MessageDigest.getInstance("SHA-1");
                if (a.k() == e.SHARED_KEY) {
                    instance.update(this.a);
                }
                instance.update(K);
                long j = ByteBuffer.wrap(instance.digest()).getLong();
                if (j != a.i()) {
                    throw new SecurityException("Wrong checksum value. " + j + " " + a.i());
                }
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }
        if (!a.l() || !a.m()) {
            return (a.p() && a.q()) ? null : a.e().b();
        } else {
            if (!a.n() || a.o() == null || a.o() == bs.b) {
                throw new b("There was an error contacting the server.");
            }
            throw new b(a.o());
        }
    }
}
