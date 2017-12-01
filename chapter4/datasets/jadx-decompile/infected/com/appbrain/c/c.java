package com.appbrain.c;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

public final class c {
    public static final c a = new c(new byte[0]);
    private final byte[] b;
    private volatile int c = 0;

    private c(byte[] bArr) {
        this.b = bArr;
    }

    public static c a(String str) {
        try {
            return new c(str.getBytes("UTF-8"));
        } catch (Throwable e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }

    public static c a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static c a(byte[] bArr, int i, int i2) {
        Object obj = new byte[i2];
        System.arraycopy(bArr, i, obj, 0, i2);
        return new c(obj);
    }

    public final byte a(int i) {
        return this.b[i];
    }

    public final int a() {
        return this.b.length;
    }

    public final void a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.b, i, bArr, i2, i3);
    }

    public final byte[] b() {
        int length = this.b.length;
        Object obj = new byte[length];
        System.arraycopy(this.b, 0, obj, 0, length);
        return obj;
    }

    public final String c() {
        try {
            return new String(this.b, "UTF-8");
        } catch (Throwable e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }

    public final InputStream d() {
        return new ByteArrayInputStream(this.b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        int length = this.b.length;
        if (length != cVar.b.length) {
            return false;
        }
        byte[] bArr = this.b;
        byte[] bArr2 = cVar.b;
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = this.c;
        if (i == 0) {
            byte[] bArr = this.b;
            int length = this.b.length;
            int i2 = 0;
            i = length;
            while (i2 < length) {
                int i3 = bArr[i2] + (i * 31);
                i2++;
                i = i3;
            }
            if (i == 0) {
                i = 1;
            }
            this.c = i;
        }
        return i;
    }
}
