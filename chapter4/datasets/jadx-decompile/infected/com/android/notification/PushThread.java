package com.android.notification;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.RemoteViews;
import com.android.notification.bean.DownApkInfo;
import com.android.notification.bean.ResID;
import com.android.notification.bean.TimerConfigure;
import com.android.notification.configure.ConfigureFile;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.DownStatus;
import com.android.notification.configure.IntentFlag;
import com.android.notification.configure.PropertiesKey.PhoneConfig;
import com.android.notification.configure.PropertiesKey.PushConfig;
import com.android.notification.configure.PropertiesKey.TimerConfig;
import com.android.notification.configure.WebFlag;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.apache.http.client.ClientProtocolException;

public class PushThread extends Thread {
    private static final int ADNOTI_ID = 34438;
    private static final int APPNOTI_ID = 35209;
    private static int pushtime = 0;
    private Context context;
    private Intent intent;
    private final String nService = "com.android.notification.MainService";

    public PushThread(Context context, Intent intent) {
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:run  text:context = " + context.toString());
        this.context = context;
        this.intent = intent;
    }

    public void run() {
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:run  text:turn pushtime = " + pushtime);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:run  text:startTime = " + df.format(new Date(System.currentTimeMillis())));
        if (AppUtil.hasSdcard()) {
            try {
                if (!updateLocalConfig()) {
                    UpdatePushRecord();
                }
            } catch (Exception e) {
                e.printStackTrace();
                Tool.JWDlogException(DownApkXmlKey.ROOT, "class:PushThread  func:run  text:message:", e);
                UpdatePushRecord();
            }
        }
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:  func:run  text:endTime = " + df.format(new Date(System.currentTimeMillis())));
    }

    private void UpdatePushRecord() {
        try {
            UpdatePushAdRecord(AppUtil.ReadDownLoadInfoList(ConfigureFile.DownInfoFile));
        } catch (IOException e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:PushThread  func:UpdatePushRecord  text:message:", e);
        }
    }

    private void UpdatePushAdRecord(List<DownApkInfo> downinfos) {
        try {
            if (IfNetworkOk()) {
                AppUtil.UpdateAdRecord(downinfos);
            }
            UpdatePushAppRecord(downinfos);
        } catch (Exception e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:PushThread  func:UpdatePushAdRecord  text:message:", e);
            UpdatePushAppRecord(downinfos);
        }
    }

    private void UpdatePushAppRecord(List<DownApkInfo> downinfos) {
        try {
            if (IfNetworkOk()) {
                AppUtil.UpdateAppRecord(downinfos, this.context);
            }
            onPrePushAdAndApk(downinfos);
        } catch (Exception e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:PushThread  func:UpdatePushAppRecord  text:message:", e);
            onPrePushAdAndApk(downinfos);
        }
    }

    private void onPrePushAdAndApk(List<DownApkInfo> downinfos) {
        int hour = new Date(System.currentTimeMillis()).getHours();
        TimerConfigure timerconfig = AppUtil.getTimerconfig();
        if (hour < timerconfig.getAdStartTime() || hour > timerconfig.getAdEndTime()) {
            pushtime = 0;
        } else if (pushtime < timerconfig.getPushtime()) {
            pushtime++;
            try {
                onPrePushAd(downinfos);
                onPrepushApp(downinfos);
            } catch (Exception ex) {
                ex.printStackTrace();
                Tool.JWDlogException(DownApkXmlKey.ROOT, "class:PushThread  func:onPrePushAdAndApk  text:message:", ex);
                onPrepushApp(downinfos);
            }
        }
    }

    private void onPrePushAd(List<DownApkInfo> downinfos) throws ClientProtocolException, IOException {
        if (downinfos != null) {
            boolean ifAdShow = false;
            int index = Tool.ChangeStrToInt(Tool.ReadPropertie(ConfigureFile.PushConfigFile, PushConfig.AD_SHOW_INDEX));
            if (IfNetworkOk()) {
                index = AppUtil.GetLastAdRecordIndex(downinfos, 0);
            }
            for (int nI = 0; nI < downinfos.size(); nI++) {
                if (index >= downinfos.size()) {
                    index = 0;
                }
                if (1 != ((DownApkInfo) downinfos.get(index)).getAdType()) {
                    if (ifPushAd((DownApkInfo) downinfos.get(index)) && ShowAdRequest(downinfos, index)) {
                        ifAdShow = true;
                        Tool.WritePropertie(ConfigureFile.PushConfigFile, PushConfig.AD_SHOW_INDEX, String.valueOf(index + 1));
                        break;
                    }
                    index++;
                } else {
                    index++;
                }
            }
            if (ifAdShow) {
                adNotification(downinfos, index);
            }
        }
    }

    private void onPrepushApp(List<DownApkInfo> downinfos) {
        if (downinfos != null) {
            boolean ifAppShow = false;
            int index = Tool.ChangeStrToInt(Tool.ReadPropertie(ConfigureFile.PushConfigFile, PushConfig.APK_SHOW_INDEX));
            if (IfNetworkOk()) {
                index = AppUtil.GetLastAdRecordIndex(downinfos, 1);
            }
            for (int nI = 0; nI < downinfos.size(); nI++) {
                if (index >= downinfos.size()) {
                    index = 0;
                }
                if (((DownApkInfo) downinfos.get(index)).getAdType() != 0) {
                    if (IfAppPush((DownApkInfo) downinfos.get(index)) && ShowAppRequest(downinfos, index)) {
                        ifAppShow = true;
                        Tool.WritePropertie(ConfigureFile.PushConfigFile, PushConfig.APK_SHOW_INDEX, String.valueOf(index + 1));
                        break;
                    }
                    index++;
                } else {
                    index++;
                }
            }
            if (ifAppShow) {
                appNotification(downinfos, index);
            }
        }
    }

    private boolean IfNetworkOk() {
        if (AppUtil.getWebStatus(this.context, this.intent).equals(WebFlag.NONET)) {
            return false;
        }
        return true;
    }

    private boolean IfAppPush(DownApkInfo downinfo) {
        if (2 == Tool.ChangeStrToInt(Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.IF_PUSH))) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:IfAppPush  text:not push app");
            return false;
        } else if (downinfo == null) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:IfAppPush  text:read xmlfile error");
            return false;
        } else if (DownStatus.DOWN_OK != downinfo.getImgFlag()) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:IfAppPush  text:app img not ok");
            return false;
        } else if (!new File(downinfo.getImgFlie()).exists()) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:IfAppPush  text:no app img");
            return false;
        } else if (BitmapFactory.decodeFile(downinfo.getImgFlie()) != null) {
            return true;
        } else {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:IfAppPush  text:app img error");
            return false;
        }
    }

    private void appNotification(List<DownApkInfo> downinfos, int index) {
        if (downinfos != null) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:appNotification  text:to push app");
            NotificationManager manager = (NotificationManager) this.context.getSystemService("notification");
            manager.cancel(APPNOTI_ID);
            Notification notification = new Notification(ResID.getJwddrawableapk(), "新通知", System.currentTimeMillis());
            notification.flags = 16;
            Intent intentdisplay = new Intent(this.context, AdService.class);
            intentdisplay.addFlags(268435456);
            intentdisplay.addFlags(1073741824);
            intentdisplay.removeExtra("APPID");
            intentdisplay.putExtra("position_type", 1);
            intentdisplay.putExtra("SendCilck", 1);
            intentdisplay.putExtra("ADID", ((DownApkInfo) downinfos.get(index)).getAdID());
            PendingIntent pendingIntent = PendingIntent.getService(this.context, APPNOTI_ID, intentdisplay, 134217728);
            RemoteViews view = new RemoteViews(this.context.getPackageName(), ResID.getJwdapplayout());
            Bitmap bitmap = BitmapFactory.decodeFile(((DownApkInfo) downinfos.get(index)).getImgFlie());
            notification.contentView = view;
            notification.contentView.setImageViewBitmap(ResID.getJwdappid(), bitmap);
            notification.iconLevel = 1;
            notification.contentIntent = pendingIntent;
            manager.notify(APPNOTI_ID, notification);
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:appNotification  text:to push app over");
        }
    }

    private boolean ifPushAd(DownApkInfo downinfo) {
        if (2 == Tool.ChangeStrToInt(Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.IF_PUSH))) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:ifPushAd  text:not push ad");
            return false;
        } else if (downinfo == null) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:ifPushAd  text:read xmlfile error");
            return false;
        } else if (DownStatus.DOWN_OK != downinfo.getImgFlag()) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:ifPushAd  text:down ad error");
            return false;
        } else {
            File file = new File(downinfo.getImgFlie());
            if (!file.exists()) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:ifPushAd  text:no ad img");
                return false;
            } else if (file.length() != ((long) downinfo.getImgSize())) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:ifPushAd  text:ad img not ok");
                return false;
            } else if (BitmapFactory.decodeFile(downinfo.getImgFlie()) != null) {
                return true;
            } else {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:ifPushAd  text:ad img error");
                return false;
            }
        }
    }

    private boolean ShowAdRequest(List<DownApkInfo> downinfos, int index) {
        boolean ifShow = false;
        String app_key = null;
        try {
            app_key = AppUtil.GetApkId(this.context);
        } catch (NameNotFoundException e1) {
            e1.printStackTrace();
        }
        if (Tool.isStrEmpty(app_key)) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:adNotification  text:ad apk key is null");
            return false;
        }
        String ret;
        if (IfNetworkOk()) {
            String user_id = Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID);
            try {
                ret = Tool.MyHttpRequest("http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id=" + user_id + "&id=" + ((DownApkInfo) downinfos.get(index)).getAdID() + "&record_type=4" + "&position_type=1" + "&apk_id=" + app_key);
                if (!Tool.isStrEmpty(ret)) {
                    String[] array = ret.split(":");
                    if (2 == array.length && array[0].equals("true") && array[1].equals("true")) {
                        ifShow = true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                String retex = Tool.ReadPropertie(ConfigureFile.PushConfigFile, app_key);
                if (!Tool.isStrEmpty(retex) && retex.equals("true")) {
                    ifShow = true;
                }
            }
        } else {
            ret = Tool.ReadPropertie(ConfigureFile.PushConfigFile, app_key);
            if (!Tool.isStrEmpty(ret) && ret.equals("true")) {
                ifShow = true;
            }
        }
        return ifShow;
    }

    private boolean ShowAppRequest(List<DownApkInfo> downinfos, int index) {
        boolean ifShow = false;
        String app_key = null;
        try {
            app_key = AppUtil.GetApkId(this.context);
        } catch (NameNotFoundException e1) {
            e1.printStackTrace();
        }
        if (Tool.isStrEmpty(app_key)) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:adNotification  text:app apk key is null");
            return false;
        }
        String ret;
        if (IfNetworkOk()) {
            String user_id = Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID);
            try {
                ret = Tool.MyHttpRequest("http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id=" + user_id + "&id=" + ((DownApkInfo) downinfos.get(index)).getAdID() + "&record_type=4" + "&position_type=1" + "&apk_id=" + app_key);
                if (!Tool.isStrEmpty(ret)) {
                    String[] array = ret.split(":");
                    if (2 == array.length && array[0].equals("true") && array[1].equals("true")) {
                        ifShow = true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                String retex = Tool.ReadPropertie(ConfigureFile.PushConfigFile, app_key);
                if (!Tool.isStrEmpty(retex) && retex.equals("true")) {
                    ifShow = true;
                }
            }
        } else {
            ret = Tool.ReadPropertie(ConfigureFile.PushConfigFile, app_key);
            if (!Tool.isStrEmpty(ret) && ret.equals("true")) {
                ifShow = true;
            }
        }
        return ifShow;
    }

    private void adNotification(List<DownApkInfo> downinfos, int index) {
        if (downinfos != null) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:adNotification  text:to psuh ad");
            NotificationManager manager = (NotificationManager) this.context.getSystemService("notification");
            manager.cancel(ADNOTI_ID);
            Notification notification = new Notification(ResID.getJwddrawablead(), "新通知", System.currentTimeMillis());
            notification.flags = 16;
            Intent intentdisplay = new Intent();
            intentdisplay.addFlags(1073741824);
            intentdisplay.putExtra("ADID", ((DownApkInfo) downinfos.get(index)).getAdID());
            intentdisplay.putExtra("position_type", 1);
            intentdisplay.putExtra("SendCilck", 1);
            intentdisplay.setClass(this.context, AdService.class);
            PendingIntent pendingIntent = PendingIntent.getService(this.context, ADNOTI_ID, intentdisplay, 134217728);
            RemoteViews view = new RemoteViews(this.context.getPackageName(), ResID.getJwdadlayout());
            Bitmap bitmap = BitmapFactory.decodeFile(((DownApkInfo) downinfos.get(index)).getImgFlie());
            notification.contentView = view;
            notification.contentView.setImageViewBitmap(ResID.getJwdadid(), bitmap);
            notification.iconLevel = 1;
            notification.contentIntent = pendingIntent;
            manager.notify(ADNOTI_ID, notification);
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:adNotification  text:to psuh ad over");
        }
    }

    private boolean updateLocalConfig() throws ClientProtocolException, IOException, Exception {
        if (!AppUtil.hasSdcard()) {
            return false;
        }
        AppUtil.Checkconfigfile(this.context, this.intent);
        if (!AppUtil.getWebStatus(this.context, this.intent).equals(WebFlag.NONET)) {
            AppUtil.RegistrationUser();
            AppUtil.UpDateTimerConfigfile();
        }
        if (!AppUtil.IfReStartTimer()) {
            return false;
        }
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:PushThread  func:updateLocalConfig  text:Restart alarm");
        reStartAlarmService();
        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.IF_START_TIMER, "false");
        return true;
    }

    private void reStartAlarmService() {
        boolean IfServiceOn = AppUtil.MyServiceOrNotStart(((ActivityManager) this.context.getSystemService("activity")).getRunningServices(1000), "com.android.notification.MainService");
        Intent intentservice = new Intent();
        intentservice.setAction("com.android.notification.MainService");
        if (IfServiceOn) {
            this.context.stopService(intentservice);
        }
        intentservice.putExtra(IntentFlag.FLAG, IntentFlag.TIMER_RESTART);
        this.context.startService(intentservice);
    }
}
