package com.appbrain.c;

public final class j {
    public static boolean a(c cVar) {
        int a = cVar.a();
        int i = 0;
        while (i < a) {
            int i2 = i + 1;
            int a2 = cVar.a(i) & 255;
            if (a2 < 128) {
                i = i2;
            } else if (a2 < 194 || a2 > 244) {
                return false;
            } else {
                if (i2 >= a) {
                    return false;
                }
                int i3 = i2 + 1;
                i2 = cVar.a(i2) & 255;
                if (i2 < 128 || i2 > 191) {
                    return false;
                }
                if (a2 > 223) {
                    if (i3 >= a) {
                        return false;
                    }
                    i = i3 + 1;
                    i3 = cVar.a(i3) & 255;
                    if (i3 < 128 || i3 > 191) {
                        return false;
                    }
                    if (a2 <= 239) {
                        if ((a2 == 224 && i2 < 160) || (a2 == 237 && i2 > 159)) {
                            return false;
                        }
                    } else if (i >= a) {
                        return false;
                    } else {
                        i3 = i + 1;
                        i = cVar.a(i) & 255;
                        if (i < 128 || i > 191) {
                            return false;
                        }
                        if ((a2 == 240 && i2 < 144) || (a2 == 244 && i2 > 143)) {
                            return false;
                        }
                    }
                }
                i = i3;
            }
        }
        return true;
    }
}
