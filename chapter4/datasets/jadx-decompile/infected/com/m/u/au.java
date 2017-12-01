package com.m.u;

import java.text.SimpleDateFormat;
import java.util.Date;

public class au {
    public static String aa(long j) {
        String str = j;
        if (j > 0) {
            try {
                str = new SimpleDateFormat("yyyyMMdd HH:mm:ss").format(new Date(j));
            } catch (Throwable th) {
                ag.aa(th);
            }
        }
        return str;
    }
}
