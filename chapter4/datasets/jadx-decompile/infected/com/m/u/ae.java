package com.m.u;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.security.MessageDigest;
import u.aly.bs;
import u.aly.dp;

public class ae {
    private static final byte[] aa = new byte[]{(byte) 100, (byte) 88, (byte) 112, (byte) 107, (byte) 78, (byte) 88, (byte) 99, (byte) 53, (byte) 89, (byte) 109, (byte) 78, (byte) 122};
    private static final byte[] ab = new byte[]{(byte) 88, (byte) 49, (byte) 57, (byte) 113, (byte) 82, (byte) 71, (byte) 120, (byte) 118, (byte) 90, (byte) 49, (byte) 56, (byte) 61};
    private static final byte[] ac = new byte[]{(byte) 84, (byte) 72, (byte) 90, (byte) 53, (byte) 84, (byte) 108, (byte) 111, (byte) 119, (byte) 85, (byte) 109, (byte) 103, (byte) 61};
    private static final byte[] ad = new byte[]{(byte) 97, (byte) 87, (byte) 78, (byte) 116, (byte) 77, (byte) 68, (byte) 65, (byte) 120, (byte) 76, (byte) 109, (byte) 57, (byte) 112, (byte) 89, (byte) 51, (byte) 65, (byte) 117, (byte) 98, (byte) 109, (byte) 86, (byte) 48, (byte) 79, (byte) 106, (byte) 73, (byte) 119, (byte) 77, (byte) 68, (byte) 73, (byte) 119};
    private static final byte[] ae = new byte[]{(byte) 97, (byte) 110, (byte) 104, (byte) 53, (byte) 101, (byte) 71, (byte) 108, (byte) 117, (byte) 100, (byte) 71, (byte) 86, (byte) 115, (byte) 76, (byte) 110, (byte) 78, (byte) 115, (byte) 97, (byte) 71, (byte) 112, (byte) 115, (byte) 76, (byte) 109, (byte) 78, (byte) 118, (byte) 98, (byte) 84, (byte) 111, (byte) 51, (byte) 77, (byte) 68, (byte) 99, (byte) 119};
    private static final byte[] af = new byte[]{(byte) 90, (byte) 71, (byte) 57, (byte) 116, (byte) 89, (byte) 87, (byte) 108, (byte) 117, (byte) 76, (byte) 109, (byte) 100, (byte) 118, (byte) 98, (byte) 51, (byte) 90, (byte) 108, (byte) 99, (byte) 110, (byte) 78, (byte) 108, (byte) 89, (byte) 87, (byte) 70, (byte) 107, (byte) 76, (byte) 109, (byte) 78, (byte) 118, (byte) 98, (byte) 84, (byte) 111, (byte) 51, (byte) 77, (byte) 68, (byte) 99, (byte) 119};
    private static final byte[] ag = new byte[]{(byte) 90, (byte) 71, (byte) 57, (byte) 116, (byte) 89, (byte) 87, (byte) 108, (byte) 117, (byte) 76, (byte) 109, (byte) 100, (byte) 118, (byte) 98, (byte) 51, (byte) 90, (byte) 108, (byte) 99, (byte) 110, (byte) 78, (byte) 108, (byte) 89, (byte) 87, (byte) 70, (byte) 107, (byte) 76, (byte) 109, (byte) 57, (byte) 121, (byte) 90, (byte) 122, (byte) 111, (byte) 51, (byte) 77, (byte) 68, (byte) 99, (byte) 119};
    private static final byte[] ah = new byte[]{(byte) 76, (byte) 109, (byte) 78, (byte) 118, (byte) 98, (byte) 83, (byte) 53, (byte) 116, (byte) 90, (byte) 103, (byte) 61, (byte) 61};
    private static final byte[] ai = new byte[]{(byte) 97, (byte) 71, (byte) 112, (byte) 72, (byte) 100, (byte) 71, (byte) 116, (byte) 112, (byte) 76, (byte) 109, (byte) 82, (byte) 105, (byte) 100, (byte) 87, (byte) 99, (byte) 61};
    private static final byte[] aj = new byte[]{(byte) 89, (byte) 50, (byte) 57, (byte) 116, (byte) 76, (byte) 109, (byte) 99, (byte) 117, (byte) 90, (byte) 87, (byte) 53, (byte) 110, (byte) 97, (byte) 87, (byte) 53, (byte) 108};
    private static final byte[] ak = new byte[]{(byte) 89, (byte) 50, (byte) 57, (byte) 116, (byte) 76, (byte) 109, (byte) 99, (byte) 117, (byte) 90, (byte) 87, (byte) 53, (byte) 110, (byte) 97, (byte) 87, (byte) 53, (byte) 108, (byte) 76, (byte) 107, (byte) 49, (byte) 104, (byte) 97, (byte) 87, (byte) 53, (byte) 66, (byte) 89, (byte) 51, (byte) 82, (byte) 112, (byte) 100, (byte) 109, (byte) 108, (byte) 48, (byte) 101, (byte) 81, (byte) 61, (byte) 61};
    private static final byte[] al;

    static class aa {
        int aa;
        byte[] ab;
        int ac;
        int ad;
        boolean ae;
        int af;

        aa() {
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
        al = bArr;
    }

    public static String aa() {
        return ah.aa().ac() ? aa(ab) : aa(ac);
    }

    public static String aa(Context context, int i) {
        if (ah.aa().ac()) {
            return aa(ad);
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(com.m.ac.aa.aq, 0);
        Object string;
        if (i == 0) {
            string = sharedPreferences.getString(com.m.ac.aa.am + i, bs.b);
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            sharedPreferences.edit().putString(com.m.ac.aa.am + i, aa(ae)).commit();
            return aa(ae);
        } else if (i == 1) {
            string = sharedPreferences.getString(com.m.ac.aa.am + i, bs.b);
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            sharedPreferences.edit().putString(com.m.ac.aa.am + i, aa(af)).commit();
            return aa(af);
        } else if (i != 2) {
            return bs.b;
        } else {
            string = sharedPreferences.getString(com.m.ac.aa.am + i, bs.b);
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            sharedPreferences.edit().putString(com.m.ac.aa.am + i, aa(ag)).commit();
            return aa(ag);
        }
    }

    public static String aa(String str) {
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

    public static String aa(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return new String(bArr);
        }
        aa aaVar = new aa();
        aa(bArr, 0, bArr.length, aaVar);
        aa(bArr, 0, -1, aaVar);
        byte[] bArr2 = new byte[aaVar.ac];
        ab(bArr2, 0, bArr2.length, aaVar);
        return new String(bArr2);
    }

    private static void aa(byte[] bArr, int i, int i2, aa aaVar) {
        if (!aaVar.ae) {
            int i3;
            if (i2 < 0) {
                aaVar.ae = true;
            }
            int i4 = 0;
            while (i4 < i2) {
                byte[] aa = aa(3, aaVar);
                i3 = i + 1;
                byte b = bArr[i];
                if (b == (byte) 61) {
                    aaVar.ae = true;
                    break;
                }
                if (b >= (byte) 0 && b < al.length) {
                    b = al[b];
                    if (b >= (byte) 0) {
                        aaVar.af = (aaVar.af + 1) % 4;
                        aaVar.aa = b + (aaVar.aa << 6);
                        if (aaVar.af == 0) {
                            int i5 = aaVar.ac;
                            aaVar.ac = i5 + 1;
                            aa[i5] = (byte) ((aaVar.aa >> 16) & 255);
                            i5 = aaVar.ac;
                            aaVar.ac = i5 + 1;
                            aa[i5] = (byte) ((aaVar.aa >> 8) & 255);
                            i5 = aaVar.ac;
                            aaVar.ac = i5 + 1;
                            aa[i5] = (byte) (aaVar.aa & 255);
                        }
                    }
                }
                i4++;
                i = i3;
            }
            if (aaVar.ae && aaVar.af != 0) {
                byte[] aa2 = aa(3, aaVar);
                switch (aaVar.af) {
                    case 1:
                        return;
                    case 2:
                        aaVar.aa >>= 4;
                        i3 = aaVar.ac;
                        aaVar.ac = i3 + 1;
                        aa2[i3] = (byte) (255 & aaVar.aa);
                        return;
                    case 3:
                        aaVar.aa >>= 2;
                        i3 = aaVar.ac;
                        aaVar.ac = i3 + 1;
                        aa2[i3] = (byte) ((aaVar.aa >> 8) & 255);
                        i3 = aaVar.ac;
                        aaVar.ac = i3 + 1;
                        aa2[i3] = (byte) (255 & aaVar.aa);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    private static byte[] aa(int i, aa aaVar) {
        if (aaVar.ab == null || aaVar.ab.length < aaVar.ac + i) {
            aaVar.ab = new byte[8192];
            aaVar.ac = 0;
            aaVar.ad = 0;
        }
        return aaVar.ab;
    }

    private static int ab(byte[] bArr, int i, int i2, aa aaVar) {
        if (aaVar.ab == null) {
            return aaVar.ae ? -1 : 0;
        } else {
            int min = Math.min(aaVar.ac - aaVar.ad, i2);
            System.arraycopy(aaVar.ab, aaVar.ad, bArr, i, min);
            aaVar.ad += min;
            if (aaVar.ad < aaVar.ac) {
                return min;
            }
            aaVar.ab = null;
            return min;
        }
    }

    public static String ab() {
        return aa(ai);
    }
}
