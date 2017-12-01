package com.android.notification;

import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.IBinder;
import android.widget.Toast;
import com.android.notification.bean.DownApkInfo;
import com.android.notification.configure.ConfigureFile;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.DownStatus;
import com.android.notification.configure.PropertiesKey.PhoneConfig;
import com.android.notification.configure.WebFlag;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;
import java.io.File;
import java.io.IOException;

public class AdService extends Service {
    private DwonApkThread downApkThread = null;
    private DownApkInfo downinfo = null;
    private Context g_context = null;
    private Intent g_intent = null;
    private int position_type = 8;

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onStart(Intent intent, int startid) {
        this.g_context = getApplicationContext();
        this.g_intent = intent;
        if (intent == null) {
            Toast.makeText(this.g_context, "网络异常终止下载...", 0).show();
            return;
        }
        int AppId = intent.getIntExtra("ADID", 0);
        this.position_type = intent.getIntExtra("position_type", 8);
        try {
            this.downinfo = AppUtil.ReadDownLoadInfo(ConfigureFile.DownInfoFile, AppId);
            if (this.downinfo == null) {
                Toast.makeText(this.g_context, "网络异常终止下载...", 0).show();
                stopService(intent);
                return;
            }
            if (DownStatus.BAN_DOWN == this.downinfo.getAdFlag()) {
                this.downinfo.setAdFlag(DownStatus.DOWN_ERROR);
                AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.downinfo, 1);
            }
            sendRequest(AppId);
        } catch (IOException e1) {
            e1.printStackTrace();
            sendRequest(AppId);
        }
    }

    private void sendRequest(int AppId) {
        try {
            if (!SendCilckRequest()) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:DownLoadService  func:sendRequest  text:error click");
                stopService(this.g_intent);
                return;
            }
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        push();
        int flag = this.g_intent.getIntExtra("SendCilck", 0);
        String webStatus = AppUtil.getWebStatus(getApplicationContext(), this.g_intent);
        try {
            if (!Tool.isStrEmpty(webStatus) && !webStatus.equals(WebFlag.NONET) && 1 == flag) {
                String user_id = Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID);
                int id = this.downinfo.getAdID();
                Tool.MyHttpRequest("http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id=" + user_id + "&id=" + id + "&record_type=1" + "&position_type=" + this.position_type + "&apk_id=" + AppUtil.GetApkId(this.g_context));
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (NameNotFoundException e2) {
            e2.printStackTrace();
        }
    }

    private void push() {
        if (Tool.IfAPKOk(this.downinfo.getAdUrl())) {
            pushApk();
        } else {
            pushAd();
        }
    }

    private void pushAd() {
        String adurl = this.downinfo.getAdUrl();
        if (!Tool.isStrEmpty(adurl)) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(adurl));
            intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
            intent.addFlags(268435456);
            this.g_context.startActivity(intent);
            stopService(this.g_intent);
        }
    }

    private int GetNotiID(int adID) {
        return Tool.ChangeStrToInt(String.valueOf(20120208) + adID);
    }

    private void pushApk() {
        if (ifApkOk()) {
            ((NotificationManager) this.g_context.getSystemService("notification")).cancel(GetNotiID(this.downinfo.getAdID()));
            RequestInstall();
            stopService(this.g_intent);
            return;
        }
        StartDwonApk();
    }

    private void GetApkFileLenth() {
        try {
            if (this.downinfo.getAdSize() == 0) {
                String webStatus = AppUtil.getWebStatus(getApplicationContext(), this.g_intent);
                if (!(Tool.isStrEmpty(webStatus) || webStatus.equals(WebFlag.NONET))) {
                    AppUtil.GetDownSize(this.downinfo, 2);
                }
            }
            if (this.downinfo.getAdSize() == 0) {
                Toast.makeText(this.g_context, "网络异常终止下载...", 0).show();
                stopService(this.g_intent);
                return;
            }
            startThead();
        } catch (IOException e) {
            e.printStackTrace();
            Toast.makeText(this.g_context, "网络异常终止下载...", 0).show();
        }
    }

    private void startThead() {
        Toast.makeText(this.g_context, "开始下载...", 0).show();
        this.downApkThread = new DwonApkThread(this.downinfo, getApplicationContext(), this.g_intent, this.position_type);
        this.downApkThread.start();
    }

    private boolean ifApkOk() {
        if (DownStatus.DOWN_OK == this.downinfo.getAdFlag()) {
            File apkFile = new File(this.downinfo.getAdFlie());
            if (apkFile.exists() && apkFile.length() == ((long) this.downinfo.getAdSize()) && 0 != apkFile.length()) {
                return true;
            }
        }
        return false;
    }

    private void StartDwonApk() {
        if (DownStatus.DOWN_NOW == this.downinfo.getAdFlag()) {
            Toast.makeText(this.g_context, "正在下载...", 0).show();
            stopService(this.g_intent);
        } else if (this.downinfo.getAdSize() == 0) {
            GetApkFileLenth();
        } else {
            startThead();
        }
    }

    private void RequestInstall() {
        String user_id = Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID);
        int id = this.downinfo.getAdID();
        try {
            String url = "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id=" + user_id + "&id=" + id + "&record_type=3" + "&position_type=" + this.position_type + "&apk_id=" + AppUtil.GetApkId(this.g_context);
            if (!AppUtil.getWebStatus(this.g_context, this.g_intent).equals(WebFlag.NONET)) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:DownLoadService  func:RequestInstall  text:Send installApk request");
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

    private boolean SendCilckRequest() throws IOException {
        String oldClickTime = this.downinfo.getCilckTime();
        String newClickTime = Tool.getSysTime();
        if (Tool.isStrEmpty(oldClickTime) || 0 == Tool.ChangeStrToLong(oldClickTime)) {
            this.downinfo.setCilckTime(newClickTime);
            AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.downinfo, 1);
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AadService  func:SendCilckRequest  text:oldClickTime is null");
            return true;
        }
        long oldtime = Tool.ChangeStrToLong(oldClickTime);
        long newtime = Tool.ChangeStrToLong(newClickTime);
        this.downinfo.setCilckTime(newClickTime);
        AppUtil.WriteDownLoadInfo(ConfigureFile.DownInfoFile, this.downinfo, 1);
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AadService  func:SendCilckRequest  text:oldClickTime :" + oldtime + "newClickTime:" + newtime);
        if (newtime - oldtime > 15) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AadService  func:SendCilckRequest  text:oldClickTime < newClickTime :" + oldtime);
            return true;
        }
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AadService  func:SendCilckRequest  text:oldClickTime == newClickTime:" + newtime);
        return false;
    }
}
