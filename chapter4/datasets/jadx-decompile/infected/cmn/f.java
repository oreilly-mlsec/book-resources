package cmn;

import java.text.ParseException;
import u.aly.dp;

public class f {
    public static final byte[] a = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, (byte) 47};
    public static final byte[] b = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 45, (byte) 95};
    static final /* synthetic */ boolean c = (!f.class.desiredAssertionStatus());
    private static final byte[] d = new byte[]{(byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -5, (byte) -5, (byte) -9, (byte) -9, (byte) -5, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -5, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) 62, (byte) -9, (byte) -9, (byte) -9, (byte) 63, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 58, (byte) 59, (byte) 60, (byte) 61, (byte) -9, (byte) -9, (byte) -9, (byte) -1, (byte) -9, (byte) -9, (byte) -9, (byte) 0, (byte) 1, (byte) 2, (byte) 3, (byte) 4, (byte) 5, (byte) 6, (byte) 7, (byte) 8, (byte) 9, (byte) 10, (byte) 11, (byte) 12, dp.k, dp.l, dp.m, dp.n, (byte) 17, (byte) 18, (byte) 19, (byte) 20, (byte) 21, (byte) 22, (byte) 23, (byte) 24, (byte) 25, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) 26, (byte) 27, (byte) 28, (byte) 29, (byte) 30, (byte) 31, (byte) 32, (byte) 33, (byte) 34, (byte) 35, (byte) 36, (byte) 37, (byte) 38, (byte) 39, (byte) 40, (byte) 41, (byte) 42, (byte) 43, (byte) 44, (byte) 45, (byte) 46, (byte) 47, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) -9, (byte) -9, (byte) -9, (byte) -9};
    private static final byte[] e = new byte[]{(byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -5, (byte) -5, (byte) -9, (byte) -9, (byte) -5, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -5, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) 62, (byte) -9, (byte) -9, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 58, (byte) 59, (byte) 60, (byte) 61, (byte) -9, (byte) -9, (byte) -9, (byte) -1, (byte) -9, (byte) -9, (byte) -9, (byte) 0, (byte) 1, (byte) 2, (byte) 3, (byte) 4, (byte) 5, (byte) 6, (byte) 7, (byte) 8, (byte) 9, (byte) 10, (byte) 11, (byte) 12, dp.k, dp.l, dp.m, dp.n, (byte) 17, (byte) 18, (byte) 19, (byte) 20, (byte) 21, (byte) 22, (byte) 23, (byte) 24, (byte) 25, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) 63, (byte) -9, (byte) 26, (byte) 27, (byte) 28, (byte) 29, (byte) 30, (byte) 31, (byte) 32, (byte) 33, (byte) 34, (byte) 35, (byte) 36, (byte) 37, (byte) 38, (byte) 39, (byte) 40, (byte) 41, (byte) 42, (byte) 43, (byte) 44, (byte) 45, (byte) 46, (byte) 47, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) -9, (byte) -9, (byte) -9, (byte) -9};

    private f() {
    }

    private static int a(byte[] bArr, byte[] bArr2, int i, byte[] bArr3) {
        if (bArr[2] == (byte) 61) {
            bArr2[i] = (byte) ((((bArr3[bArr[0]] << 24) >>> 6) | ((bArr3[bArr[1]] << 24) >>> 12)) >>> 16);
            return 1;
        } else if (bArr[3] == (byte) 61) {
            r0 = (((bArr3[bArr[1]] << 24) >>> 12) | ((bArr3[bArr[0]] << 24) >>> 6)) | ((bArr3[bArr[2]] << 24) >>> 18);
            bArr2[i] = (byte) (r0 >>> 16);
            bArr2[i + 1] = (byte) (r0 >>> 8);
            return 2;
        } else {
            r0 = ((((bArr3[bArr[1]] << 24) >>> 12) | ((bArr3[bArr[0]] << 24) >>> 6)) | ((bArr3[bArr[2]] << 24) >>> 18)) | ((bArr3[bArr[3]] << 24) >>> 24);
            bArr2[i] = (byte) (r0 >> 16);
            bArr2[i + 1] = (byte) (r0 >> 8);
            bArr2[i + 2] = (byte) r0;
            return 3;
        }
    }

    public static String a(byte[] bArr) {
        return a(bArr, bArr.length, a, true);
    }

    private static String a(byte[] bArr, int i, byte[] bArr2, boolean z) {
        int i2 = ((i + 2) / 3) * 4;
        byte[] bArr3 = new byte[(i2 + (i2 / Integer.MAX_VALUE))];
        int i3 = i - 2;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i6 < i3) {
            i2 = (((bArr[i6] << 24) >>> 8) | ((bArr[i6 + 1] << 24) >>> 16)) | ((bArr[i6 + 2] << 24) >>> 24);
            bArr3[i5] = bArr2[i2 >>> 18];
            bArr3[i5 + 1] = bArr2[(i2 >>> 12) & 63];
            bArr3[i5 + 2] = bArr2[(i2 >>> 6) & 63];
            bArr3[i5 + 3] = bArr2[i2 & 63];
            i2 = i4 + 4;
            if (i2 == Integer.MAX_VALUE) {
                bArr3[i5 + 4] = (byte) 10;
                i5++;
                i2 = 0;
            }
            i5 += 4;
            i4 = i2;
            i6 += 3;
        }
        if (i6 < i) {
            i3 = i - i6;
            i2 = (i3 > 2 ? (bArr[i6 + 2] << 24) >>> 24 : 0) | ((i3 > 0 ? (bArr[i6] << 24) >>> 8 : 0) | (i3 > 1 ? (bArr[i6 + 1] << 24) >>> 16 : 0));
            switch (i3) {
                case 1:
                    bArr3[i5] = bArr2[i2 >>> 18];
                    bArr3[i5 + 1] = bArr2[(i2 >>> 12) & 63];
                    bArr3[i5 + 2] = (byte) 61;
                    bArr3[i5 + 3] = (byte) 61;
                    break;
                case 2:
                    bArr3[i5] = bArr2[i2 >>> 18];
                    bArr3[i5 + 1] = bArr2[(i2 >>> 12) & 63];
                    bArr3[i5 + 2] = bArr2[(i2 >>> 6) & 63];
                    bArr3[i5 + 3] = (byte) 61;
                    break;
                case 3:
                    bArr3[i5] = bArr2[i2 >>> 18];
                    bArr3[i5 + 1] = bArr2[(i2 >>> 12) & 63];
                    bArr3[i5 + 2] = bArr2[(i2 >>> 6) & 63];
                    bArr3[i5 + 3] = bArr2[i2 & 63];
                    break;
            }
            if (i4 + 4 == Integer.MAX_VALUE) {
                bArr3[i5 + 4] = (byte) 10;
                i5++;
            }
            i5 += 4;
        }
        if (c || r2 == bArr3.length) {
            i2 = bArr3.length;
            while (!z && i2 > 0 && bArr3[i2 - 1] == (byte) 61) {
                i2--;
            }
            return new String(bArr3, 0, i2);
        }
        throw new AssertionError();
    }

    public static byte[] a(String str) {
        Object obj;
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        byte[] bArr = d;
        byte[] bArr2 = new byte[(((length * 3) / 4) + 2)];
        int i = 0;
        byte[] bArr3 = new byte[4];
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            byte b = (byte) (bytes[i3] & 127);
            byte b2 = bArr[b];
            if (b2 >= (byte) -5) {
                int i4;
                if (b2 < (byte) -1) {
                    i4 = i2;
                    i2 = i;
                } else if (b == (byte) 61) {
                    i4 = length - i3;
                    byte b3 = (byte) (bytes[length - 1] & 127);
                    if (i2 == 0 || i2 == 1) {
                        throw new ParseException("invalid padding byte '=' at byte offset " + i3, i3);
                    } else if ((i2 != 3 || i4 <= 2) && (i2 != 4 || i4 <= 1)) {
                        if (!(b3 == (byte) 61 || b3 == (byte) 10)) {
                            throw new ParseException("encoded value has invalid trailing byte", -1);
                        }
                        if (i2 != 0) {
                            if (i2 != 1) {
                                throw new ParseException("single trailing character at offset " + (length - 1), length - 1);
                            }
                            bArr3[i2] = (byte) 61;
                            i += a(bArr3, bArr2, i, bArr);
                        }
                        obj = new byte[i];
                        System.arraycopy(bArr2, 0, obj, 0, i);
                        return obj;
                    } else {
                        throw new ParseException("padding byte '=' falsely signals end of encoded value at offset " + i3, i3);
                    }
                } else {
                    i4 = i2 + 1;
                    bArr3[i2] = b;
                    if (i4 == 4) {
                        i2 = i + a(bArr3, bArr2, i, bArr);
                        i4 = 0;
                    } else {
                        i2 = i;
                    }
                }
                i3++;
                i = i2;
                i2 = i4;
            } else {
                throw new ParseException("Bad Base64 input character at " + i3 + ": " + bytes[i3] + "(decimal)", i3);
            }
        }
        if (i2 != 0) {
            if (i2 != 1) {
                bArr3[i2] = (byte) 61;
                i += a(bArr3, bArr2, i, bArr);
            } else {
                throw new ParseException("single trailing character at offset " + (length - 1), length - 1);
            }
        }
        obj = new byte[i];
        System.arraycopy(bArr2, 0, obj, 0, i);
        return obj;
    }

    public static String b(byte[] bArr) {
        return a(bArr, bArr.length, b, false);
    }
}
