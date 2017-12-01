package com.m.u;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

public class ad {
    public static byte[] aa(byte[] bArr) {
        return bArr == null ? null : (byte[]) bArr.clone();
    }

    private static byte[] aa(byte[] bArr, byte b) {
        byte[] bArr2 = new byte[(8 - (bArr.length % 8))];
        for (int i = 0; i < bArr2.length; i++) {
            bArr2[i] = b;
        }
        return ac(bArr, bArr2);
    }

    public static byte[] aa(byte[] bArr, byte[] bArr2) throws Exception {
        byte[] aa = aa(bArr, (byte) 0);
        Key generateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(bArr2));
        Cipher instance = Cipher.getInstance("DES/ECB/NoPadding");
        instance.init(1, generateSecret);
        return instance.doFinal(aa);
    }

    public static byte[] ab(byte[] bArr, byte[] bArr2) throws Exception {
        Key generateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(bArr2));
        Cipher instance = Cipher.getInstance("DES/ECB/NoPadding");
        instance.init(2, generateSecret);
        return instance.doFinal(bArr);
    }

    public static byte[] ac(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return aa(bArr2);
        }
        if (bArr2 == null) {
            return aa(bArr);
        }
        Object obj = new byte[(bArr.length + bArr2.length)];
        System.arraycopy(bArr, 0, obj, 0, bArr.length);
        System.arraycopy(bArr2, 0, obj, bArr.length, bArr2.length);
        return obj;
    }
}
