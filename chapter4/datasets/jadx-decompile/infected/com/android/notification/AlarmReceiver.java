package com.android.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AlarmReceiver extends BroadcastReceiver {
    private static Thread pushThread = null;
    private final String adAction = "android.alarm.notification.AD_pencilsketch";

    public void onReceive(Context context, Intent intent) {
        if ("android.alarm.notification.AD_pencilsketch".equals(intent.getAction())) {
            pushThread = new PushThread(context, intent);
            pushThread.start();
            abortBroadcast();
        }
    }
}
