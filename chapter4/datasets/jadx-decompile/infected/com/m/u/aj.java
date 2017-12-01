package com.m.u;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import u.aly.bs;

public class aj {
    public static String aa(String str) throws NoSuchAlgorithmException, FileNotFoundException {
        MessageDigest instance = MessageDigest.getInstance(ae.aa(ac.ek));
        File file = new File(str);
        String str2 = bs.b;
        InputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[8192];
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                instance.update(bArr, 0, read);
            } catch (Throwable e) {
                throw new RuntimeException(402, e);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable e2) {
                    throw new RuntimeException(ae.aa(ac.fg), e2);
                }
            }
        }
        String bigInteger = new BigInteger(1, instance.digest()).toString(16);
        while (bigInteger.length() < 32) {
            bigInteger = "0" + bigInteger;
        }
        try {
            fileInputStream.close();
            return bigInteger;
        } catch (Throwable e22) {
            throw new RuntimeException(ae.aa(ac.fg), e22);
        }
    }
}
