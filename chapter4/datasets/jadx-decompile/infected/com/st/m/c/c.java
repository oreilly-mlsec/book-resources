package com.st.m.c;

class c {
    protected static int a(byte b) {
        return (b + 256) % 256;
    }

    protected static short a(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] << 8) | (bArr[i + 0] & 255));
    }

    protected static void a(byte[] bArr, double d, int i) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        for (int i2 = 0; i2 < 8; i2++) {
            bArr[i + i2] = new Long(doubleToLongBits).byteValue();
            doubleToLongBits >>= 8;
        }
    }

    protected static void a(byte[] bArr, float f, int i) {
        int floatToIntBits = Float.floatToIntBits(f);
        for (int i2 = 0; i2 < 4; i2++) {
            bArr[i + i2] = new Integer(floatToIntBits).byteValue();
            floatToIntBits >>= 8;
        }
    }

    protected static void a(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) (i & 255);
        bArr[i2 + 1] = (byte) ((i >> 8) & 255);
        bArr[i2 + 2] = (byte) ((i >> 16) & 255);
        bArr[i2 + 3] = (byte) ((i >> 24) & 255);
    }

    protected static void a(byte[] bArr, long j, int i) {
        bArr[i + 7] = (byte) ((int) (j >> 56));
        bArr[i + 6] = (byte) ((int) (j >> 48));
        bArr[i + 5] = (byte) ((int) (j >> 40));
        bArr[i + 4] = (byte) ((int) (j >> 32));
        bArr[i + 3] = (byte) ((int) (j >> 24));
        bArr[i + 2] = (byte) ((int) (j >> 16));
        bArr[i + 1] = (byte) ((int) (j >> 8));
        bArr[i + 0] = (byte) ((int) (j >> null));
    }

    protected static void a(byte[] bArr, short s, int i) {
        bArr[i + 1] = (byte) (s >> 8);
        bArr[i + 0] = (byte) (s >> 0);
    }

    protected static int b(byte[] bArr, int i) {
        return ((((bArr[i + 3] & 255) << 24) | ((bArr[i + 2] & 255) << 16)) | ((bArr[i + 1] & 255) << 8)) | ((bArr[i + 0] & 255) << 0);
    }

    protected static long c(byte[] bArr, int i) {
        return ((((((((((long) bArr[i + 7]) & 255) << 56) | ((((long) bArr[i + 6]) & 255) << 48)) | ((((long) bArr[i + 5]) & 255) << 40)) | ((((long) bArr[i + 4]) & 255) << 32)) | ((((long) bArr[i + 3]) & 255) << 24)) | ((((long) bArr[i + 2]) & 255) << 16)) | ((((long) bArr[i + 1]) & 255) << 8)) | ((((long) bArr[i + 0]) & 255) << null);
    }

    protected static float da(byte[] bArr, int i) {
        return Float.intBitsToFloat((int) (((long) (((int) (((long) (((int) (((long) (bArr[i + 0] & 255)) | (((long) bArr[i + 1]) << 8))) & 65535)) | (((long) bArr[i + 2]) << 16))) & 16777215)) | (((long) bArr[i + 3]) << 24)));
    }

    protected static double ef(byte[] bArr, int i) {
        return Double.longBitsToDouble((((((((((((((((long) bArr[i + 0]) & 255) | (((long) bArr[i + 1]) << 8)) & 65535) | (((long) bArr[i + 2]) << 16)) & 16777215) | (((long) bArr[i + 3]) << 24)) & 4294967295L) | (((long) bArr[i + 4]) << 32)) & 1099511627775L) | (((long) bArr[i + 5]) << 40)) & 281474976710655L) | (((long) bArr[i + 6]) << 48)) & 72057594037927935L) | (((long) bArr[i + 7]) << 56));
    }
}
