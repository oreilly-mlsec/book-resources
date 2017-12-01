package com.appbrain.a;

import android.content.Intent;
import u.aly.bs;

final class b {
    public final int a;
    public final int b;

    private b(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public static b a() {
        StackTraceElement[] stackTrace = new Exception().getStackTrace();
        StringBuffer stringBuffer = new StringBuffer();
        String str = bs.b;
        String a = a(a.class.getName());
        String str2 = str;
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!a(stackTraceElement.getClassName()).equals(a)) {
                stringBuffer.append(stackTraceElement.toString());
                if (str2.length() == 0) {
                    str2 = stackTraceElement.toString();
                }
            }
        }
        return new b(str2.hashCode(), stringBuffer.hashCode());
    }

    public static b a(Intent intent) {
        return intent == null ? new b(-1, -1) : new b(intent.getIntExtra("hash_last", -1), intent.getIntExtra("hash", -1));
    }

    private static String a(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf != -1 ? str.substring(0, lastIndexOf) : str;
    }

    public final void b(Intent intent) {
        intent.putExtra("hash_last", this.a);
        intent.putExtra("hash", this.b);
    }
}
