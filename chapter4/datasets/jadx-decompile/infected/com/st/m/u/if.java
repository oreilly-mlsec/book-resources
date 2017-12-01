package com.st.m.u;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;

public class if {
    public static void a(BroadcastReceiver broadcastReceiver, Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.setPriority(Integer.MAX_VALUE);
        intentFilter.addDataScheme("package");
        context.registerReceiver(broadcastReceiver, intentFilter);
    }

    public static void b(BroadcastReceiver broadcastReceiver, Context context) {
        context.unregisterReceiver(broadcastReceiver);
    }
}
