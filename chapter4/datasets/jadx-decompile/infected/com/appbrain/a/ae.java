package com.appbrain.a;

import com.appbrain.c.d;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

public final class ae {
    private int a;
    private int[] b;
    private Map[] c;

    private ae() {
    }

    public static ae a(InputStream inputStream) {
        ae aeVar = new ae();
        InputStream gZIPInputStream = new GZIPInputStream(inputStream);
        d a = d.a(gZIPInputStream);
        aeVar.a = a.g();
        int g = a.g();
        aeVar.c = new Map[g];
        aeVar.b = new int[g];
        for (int i = 0; i < g; i++) {
            aeVar.c[i] = new HashMap();
            int g2 = a.g();
            aeVar.b[i] = (short) (((a.i() & 255) << 8) | (a.i() & 255));
            for (int i2 = 0; i2 < g2; i2++) {
                aeVar.c[i].put(Integer.valueOf(a.h()), Integer.valueOf((short) (((a.i() & 255) << 8) | (a.i() & 255))));
            }
        }
        gZIPInputStream.close();
        return aeVar;
    }

    public final int a() {
        return this.a;
    }

    public final int[] a(List list) {
        int[] iArr = new int[this.c.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = this.b[i];
        }
        for (String hashCode : list) {
            int hashCode2 = hashCode.hashCode();
            for (int i2 = 0; i2 < iArr.length; i2++) {
                Integer num = (Integer) this.c[i2].get(Integer.valueOf(hashCode2));
                if (num != null) {
                    iArr[i2] = num.intValue() + iArr[i2];
                }
            }
        }
        return iArr;
    }
}
