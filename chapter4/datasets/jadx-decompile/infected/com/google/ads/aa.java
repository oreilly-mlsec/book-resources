package com.google.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

public final class aa {
    public static boolean a(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
        return a(intent, context);
    }

    public static boolean a(Intent intent, Context context) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }
}
