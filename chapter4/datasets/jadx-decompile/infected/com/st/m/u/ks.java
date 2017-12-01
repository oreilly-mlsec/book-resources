package com.st.m.u;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ks {
    public static String a(long j) {
        String str = j;
        if (j > 0) {
            try {
                str = new SimpleDateFormat("yyyyMMdd HH:mm:ss").format(new Date(j));
            } catch (Throwable th) {
                ef.a(th);
            }
        }
        return str;
    }
}
