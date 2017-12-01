package com.third.mu.update;

import android.content.Context;
import com.third.mu.utils.UpdateCallback;

public class Update {
    public static boolean isUpdating() {
        return a.a;
    }

    public static void setDebug() {
        a.b();
    }

    public static void update(Context context, UpdateCallback updateCallback) {
        a.a(context, updateCallback);
    }
}
