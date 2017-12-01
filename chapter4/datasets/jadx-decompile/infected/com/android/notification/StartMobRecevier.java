package com.android.notification;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.IntentFlag;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;

public class StartMobRecevier extends BroadcastReceiver {
    private static final String servicesClassName = "com.android.notification.MainService";

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            boolean ifServiceOn = AppUtil.MyServiceOrNotStart(((ActivityManager) context.getSystemService("activity")).getRunningServices(1000), servicesClassName);
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:BootReceiver  func:onReceive  text:ifServiceOn= " + ifServiceOn);
            if (!ifServiceOn) {
                MystartService(context);
            }
        }
    }

    private void MystartService(Context context) {
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:BootReceiver  func:MystartService  text:startService form boot");
        Intent intent = new Intent();
        intent.setAction(servicesClassName);
        intent.putExtra(IntentFlag.FLAG, IntentFlag.BOOT_START);
        context.startService(intent);
    }
}
