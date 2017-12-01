package com.st.m.u;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

public class b {
    public static byte[] a(byte[] bArr) {
        return bArr == null ? null : (byte[]) bArr.clone();
    }

    private static byte[] a(byte[] bArr, byte b) {
        byte[] bArr2 = new byte[(8 - (bArr.length % 8))];
        for (int i = 0; i < bArr2.length; i++) {
            bArr2[i] = b;
        }
        return c(bArr, bArr2);
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) throws Exception {
        byte[] a = a(bArr, (byte) 0);
        Key generateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(bArr2));
        Cipher instance = Cipher.getInstance("DES/ECB/NoPadding");
        instance.init(1, generateSecret);
        return instance.doFinal(a);
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) throws Exception {
        Key generateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(bArr2));
        Cipher instance = Cipher.getInstance("DES/ECB/NoPadding");
        instance.init(2, generateSecret);
        return instance.doFinal(bArr);
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return a(bArr2);
        }
        if (bArr2 == null) {
            return a(bArr);
        }
        Object obj = new byte[(bArr.length + bArr2.length)];
        System.arraycopy(bArr, 0, obj, 0, bArr.length);
        System.arraycopy(bArr2, 0, obj, bArr.length, bArr2.length);
        return obj;
    }
}
