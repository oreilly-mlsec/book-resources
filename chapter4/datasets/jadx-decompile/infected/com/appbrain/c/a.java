package com.appbrain.c;

public abstract class a implements o {
    public final byte[] K() {
        try {
            byte[] bArr = new byte[G()];
            e a = e.a(bArr, bArr.length);
            a(a);
            if (a.b() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (Throwable e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }
}
