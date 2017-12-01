package com.google.ads.util;

import android.content.Context;
import android.util.DisplayMetrics;

public final class c {
    private c() {
    }

    public static int a(Context context, DisplayMetrics displayMetrics) {
        return a(context, displayMetrics.density, displayMetrics.heightPixels);
    }

    public static int b(Context context, DisplayMetrics displayMetrics) {
        return a(context, displayMetrics.density, displayMetrics.widthPixels);
    }

    private static int a(Context context, float f, int i) {
        if ((context.getApplicationInfo().flags & 8192) != 0) {
            return (int) (((float) i) / f);
        }
        return i;
    }
}
