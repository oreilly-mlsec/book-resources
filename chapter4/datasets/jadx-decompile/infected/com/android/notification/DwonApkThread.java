package com.android.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.widget.RemoteViews;
import com.android.notification.bean.DownApkInfo;
import com.android.notification.bean.ResID;
import com.android.notification.configure.ConfigureFile;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.DownStatus;
import com.android.notification.configure.PropertiesKey.PhoneConfig;
import com.android.notification.configure.WebFlag;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;
import java.io.File;
import java.io.IOException;

public class DwonApkThread extends Thread {
    private int APPNOTI_ID = 20120208;
    private String apkName = null;
    private DownApkInfo downinfo = null;
    private Context g_context = null;
    private Intent g_intent = null;
    private Handler handler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0:
                    DwonApkThread.this.notification.contentView.setTextViewText(ResID.getJwdtextdown(), new StringBuilder(String.valueOf(DwonApkThread.this.GetProgress())).append("%").toString());
                    DwonApkThread.this.notification.contentView.setProgressBar(ResID.getJwdnotiprogress(), DwonApkThread.this.downinfo.getAdSize(), DwonApkThread.this.GetApkSize(), false);
                    DwonApkThread.this.notificationMagager.notify(DwonApkThread.this.APPNOTI_ID, DwonApkThread.this.notification);
                    return;
                case 1:
                    String str = DwonApkThread.this.downinfo.getAdFlie();
                    Intent apkintent = new Intent("android.intent.action.VIEW");
                    apkintent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
                    PendingIntent pengdingIntent = PendingIntent.getActivity(DwonApkThread.this.g_context, 0, apkintent, 0);
                    DwonApkThread.this.notification.icon = 17301634;
                    DwonApkThread.this.notification.contentIntent = pengdingIntent;
                    DwonApkThread.this.notification.contentView.setTextViewText(ResID.getJwdtextdown(), "下载完成");
                    DwonApkThread.this.notification.flags = 16;
                    DwonApkThread.this.notification.contentView.setViewVisibility(ResID.getJwdnotiprogress(), 4);
                    DwonApkThread.this.notificationMagager.notify(DwonApkThread.this.APPNOTI_ID, DwonApkThread.this.notification);
                    DwonApkThread.this.RequestInstall();
                    DwonApkThread.this.g_context.stopService(DwonApkThread.this.g_intent);
                    return;
                case 2:
                    DwonApkThread.this.notification.icon = 17301634;
                    DwonApkThread.this.notification.contentView.setTextViewText(ResID.getJwdtextdown(), new StringBuilder(String.valueOf(DwonApkThread.this.GetProgress())).append("%").toString());
                    DwonApkThread.this.notification.contentView.setProgressBar(ResID.getJwdnotiprogress(), DwonApkThread.this.downinfo.getAdSize(), DwonApkThread.this.GetApkSize(), false);
                    DwonApkThread.this.notificationMagager.notify(DwonApkThread.this.APPNOTI_ID, DwonApkThread.this.notification);
                    DwonApkThread.this.g_context.stopService(DwonApkThread.this.g_intent);
                    return;
                default:
                    DwonApkThread.this.g_context.stopService(DwonApkThread.this.g_intent);
                    return;
            }
        }
    };
    private Notification notification = null;
    private NotificationManager notificationMagager = null;
    private int position_type = 8;

    public DwonApkThread(DownApkInfo downinfo, Context g_context, Intent g_intent, int position) {
        this.downinfo = downinfo;
        this.g_context = g_context;
        this.g_intent = g_intent;
        this.position_type = position;
        setNotiID();
        CheckFile();
    }

    public void run() {
        GetApkName();
        Message msg = new Message();
        InitNotification();
        try {
            Updatedowninfo();
            if (DownStatus.BAN_DOWN == this.downinfo.getAdFlag() || DownStatus.DOWN_ERROR == this.downinfo.getAdFlag()) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:DwonApkThread  func:run  text:begin Down");
                this.downinfo.setAdFlag(DownStatus.DOWN_NOW);
                AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.downinfo, 1);
                if (AppUtil.getWebStatus(this.g_context, this.g_intent).equals(WebFlag.NONET)) {
                    msg.what = 2;
                    this.handler.sendMessage(msg);
                    this.downinfo.setAdFlag(DownStatus.DOWN_ERROR);
                    this.downinfo.setDownFlag(DownStatus.DOWN_ERROR);
                    AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.downinfo, 1);
                } else if (AppUtil.Downloadapk(this.downinfo, 1, this.handler, this.position_type, this.g_context)) {
                    msg.what = 1;
                    this.handler.sendMessage(msg);
                    this.downinfo.setAdFlag(DownStatus.DOWN_OK);
                    this.downinfo.setDownFlag(DownStatus.DOWN_OK);
                    AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.downinfo, 1);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            msg.what = 2;
            this.handler.sendMessage(msg);
            this.downinfo.setAdFlag(DownStatus.DOWN_ERROR);
            this.downinfo.setDownFlag(DownStatus.DOWN_ERROR);
            try {
                AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.downinfo, 1);
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
    }

    private void Updatedowninfo() throws IOException {
        DownApkInfo tempinfo = AppUtil.ReadDownLoadInfo(ConfigureFile.DownInfoFile, this.downinfo.getAdID());
        if (tempinfo != null) {
            this.downinfo = tempinfo;
        }
    }

    private void CheckFile() {
        File apkFile = new File(this.downinfo.getAdFlie());
        if (apkFile.exists() && apkFile.length() > ((long) this.downinfo.getAdSize())) {
            apkFile.delete();
        }
    }

    private void setNotiID() {
        this.APPNOTI_ID = Tool.ChangeStrToInt(new StringBuilder(String.valueOf(String.valueOf(this.APPNOTI_ID))).append(this.downinfo.getAdID()).toString());
    }

    private void GetApkName() {
        String[] akp = this.downinfo.getAdUrl().split("/");
        String temp = akp[akp.length - 1].trim();
        if (temp.length() > 4) {
            this.apkName = temp.substring(0, temp.length() - 4);
        }
        this.apkName = "   " + this.apkName;
    }

    private int GetApkSize() {
        File apkFile = new File(this.downinfo.getAdFlie());
        if (apkFile.exists()) {
            return (int) apkFile.length();
        }
        return 0;
    }

    private int GetProgress() {
        if (this.downinfo.getAdSize() == 0) {
            return 0;
        }
        return (GetApkSize() * 100) / this.downinfo.getAdSize();
    }

    private void InitNotification() {
        this.notificationMagager = (NotificationManager) this.g_context.getSystemService("notification");
        this.notificationMagager.cancel(this.APPNOTI_ID);
        this.notification = new Notification();
        this.notification.icon = 17301633;
        this.notification.flags = 32;
        this.notification.contentView = new RemoteViews(this.g_context.getPackageName(), ResID.getJwdappprogress());
        this.notification.contentView.setProgressBar(ResID.getJwdnotiprogress(), this.downinfo.getAdSize(), GetApkSize(), false);
        this.notification.contentView.setTextViewText(ResID.getJwdtextdown(), GetProgress() + "%");
        this.notification.contentView.setTextViewText(ResID.getJwdapkname(), this.apkName);
        this.g_intent.putExtra("SendCilck", 2);
        this.notification.contentIntent = PendingIntent.getService(this.g_context, this.downinfo.getAdID(), this.g_intent, 134217728);
        this.notificationMagager.notify(this.APPNOTI_ID, this.notification);
    }

    private void RequestInstall() {
        String user_id = Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID);
        int id = this.downinfo.getAdID();
        try {
            String url = "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id=" + user_id + "&id=" + id + "&record_type=3" + "&position_type=" + this.position_type + "&apk_id=" + AppUtil.GetApkId(this.g_context);
            if (!AppUtil.getWebStatus(this.g_context, this.g_intent).equals(WebFlag.NONET)) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:RequestInstall  func:RequestInstall  text:Send installApk request");
                Tool.MyHttpRequest(url);
            }
            SysinstallApk();
        } catch (Exception e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:DownLoadService  func:RequestInstall  text:message:", e);
            SysinstallApk();
        }
    }

    private void SysinstallApk() {
        String str = this.downinfo.getAdFlie();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
        intent.addFlags(268435456);
        this.g_context.startActivity(intent);
    }
}
