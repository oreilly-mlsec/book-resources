package com.st.m.u;

import android.content.Context;
import java.security.MessageDigest;
import u.aly.bs;
import u.aly.dp;

public class c {
    private static final byte[] a = new byte[]{(byte) 88, (byte) 50, (byte) 81, (byte) 121, (byte) 77, (byte) 49, (byte) 57, (byte) 107, (byte) 77, (byte) 106, (byte) 77, (byte) 61};
    private static final byte[] b = new byte[]{(byte) 87, (byte) 68, (byte) 73, (byte) 53, (byte) 88, (byte) 51, (byte) 77, (byte) 53, (byte) 77, (byte) 108, (byte) 56, (byte) 61};
    private static final byte[] c = new byte[]{(byte) 97, (byte) 87, (byte) 78, (byte) 116, (byte) 77, (byte) 68, (byte) 65, (byte) 120, (byte) 76, (byte) 109, (byte) 57, (byte) 112, (byte) 89, (byte) 51, (byte) 65, (byte) 117, (byte) 98, (byte) 109, (byte) 86, (byte) 48, (byte) 79, (byte) 106, (byte) 73, (byte) 48, (byte) 77, (byte) 84, (byte) 65, (byte) 119};
    private static final byte[] da = new byte[]{(byte) 89, (byte) 109, (byte) 99, (byte) 117, (byte) 97, (byte) 83, (byte) 49, (byte) 105, (byte) 97, (byte) 87, (byte) 100, (byte) 107, (byte) 89, (byte) 88, (byte) 82, (byte) 104, (byte) 99, (byte) 121, (byte) 53, (byte) 117, (byte) 90, (byte) 88, (byte) 81, (byte) 54, (byte) 78, (byte) 84, (byte) 65, (byte) 49, (byte) 77, (byte) 65, (byte) 61, (byte) 61};
    private static final byte[] ef = new byte[]{(byte) 99, (byte) 51, (byte) 81, (byte) 117, (byte) 90, (byte) 71, (byte) 86, (byte) 105, (byte) 100, (byte) 87, (byte) 99, (byte) 61};
    private static final byte[] f;

    static class a {
        int a;
        byte[] b;
        int c;
        int da;
        boolean ef;
        int f;

        a() {
        }
    }

    static {
        byte[] bArr = new byte[123];
        bArr[0] = (byte) -1;
        bArr[1] = (byte) -1;
        bArr[2] = (byte) -1;
        bArr[3] = (byte) -1;
        bArr[4] = (byte) -1;
        bArr[5] = (byte) -1;
        bArr[6] = (byte) -1;
        bArr[7] = (byte) -1;
        bArr[8] = (byte) -1;
        bArr[9] = (byte) -1;
        bArr[10] = (byte) -1;
        bArr[11] = (byte) -1;
        bArr[12] = (byte) -1;
        bArr[13] = (byte) -1;
        bArr[14] = (byte) -1;
        bArr[15] = (byte) -1;
        bArr[16] = (byte) -1;
        bArr[17] = (byte) -1;
        bArr[18] = (byte) -1;
        bArr[19] = (byte) -1;
        bArr[20] = (byte) -1;
        bArr[21] = (byte) -1;
        bArr[22] = (byte) -1;
        bArr[23] = (byte) -1;
        bArr[24] = (byte) -1;
        bArr[25] = (byte) -1;
        bArr[26] = (byte) -1;
        bArr[27] = (byte) -1;
        bArr[28] = (byte) -1;
        bArr[29] = (byte) -1;
        bArr[30] = (byte) -1;
        bArr[31] = (byte) -1;
        bArr[32] = (byte) -1;
        bArr[33] = (byte) -1;
        bArr[34] = (byte) -1;
        bArr[35] = (byte) -1;
        bArr[36] = (byte) -1;
        bArr[37] = (byte) -1;
        bArr[38] = (byte) -1;
        bArr[39] = (byte) -1;
        bArr[40] = (byte) -1;
        bArr[41] = (byte) -1;
        bArr[42] = (byte) -1;
        bArr[43] = (byte) 62;
        bArr[44] = (byte) -1;
        bArr[45] = (byte) 62;
        bArr[46] = (byte) -1;
        bArr[47] = (byte) 63;
        bArr[48] = (byte) 52;
        bArr[49] = (byte) 53;
        bArr[50] = (byte) 54;
        bArr[51] = (byte) 55;
        bArr[52] = (byte) 56;
        bArr[53] = (byte) 57;
        bArr[54] = (byte) 58;
        bArr[55] = (byte) 59;
        bArr[56] = (byte) 60;
        bArr[57] = (byte) 61;
        bArr[58] = (byte) -1;
        bArr[59] = (byte) -1;
        bArr[60] = (byte) -1;
        bArr[61] = (byte) -1;
        bArr[62] = (byte) -1;
        bArr[63] = (byte) -1;
        bArr[64] = (byte) -1;
        bArr[66] = (byte) 1;
        bArr[67] = (byte) 2;
        bArr[68] = (byte) 3;
        bArr[69] = (byte) 4;
        bArr[70] = (byte) 5;
        bArr[71] = (byte) 6;
        bArr[72] = (byte) 7;
        bArr[73] = (byte) 8;
        bArr[74] = (byte) 9;
        bArr[75] = (byte) 10;
        bArr[76] = (byte) 11;
        bArr[77] = (byte) 12;
        bArr[78] = dp.k;
        bArr[79] = dp.l;
        bArr[80] = dp.m;
        bArr[81] = dp.n;
        bArr[82] = (byte) 17;
        bArr[83] = (byte) 18;
        bArr[84] = (byte) 19;
        bArr[85] = (byte) 20;
        bArr[86] = (byte) 21;
        bArr[87] = (byte) 22;
        bArr[88] = (byte) 23;
        bArr[89] = (byte) 24;
        bArr[90] = (byte) 25;
        bArr[91] = (byte) -1;
        bArr[92] = (byte) -1;
        bArr[93] = (byte) -1;
        bArr[94] = (byte) -1;
        bArr[95] = (byte) 63;
        bArr[96] = (byte) -1;
        bArr[97] = (byte) 26;
        bArr[98] = (byte) 27;
        bArr[99] = (byte) 28;
        bArr[100] = (byte) 29;
        bArr[101] = (byte) 30;
        bArr[102] = (byte) 31;
        bArr[103] = (byte) 32;
        bArr[104] = (byte) 33;
        bArr[105] = (byte) 34;
        bArr[106] = (byte) 35;
        bArr[107] = (byte) 36;
        bArr[108] = (byte) 37;
        bArr[109] = (byte) 38;
        bArr[110] = (byte) 39;
        bArr[111] = (byte) 40;
        bArr[112] = (byte) 41;
        bArr[113] = (byte) 42;
        bArr[114] = (byte) 43;
        bArr[115] = (byte) 44;
        bArr[116] = (byte) 45;
        bArr[117] = (byte) 46;
        bArr[118] = (byte) 47;
        bArr[119] = (byte) 48;
        bArr[120] = (byte) 49;
        bArr[121] = (byte) 50;
        bArr[122] = (byte) 51;
        f = bArr;
    }

    public static String a() {
        return a(a);
    }

    public static String a(Context context, int i) {
        return a(c);
    }

    public static String a(String str) {
        String str2 = bs.b;
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer(digest.length * 2);
            for (int i = 0; i < digest.length; i++) {
                stringBuffer.append(Character.forDigit((digest[i] & 240) >> 4, 16));
                stringBuffer.append(Character.forDigit(digest[i] & 15, 16));
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return str2;
        }
    }

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return new String(bArr);
        }
        a aVar = new a();
        a(bArr, 0, bArr.length, aVar);
        a(bArr, 0, -1, aVar);
        byte[] bArr2 = new byte[aVar.c];
        b(bArr2, 0, bArr2.length, aVar);
        return new String(bArr2);
    }

    private static void a(byte[] bArr, int i, int i2, a aVar) {
        if (!aVar.ef) {
            int i3;
            if (i2 < 0) {
                aVar.ef = true;
            }
            int i4 = 0;
            while (i4 < i2) {
                byte[] a = a(3, aVar);
                i3 = i + 1;
                byte b = bArr[i];
                if (b == (byte) 61) {
                    aVar.ef = true;
                    break;
                }
                if (b >= (byte) 0 && b < f.length) {
                    b = f[b];
                    if (b >= (byte) 0) {
                        aVar.f = (aVar.f + 1) % 4;
                        aVar.a = b + (aVar.a << 6);
                        if (aVar.f == 0) {
                            int i5 = aVar.c;
                            aVar.c = i5 + 1;
                            a[i5] = (byte) ((aVar.a >> 16) & 255);
                            i5 = aVar.c;
                            aVar.c = i5 + 1;
                            a[i5] = (byte) ((aVar.a >> 8) & 255);
                            i5 = aVar.c;
                            aVar.c = i5 + 1;
                            a[i5] = (byte) (aVar.a & 255);
                        }
                    }
                }
                i4++;
                i = i3;
            }
            if (aVar.ef && aVar.f != 0) {
                byte[] a2 = a(3, aVar);
                switch (aVar.f) {
                    case 1:
                        return;
                    case 2:
                        aVar.a >>= 4;
                        i3 = aVar.c;
                        aVar.c = i3 + 1;
                        a2[i3] = (byte) (255 & aVar.a);
                        return;
                    case 3:
                        aVar.a >>= 2;
                        i3 = aVar.c;
                        aVar.c = i3 + 1;
                        a2[i3] = (byte) ((aVar.a >> 8) & 255);
                        i3 = aVar.c;
                        aVar.c = i3 + 1;
                        a2[i3] = (byte) (255 & aVar.a);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    private static byte[] a(int i, a aVar) {
        if (aVar.b == null || aVar.b.length < aVar.c + i) {
            aVar.b = new byte[8192];
            aVar.c = 0;
            aVar.da = 0;
        }
        return aVar.b;
    }

    private static int b(byte[] bArr, int i, int i2, a aVar) {
        if (aVar.b == null) {
            return aVar.ef ? -1 : 0;
        } else {
            int min = Math.min(aVar.c - aVar.da, i2);
            System.arraycopy(aVar.b, aVar.da, bArr, i, min);
            aVar.da += min;
            if (aVar.da < aVar.c) {
                return min;
            }
            aVar.b = null;
            return min;
        }
    }

    public static String b() {
        return a(ef);
    }
}
