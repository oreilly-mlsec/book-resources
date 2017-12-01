package com.android.notification.util;

import android.app.ActivityManager.RunningServiceInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.location.Address;
import android.location.Geocoder;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import com.android.notification.bean.DownApkInfo;
import com.android.notification.bean.TimerConfigure;
import com.android.notification.configure.ConfigureFile;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.DownStatus;
import com.android.notification.configure.PropertiesKey.PhoneConfig;
import com.android.notification.configure.PropertiesKey.PushConfig;
import com.android.notification.configure.PropertiesKey.TimerConfig;
import com.android.notification.configure.URLConfigure;
import com.android.notification.configure.WebFlag;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import org.apache.http.client.ClientProtocolException;
import u.aly.bs;

public class AppUtil {
    public static int BOOT_FLAG = 0;
    public static final int g_DownTime = 2;

    public static boolean checkNetOrWifi(Context context) {
        try {
            ConnectivityManager connectivity = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivity != null) {
                NetworkInfo info = connectivity.getActiveNetworkInfo();
                if (info != null && info.isConnected() && info.getState() == State.CONNECTED) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static String getLocalMacAddress(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }

    public boolean isGpsEnabled(Context context) {
        List<String> accessibleProviders = ((LocationManager) context.getSystemService("location")).getProviders(true);
        if (accessibleProviders == null || accessibleProviders.size() <= 0) {
            return false;
        }
        return true;
    }

    public static boolean hasSdcard() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            return true;
        }
        return false;
    }

    public static void createPath(String path) {
        File file = new File(path);
        if (!file.exists()) {
            file.mkdir();
        }
    }

    public static boolean MyServiceOrNotStart(List<RunningServiceInfo> mServiceList, String className) {
        for (int i = 0; i < mServiceList.size(); i++) {
            if (className.equals(((RunningServiceInfo) mServiceList.get(i)).service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    public static String getServiceClassName(List<RunningServiceInfo> mServiceList) {
        String res = bs.b;
        for (int i = 0; i < mServiceList.size(); i++) {
            res = new StringBuilder(String.valueOf(res)).append(((RunningServiceInfo) mServiceList.get(i)).service.getClassName()).append(" /n").toString();
        }
        return res;
    }

    private static boolean IfDownTimerConfig() {
        String strDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis()));
        String timerStartTime = Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.START_TIMER_TIME);
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:IfDownTimerConfig  text:strDate:" + strDate);
        if (Tool.isStrEmpty(timerStartTime)) {
            Tool.WritePropertie(ConfigureFile.TimerConfigFile, TimerConfig.START_TIMER_TIME, strDate);
            return true;
        } else if (timerStartTime.equals(strDate)) {
            return false;
        } else {
            Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.START_TIMER_TIME, strDate);
            return true;
        }
    }

    public static void UpDateTimerConfigfile() throws ClientProtocolException, IOException {
        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.IF_START_TIMER, "false");
        if (IfDownTimerConfig()) {
            String strResult = new String(bs.b);
            strResult = Tool.MyHttpRequest(new StringBuilder(String.valueOf(new String(bs.b))).append("http://www.9wedo.com:89/ads_manage/getTimerconfigure").toString());
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:UpDateTimerConfigfile  text:strResult:" + strResult);
            if (!Tool.isStrEmpty(strResult)) {
                String[] timeconfig = strResult.split(",");
                String version = Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.TIMER_VERSION);
                int len = timeconfig.length;
                if (!version.equals(timeconfig[3])) {
                    Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:UpDateTimerConfigfile  text:to UpDateTimerConfigfile");
                    if (len > 0 && !Tool.isStrEmpty(timeconfig[0])) {
                        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.IF_PUSH, timeconfig[0].trim());
                    }
                    if (len > 1 && !Tool.isStrEmpty(timeconfig[1])) {
                        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.AD_TIME_SLOT, timeconfig[1].trim());
                    }
                    if (len > 2 && !Tool.isStrEmpty(timeconfig[2])) {
                        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.AD_TIME_NOTITIME, timeconfig[2].trim());
                    }
                    if (len > 3 && !Tool.isStrEmpty(timeconfig[3])) {
                        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.TIMER_VERSION, timeconfig[3].trim());
                    }
                    if (len > 4 && !Tool.isStrEmpty(timeconfig[4])) {
                        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.APP_TIME_SLOT, timeconfig[4].trim());
                    }
                    if (len > 5 && !Tool.isStrEmpty(timeconfig[5])) {
                        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.APP_TIME_NOTITIME, timeconfig[5].trim());
                    }
                    if (len > 6 && !Tool.isStrEmpty(timeconfig[6])) {
                        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.XML_APP_RECORD_NUM, timeconfig[6].trim());
                    }
                    if (len > 7 && !Tool.isStrEmpty(timeconfig[7])) {
                        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.XML_AD_RECORD_NUM, timeconfig[7].trim());
                    }
                    if (len > 8 && !Tool.isStrEmpty(timeconfig[8])) {
                        Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.XML_AD_TIME, timeconfig[8].trim());
                    }
                    Tool.UpdatePropertie(ConfigureFile.TimerConfigFile, TimerConfig.IF_START_TIMER, "true");
                }
            }
        }
    }

    public static void RegistrationUser() throws ClientProtocolException, IOException, Exception {
        boolean z = false;
        HashMap<String, String> paraMap = new HashMap();
        paraMap.put("user_id", bs.b + Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID));
        paraMap.put("user_address", bs.b + Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.CITYNAME));
        paraMap.put("model", bs.b + Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.MODEL));
        paraMap.put("sp_name", bs.b + Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.SP_NAME));
        paraMap.put("mobile_os", bs.b + Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.OS));
        boolean ifregist = Boolean.parseBoolean(Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.IFREGIST));
        boolean ifupdate = Boolean.parseBoolean(Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.IFUPDATE));
        if (ifregist) {
            paraMap.put("flag", "1");
        } else if (ifupdate) {
            paraMap.put("flag", "2");
        } else {
            return;
        }
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:RegistrationUser  text:to RegistrationUser");
        String newUserId = bs.b;
        newUserId = Tool.MyHttpPostHashMap("http://www.9wedo.com:89/ads_manage/registUser", paraMap);
        if (!Tool.isStrEmpty(newUserId)) {
            Tool.UpdatePropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID, newUserId);
            String str;
            String str2;
            if (ifregist) {
                str = ConfigureFile.PhoneConfigFile;
                str2 = PhoneConfig.IFREGIST;
                if (!ifregist) {
                    z = true;
                }
                Tool.UpdatePropertie(str, str2, String.valueOf(z));
            } else if (ifupdate) {
                str = ConfigureFile.PhoneConfigFile;
                str2 = PhoneConfig.IFUPDATE;
                if (!ifupdate) {
                    z = true;
                }
                Tool.UpdatePropertie(str, str2, String.valueOf(z));
            }
        }
    }

    private static void DownloadOverRequest(String id, int position_type, Context context) {
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:DownloadOverRequest  text:DownloadOverRequest");
        String user_id = Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID);
        try {
            String url = "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id=" + user_id + "&id=" + id + "&record_type=2" + "&position_type=" + position_type + "&apk_id=" + GetApkId(context);
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:DownloadOverRequest  text:url" + url);
            System.out.print(Tool.MyHttpRequest(url));
        } catch (ClientProtocolException e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:AppUtil func:DownloadOverRequest  text:message:", e);
        } catch (IOException e2) {
            e2.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:AppUtil func:DownloadOverRequest  text:message:", e2);
        } catch (NameNotFoundException e3) {
            e3.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:AppUtil func:DownloadOverRequest  text:message:", e3);
        }
    }

    public static int GetDownSize(DownApkInfo downinfo, int flag) throws IOException {
        int i = 0;
        File file = new File(ConfigureFile.saveAPKPath);
        if (file.exists() || file.mkdirs()) {
            String AdUrl;
            if (1 == flag) {
                AdUrl = downinfo.getImgUrl();
            } else if (2 == flag) {
                AdUrl = downinfo.getAdUrl();
            }
            HttpURLConnection conn = (HttpURLConnection) new URL(AdUrl).openConnection();
            conn.setConnectTimeout(5000);
            conn.connect();
            i = conn.getContentLength();
            conn.disconnect();
            if (1 == flag) {
                downinfo.setImgSize(i);
            } else if (2 == flag) {
                downinfo.setAdSize(i);
            }
        }
        return i;
    }

    public static boolean Downloadapk(DownApkInfo downinfo, int downtime, Handler handler, int position_type, Context context) throws IOException {
        boolean DownAppOk = false;
        String apkUrl = downinfo.getAdUrl();
        File file = new File(ConfigureFile.saveAPKPath);
        if (!file.exists() && !file.mkdirs()) {
            return false;
        }
        int mPos = 0;
        File apkfile = new File(downinfo.getAdFlie());
        if (apkfile.exists()) {
            mPos = (int) apkfile.length();
        } else {
            apkfile.createNewFile();
        }
        if (mPos == 0 || mPos != downinfo.getAdSize()) {
            if (downinfo.getAdSize() != 0 && mPos > downinfo.getAdSize()) {
                mPos = 0;
                apkfile.delete();
                apkfile.createNewFile();
            }
            HttpURLConnection conn = (HttpURLConnection) new URL(apkUrl).openConnection();
            conn.setConnectTimeout(5000);
            conn.setReadTimeout(1800000);
            int length;
            if (downinfo.getAdSize() != 0 || mPos == 0) {
                conn.setRequestProperty("RANGE", "bytes=" + mPos + "-");
                conn.connect();
                length = conn.getContentLength();
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:Downloadapk  text:apkUrl = " + apkUrl);
                int code = conn.getResponseCode();
                if (code == 200 || code == 206) {
                    Message msg;
                    InputStream is = conn.getInputStream();
                    FileOutputStream fos = new FileOutputStream(apkfile, true);
                    int notilen = (length + mPos) / 20;
                    int len = 0;
                    byte[] buf = new byte[1024];
                    while (true) {
                        int numread = is.read(buf);
                        if (numread <= 0) {
                            break;
                        }
                        if (handler != null) {
                            len += numread;
                            if (len >= notilen) {
                                len = 0;
                                msg = new Message();
                                msg.what = 0;
                                handler.sendMessage(msg);
                            }
                        }
                        fos.write(buf, 0, numread);
                    }
                    if (handler != null) {
                        msg = new Message();
                        msg.what = 0;
                        handler.sendMessage(msg);
                    }
                    fos.close();
                    is.close();
                    conn.disconnect();
                    if (((long) downinfo.getAdSize()) != apkfile.length() && downtime != 2) {
                        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:Downloadapk  text:Downloadapk Failure down time" + downtime);
                    } else if (((long) downinfo.getAdSize()) == apkfile.length()) {
                        DownAppOk = true;
                        DownloadOverRequest(String.valueOf(downinfo.getAdID()), position_type, context);
                    } else {
                        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:Downloadapk  text:Downloadapk Failure");
                    }
                    return DownAppOk;
                }
                conn.disconnect();
                return false;
            }
            conn.connect();
            length = conn.getContentLength();
            downinfo.setAdSize(length);
            WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
            if (mPos == length) {
                DownAppOk = true;
            }
            conn.disconnect();
            return DownAppOk;
        }
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:Downloadapk  text:apk size is ok");
        return true;
    }

    public static boolean DownloadImg(DownApkInfo downinfo, int downtime, int adType, int position_type) throws IOException {
        boolean DownAppOk = false;
        if (downinfo == null) {
            return false;
        }
        String ImgUrl = downinfo.getImgUrl();
        String SaveFile = downinfo.getImgFlie();
        int ImgSize = downinfo.getImgSize();
        int mPos = 0;
        File apkfile = new File(SaveFile);
        if (apkfile.exists()) {
            mPos = (int) apkfile.length();
        } else {
            apkfile.createNewFile();
        }
        if (mPos != 0 && mPos == ImgSize) {
            return true;
        }
        HttpURLConnection conn = (HttpURLConnection) new URL(ImgUrl).openConnection();
        conn.setConnectTimeout(5000);
        conn.setReadTimeout(1800000);
        int length;
        if (ImgSize != 0 || mPos == 0) {
            conn.setRequestProperty("RANGE", "bytes=" + mPos + "-");
            conn.connect();
            length = conn.getContentLength();
            downinfo.setImgSize(length + mPos);
            WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
            if (conn.getResponseCode() == 200 || conn.getResponseCode() == 206) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:DownloadImg  text:ImgUrl:" + ImgUrl);
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:DownloadImg  text:SaveFile:" + SaveFile);
                InputStream is = conn.getInputStream();
                FileOutputStream fos = new FileOutputStream(apkfile, true);
                byte[] buf = new byte[1024];
                while (true) {
                    int numread = is.read(buf);
                    if (numread <= 0) {
                        break;
                    }
                    fos.write(buf, 0, numread);
                }
                fos.close();
                is.close();
                conn.disconnect();
                if (((long) (mPos + length)) != apkfile.length() && downtime != 2) {
                    Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:DownloadImg  text:DownloadImg Failure downtime:" + downtime);
                    apkfile.delete();
                } else if (((long) (mPos + length)) == apkfile.length()) {
                    DownAppOk = true;
                    Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:DownloadImg  text:DownloadImg Ok");
                } else {
                    apkfile.delete();
                }
                return DownAppOk;
            }
            conn.disconnect();
            return false;
        }
        conn.connect();
        length = conn.getContentLength();
        downinfo.setImgSize(length);
        WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
        if (mPos == length) {
            DownAppOk = true;
        }
        conn.disconnect();
        return DownAppOk;
    }

    private static void UpdateRecordFile(List<DownApkInfo> downInfos, String filename, int adType, int position_type) throws ClientProtocolException, IOException {
        if (downInfos != null) {
            String Downurl = bs.b;
            String httpUrl = bs.b;
            int id = 0;
            int ad_class = adType + 1;
            if (GetLastAdRecord(downInfos, adType) != null) {
                id = GetLastAdRecord(downInfos, adType).getAdID();
            }
            httpUrl = "http://www.9wedo.com:89/ads_manage/getDownloadInfo?id=" + id + "&user_id=" + Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID) + "&ad_class=" + ad_class;
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:UpdateXMLFile  text:httpUrl=" + httpUrl);
            Downurl = Tool.MyHttpRequest(httpUrl);
            if (!Tool.isStrEmpty(Downurl)) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:UpdateXMLFile  text:Downurl=" + Downurl);
                DownApkInfo newDwonInfo = WriteDownApkInfo(Downurl.split(","), adType);
                if (newDwonInfo != null) {
                    int len = downInfos.size();
                    for (int nI = 0; nI < len; nI++) {
                        if (((DownApkInfo) downInfos.get(nI)).getAdID() == newDwonInfo.getAdID()) {
                            DownApkInfo downInfo = (DownApkInfo) downInfos.get(nI);
                            downInfos.remove(nI);
                            if (!newDwonInfo.getAdFlie().equals(downInfo.getAdFlie())) {
                                downInfo.setAdFlag(DownStatus.BAN_DOWN);
                            }
                            downInfo.setAddRecoedTime(Tool.getSysTimeMS());
                            downInfos.add(downInfo);
                            WriteDownLoadInfo(filename, downInfo, 1);
                            return;
                        }
                    }
                    downInfos.add(newDwonInfo);
                    WriteDownLoadInfo(filename, newDwonInfo, 1);
                }
            }
        }
    }

    private static DownApkInfo WriteDownApkInfo(String[] strarray, int adType) throws IOException {
        if (strarray == null || strarray[3] == null) {
            return null;
        }
        DownApkInfo retdi = new DownApkInfo();
        retdi.setAdID(Tool.ChangeStrToInt(strarray[3]));
        retdi.setCilckTime("0");
        retdi.setDownFlag(DownStatus.DOWN_ERROR);
        retdi.setAdType(adType);
        retdi.setAddRecoedTime(Tool.getSysTimeMS());
        int len = strarray.length;
        if (len > 0 && !Tool.isStrEmpty(strarray[0]) && IfADURLOk(strarray[0])) {
            if (Tool.IfAPKOk(strarray[0])) {
                retdi.setAdUrl(strarray[0]);
                retdi.setAdFlie(ConfigureFile.saveAPKPath + "/" + getLastFileName(strarray[0], adType));
                retdi.setAdFlag(DownStatus.BAN_DOWN);
                retdi.setAdSize(0);
            } else {
                retdi.setAdUrl(strarray[0].trim());
                retdi.setAdFlie(strarray[0].trim());
                retdi.setAdFlag(DownStatus.DOWN_OK);
                retdi.setAdSize(0);
            }
        }
        if (len > 1 && !Tool.isStrEmpty(strarray[1])) {
            retdi.setImgUrl(new StringBuilder(URLConfigure.BaseUrl).append(strarray[1].trim()).toString());
            retdi.setImgFlie(ConfigureFile.saveAppImgPath + "/" + getLastFileName(strarray[1], adType));
            retdi.setImgFlag(DownStatus.DOWN_ERROR);
            retdi.setImgSize(0);
        }
        if (len <= 4 || Tool.isStrEmpty(strarray[4]) || !Tool.IfAPKOk(strarray[4])) {
            return retdi;
        }
        retdi.setAdUrl(strarray[4].trim());
        retdi.setAdFlie(ConfigureFile.saveAPKPath + "/" + getLastFileName(strarray[4], adType));
        retdi.setAdFlag(DownStatus.BAN_DOWN);
        GetDownSize(retdi, 2);
        return retdi;
    }

    private static String getLastFileName(String strFilename, int adtype) {
        if (strFilename == null) {
            return null;
        }
        String[] retarray = strFilename.trim().split("/");
        if (retarray.length < 1) {
            return null;
        }
        String apkname = retarray[retarray.length - 1];
        String str1 = apkname.substring(0, apkname.length() - 4);
        return new StringBuilder(String.valueOf(str1)).append(adtype).append(apkname.substring(apkname.length() - 4, apkname.length())).toString();
    }

    public static void toDwonApk(DownApkInfo lastApp, int position_type, Context context) throws IOException {
        if (lastApp == null) {
            return;
        }
        if (DownStatus.DOWN_OK == lastApp.getAdID() && DownStatus.DOWN_OK == lastApp.getImgFlag()) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:toDwonApk  text:app is ok ,no need to down");
            return;
        }
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:toDwonApk  text:start to down app");
        preDwonLoadImg(lastApp, position_type, context);
    }

    public static int GetLastAdRecordIndex(List<DownApkInfo> updatedownInfos, int adType) {
        int retAI = 0;
        if (updatedownInfos == null) {
            return 0;
        }
        for (int nI = updatedownInfos.size() - 1; nI >= 0; nI--) {
            if (adType == ((DownApkInfo) updatedownInfos.get(nI)).getAdType()) {
                retAI = nI;
                break;
            }
        }
        return retAI;
    }

    public static DownApkInfo GetLastAdRecord(List<DownApkInfo> updatedownInfos, int adType) {
        DownApkInfo retAI = null;
        if (updatedownInfos == null) {
            return null;
        }
        for (int nI = updatedownInfos.size() - 1; nI >= 0; nI--) {
            if (adType == ((DownApkInfo) updatedownInfos.get(nI)).getAdType()) {
                retAI = (DownApkInfo) updatedownInfos.get(nI);
                break;
            }
        }
        return retAI;
    }

    private static boolean ShowAdRequest(List<DownApkInfo> downinfos, int index, String webStatus, String apk_id) {
        boolean ifShow = false;
        String user_id = Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID);
        String url = "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id=" + user_id + "&id=" + ((DownApkInfo) downinfos.get(index)).getAdID() + "&record_type=4" + "&position_type=2" + "&apk_id=" + apk_id;
        String retex;
        if (webStatus.equals(WebFlag.NONET)) {
            retex = Tool.ReadPropertie(ConfigureFile.PushConfigFile, apk_id);
            if (Tool.isStrEmpty(retex) || !retex.equals("true")) {
                return false;
            }
            return true;
        }
        try {
            String ret = Tool.MyHttpRequest(url);
            if (!Tool.isStrEmpty(ret)) {
                String[] array = ret.split(":");
                if (2 == array.length) {
                    if (array[0].equals("true") && array[1].equals("true")) {
                        ifShow = true;
                        Tool.WritePropertie(ConfigureFile.PushConfigFile, apk_id, "true");
                    }
                    if (array[1].equals("false")) {
                        WriteDownLoadInfo(ConfigureFile.DownInfoFile, (DownApkInfo) downinfos.get(index), 2);
                        downinfos.remove(index);
                    }
                }
            }
            if (Tool.isStrEmpty(ret) || !ret.equals("true")) {
                return ifShow;
            }
            Tool.WritePropertie(ConfigureFile.PushConfigFile, apk_id, "true");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            retex = Tool.ReadPropertie(ConfigureFile.PushConfigFile, apk_id);
            if (Tool.isStrEmpty(retex) || !retex.equals("true")) {
                return false;
            }
            return true;
        }
    }

    private static int GetAdRecordIndex(List<DownApkInfo> updatedownInfos, String adIndex, int adType, String webStatus, String apk_id) throws IOException {
        int retIndex = -1;
        if (adIndex == null) {
            adIndex = "0";
        }
        int index = Tool.ChangeStrToInt(adIndex.trim());
        if (GetAppRecordNum(updatedownInfos, adType) == 0) {
            return -1;
        }
        boolean ifout = false;
        int nI = 0;
        while (nI < updatedownInfos.size()) {
            index++;
            if (index >= updatedownInfos.size()) {
                index = 0;
            }
            if (!ShowAdRequest(updatedownInfos, index, webStatus, apk_id)) {
                break;
            } else if (adType == ((DownApkInfo) updatedownInfos.get(index)).getAdType()) {
                ifout = true;
                break;
            } else {
                nI++;
            }
        }
        if (ifout) {
            retIndex = index;
        }
        return retIndex;
    }

    public static int GetNextAdRecordIndex(List<DownApkInfo> updatedownInfos, String adIndex, String appIndex, int adType, String webStatus, String apk_id) throws IOException {
        if (updatedownInfos == null) {
            return -1;
        }
        int retIndex;
        if (adType == 0) {
            if (GetAppRecordNum(updatedownInfos, adType) == 0) {
                retIndex = GetAdRecordIndex(updatedownInfos, appIndex, 1, webStatus, apk_id);
            } else {
                retIndex = GetAdRecordIndex(updatedownInfos, adIndex, 0, webStatus, apk_id);
            }
        } else if (GetAppRecordNum(updatedownInfos, adType) == 0) {
            retIndex = GetAdRecordIndex(updatedownInfos, adIndex, 0, webStatus, apk_id);
        } else {
            retIndex = GetAdRecordIndex(updatedownInfos, appIndex, 1, webStatus, apk_id);
        }
        return retIndex;
    }

    public static DownApkInfo GetfirstAdRecord(List<DownApkInfo> updatedownInfos, int adType) {
        DownApkInfo downApkInfo = null;
        if (updatedownInfos == null) {
            return null;
        }
        int len = updatedownInfos.size();
        for (int nI = 0; nI < len; nI++) {
            downApkInfo = (DownApkInfo) updatedownInfos.get(nI);
            if (adType == downApkInfo.getAdType()) {
                break;
            }
        }
        return downApkInfo;
    }

    public static int GetAppRecordNum(List<DownApkInfo> updatedownInfos, int adType) {
        int ret = 0;
        if (updatedownInfos == null) {
            return 0;
        }
        for (int nI = 0; nI < updatedownInfos.size(); nI++) {
            if (1 == ((DownApkInfo) updatedownInfos.get(nI)).getAdType()) {
                ret++;
            }
        }
        if (adType == 0) {
            ret = updatedownInfos.size() - ret;
        }
        return ret;
    }

    private static void preDwonLoadImg(DownApkInfo downInfotemp, int position_type, Context context) throws IOException {
        if (downInfotemp != null) {
            DownApkInfo downinfo = ReadDownLoadInfo(ConfigureFile.DownInfoFile, downInfotemp.getAdID());
            if (downinfo == null) {
                downinfo = downInfotemp;
            }
            if (downinfo == null || Tool.isStrEmpty(downinfo.getImgUrl()) || DownStatus.DOWN_OK == downinfo.getImgFlag() || DownStatus.DOWN_NOW == downinfo.getImgFlag()) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:preDwonLoadImg  text:no need to down ad img");
                preDwonLoadApk(downinfo, position_type, context);
                return;
            }
            downinfo.setImgFlag(DownStatus.DOWN_NOW);
            WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
            File imgpath = new File(ConfigureFile.saveAppImgPath);
            if (!imgpath.exists()) {
                imgpath.mkdir();
            }
            int nI = 1;
            while (nI <= 2) {
                int DownTime = nI;
                try {
                    if (Tool.isStrEmpty(downinfo.getImgUrl())) {
                        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:preDwonLoadImg  text:no ad img stop down apk");
                        return;
                    }
                    Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:preDwonLoadImg  text:DownAdImgTime = " + nI);
                    if (DownloadImg(downinfo, nI, 1, 1)) {
                        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:preDwonLoadImg  text:DownAdImgTime break");
                        downinfo.setImgFlag(DownStatus.DOWN_OK);
                        WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                        preDwonLoadApk(downinfo, position_type, context);
                        return;
                    }
                    if (DownTime == 2) {
                        downinfo.setImgFlag(DownStatus.DOWN_ERROR);
                        WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                        preDwonLoadApk(downinfo, position_type, context);
                    }
                    nI++;
                } catch (Exception e) {
                    e.printStackTrace();
                    Tool.JWDlogException(DownApkXmlKey.ROOT, "class:AppUtil  func:preDwonLoadImg  text:message:", e);
                    if (DownTime == 2) {
                        downinfo.setImgFlag(DownStatus.DOWN_ERROR);
                        WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                        preDwonLoadApk(downinfo, position_type, context);
                    }
                }
            }
        }
    }

    private static void preDwonLoadApk(DownApkInfo downInfotemp, int position_type, Context context) throws IOException {
        if (downInfotemp != null) {
            DownApkInfo downinfo = ReadDownLoadInfo(ConfigureFile.DownInfoFile, downInfotemp.getAdID());
            if (downinfo == null) {
                downinfo = downInfotemp;
            }
            File imgpath;
            if (DownStatus.BAN_DOWN == downinfo.getAdFlag()) {
                imgpath = new File(ConfigureFile.saveAPKPath);
                if (!imgpath.exists()) {
                    imgpath.mkdir();
                }
                if (downinfo.getAdSize() == 0) {
                    GetDownSize(downinfo, 2);
                    WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                }
            } else if (downinfo == null || Tool.isStrEmpty(downinfo.getAdUrl()) || DownStatus.DOWN_OK == downinfo.getAdFlag() || DownStatus.DOWN_NOW == downinfo.getAdFlag()) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:preDwonLoadApk  text:no need to down apk");
                if (DownStatus.DOWN_OK == downinfo.getImgFlag()) {
                    downinfo.setDownFlag(DownStatus.DOWN_OK);
                } else {
                    downinfo.setDownFlag(DownStatus.DOWN_ERROR);
                }
                WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
            } else {
                imgpath = new File(ConfigureFile.saveAPKPath);
                if (!imgpath.exists()) {
                    imgpath.mkdir();
                }
                downinfo.setAdFlag(DownStatus.DOWN_NOW);
                WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                int nI = 1;
                while (nI <= 2) {
                    int DownTime = nI;
                    try {
                        if (Downloadapk(downinfo, nI, null, position_type, context)) {
                            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:preDwonLoadApk  text:DownApkTime break ");
                            DownTime = 0;
                            downinfo.setAdFlag(DownStatus.DOWN_OK);
                            if (DownStatus.DOWN_OK == downinfo.getImgFlag()) {
                                downinfo.setDownFlag(DownStatus.DOWN_OK);
                            } else {
                                downinfo.setDownFlag(DownStatus.DOWN_ERROR);
                            }
                            WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                            return;
                        }
                        if (2 == DownTime) {
                            downinfo.setAdFlag(DownStatus.DOWN_ERROR);
                            downinfo.setDownFlag(DownStatus.DOWN_ERROR);
                            WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                        }
                        nI++;
                    } catch (Exception e) {
                        e.printStackTrace();
                        Tool.JWDlogException(DownApkXmlKey.ROOT, "class:AppUtil  func:preDwonLoadApk  text:message:", e);
                        if (2 == DownTime) {
                            downinfo.setAdFlag(DownStatus.DOWN_ERROR);
                            downinfo.setDownFlag(DownStatus.DOWN_ERROR);
                            WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                        }
                    }
                }
            }
        }
    }

    private static boolean IfADURLOk(String url) {
        if (url.trim().substring(0, 4).equals("http")) {
            return true;
        }
        return false;
    }

    public static void DownLoadAdImg(List<DownApkInfo> downinfos, int downtime) throws IOException {
        UpdateRecordFile(downinfos, ConfigureFile.DownInfoFile, 0, 1);
        File imgpath = new File(ConfigureFile.saveAppImgPath);
        if (!imgpath.exists()) {
            imgpath.mkdir();
        }
        DownApkInfo downinfo = GetLastAdRecord(downinfos, 0);
        if (downinfo == null || DownStatus.DOWN_OK == downinfo.getImgFlag()) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:DownLoadAdImg text:no need to down ad");
        } else if (DownloadImg(downinfo, downtime, 0, 1)) {
            downinfo.setImgFlag(DownStatus.DOWN_OK);
            WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
            if (!Tool.IfAPKOk(downinfo.getAdUrl())) {
                downinfo.setDownFlag(DownStatus.DOWN_OK);
                WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
            } else if (downinfo.getAdSize() == 0) {
                GetDownSize(downinfo, 2);
                WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
            }
        }
    }

    public static boolean DownLoadAppInternalImg(List<DownApkInfo> downinfos, int downtime) throws ClientProtocolException, IOException {
        boolean downOk = false;
        if (downinfos == null) {
            return 0;
        }
        if (downinfos.size() > 10 || downinfos.size() <= 0) {
            if (downinfos.size() == 0) {
                UpdateRecordFile(downinfos, ConfigureFile.DownInfoFile, 0, 0);
            }
        } else if (((DownApkInfo) downinfos.get(downinfos.size() - 1)).getAdType() == 1) {
            UpdateRecordFile(downinfos, ConfigureFile.DownInfoFile, 0, 0);
        } else {
            UpdateRecordFile(downinfos, ConfigureFile.DownInfoFile, 1, 0);
        }
        File imgpath = new File(ConfigureFile.saveAppImgPath);
        if (!imgpath.exists()) {
            imgpath.mkdir();
        }
        if (downinfos.size() > 0) {
            DownApkInfo downinfo = (DownApkInfo) downinfos.get(downinfos.size() - 1);
            if (!(downinfo == null || DownStatus.DOWN_OK == downinfo.getImgFlag() || DownStatus.DOWN_NOW == downinfo.getImgFlag() || !DownloadImg(downinfo, downtime, 0, 0))) {
                downinfo.setImgFlag(DownStatus.DOWN_OK);
                WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                if (!Tool.IfAPKOk(downinfo.getAdUrl())) {
                    downinfo.setDownFlag(DownStatus.DOWN_OK);
                    WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                } else if (downinfo.getAdSize() == 0) {
                    GetDownSize(downinfo, 2);
                    WriteDownLoadInfo(ConfigureFile.DownInfoFile, downinfo, 1);
                }
                downOk = true;
            }
        }
        return downOk;
    }

    public static void DownloadApp(List<DownApkInfo> downInfos, int position_type, Context context) throws ClientProtocolException, IOException {
        if (downInfos != null) {
            UpdateRecordFile(downInfos, ConfigureFile.DownInfoFile, 1, 1);
            DownApkInfo downInfo = GetLastAdRecord(downInfos, 1);
            toDwonApk(downInfo, position_type, context);
            DownApkInfo newdownInfo = ReadDownLoadInfo(ConfigureFile.DownInfoFile, downInfo.getAdID());
            int index = downInfos.indexOf(downInfo);
            downInfos.remove(index);
            downInfos.add(index, newdownInfo);
        }
    }

    public static boolean IfReStartTimer() {
        String str = Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.IF_START_TIMER);
        if (Tool.isStrEmpty(str)) {
            return false;
        }
        return Boolean.parseBoolean(str);
    }

    public static String getWebStatus(Context context, Intent intent) {
        String status = new String(bs.b);
        if (context == null || intent == null) {
            return WebFlag.NONET;
        }
        ConnectivityManager connManager = (ConnectivityManager) context.getSystemService("connectivity");
        State state = connManager.getNetworkInfo(1).getState();
        if (intent.getBooleanExtra("noConnectivity", false)) {
            return WebFlag.NONET;
        }
        if (State.CONNECTED == state) {
            status = WebFlag.WIFI;
        } else {
            if (State.CONNECTED == connManager.getNetworkInfo(0).getState()) {
                status = WebFlag.GPRS;
            } else {
                status = WebFlag.NONET;
            }
        }
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:getWebStatus text:getWebStatus = " + status);
        return status;
    }

    public static void CreateDir(String fileName) {
        String[] patharray = fileName.split("/");
        String path = new String(bs.b);
        for (int ni = 1; ni < patharray.length - 1; ni++) {
            path = new StringBuilder(String.valueOf(path)).append("/").append(patharray[ni]).toString();
        }
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public static void getDefaultPhoneConfig(Context context, Intent intent) {
        try {
            File Phonefile = new File(ConfigureFile.PhoneConfigFile);
            if (!Phonefile.exists()) {
                CreateDir(ConfigureFile.PhoneConfigFile);
                Phonefile.createNewFile();
            }
            Properties Phoneps = new Properties();
            FileInputStream inputfile = new FileInputStream(Phonefile);
            Phoneps.load(inputfile);
            inputfile.close();
            TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
            Tool.WriteDefaultPropertie(Phoneps, PhoneConfig.USER_ID, tm.getDeviceId());
            boolean ifupdate = false || Tool.UpdateDefaultPropertie(Phoneps, PhoneConfig.SOFT_VER, tm.getDeviceSoftwareVersion());
            ifupdate = ifupdate || Tool.UpdateDefaultPropertie(Phoneps, PhoneConfig.SP_NAME, tm.getNetworkOperatorName());
            Tool.WriteDefaultPropertie(Phoneps, PhoneConfig.MODEL, Build.MODEL);
            ifupdate = ifupdate || Tool.UpdateDefaultPropertie(Phoneps, PhoneConfig.SDK, VERSION.SDK);
            ifupdate = ifupdate || Tool.UpdateDefaultPropertie(Phoneps, PhoneConfig.OS, VERSION.RELEASE);
            Tool.WriteDefaultPropertie(Phoneps, PhoneConfig.IFREGIST, "true");
            Tool.WriteDefaultPropertie(Phoneps, PhoneConfig.IFUPDATE, String.valueOf(ifupdate));
            FileOutputStream outputFile = new FileOutputStream(Phonefile);
            Phoneps.store(outputFile, "PhoneConfigFile");
            outputFile.close();
        } catch (IOException e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:AppUtil  func:getDefaultPhoneConfig  text:message:", e);
        }
    }

    public static String reverseLoc(double lat, double lng, Context context) {
        Geocoder gc = new Geocoder(context, Locale.getDefault());
        StringBuilder sb = new StringBuilder();
        try {
            List<Address> addRess = gc.getFromLocation(lat, lng, 10);
            if (addRess.size() > 0) {
                Address ad = (Address) addRess.get(0);
                for (int i = 0; i < ad.getMaxAddressLineIndex(); i++) {
                    sb.append(ad.getAddressLine(i)).append("\n");
                    sb.append(ad.getLocality()).append("\n");
                    sb.append(ad.getCountryName());
                }
            }
        } catch (Exception ex) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:reverseLoc text:message" + ex.getMessage());
        }
        return sb.toString();
    }

    public static boolean checkDefaultTimerConfig() {
        if (Tool.isStrEmpty(Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.AD_TIME_SLOT)) || Tool.isStrEmpty(Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.AD_TIME_NOTITIME)) || Tool.isStrEmpty(Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.APP_TIME_SLOT)) || Tool.isStrEmpty(Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.APP_TIME_NOTITIME))) {
            return false;
        }
        return true;
    }

    public static void getDefaultTimerConfig() {
        try {
            File Timerfile = new File(ConfigureFile.TimerConfigFile);
            if (!Timerfile.exists()) {
                CreateDir(ConfigureFile.TimerConfigFile);
                Timerfile.createNewFile();
            }
            Properties Timerps = new Properties();
            FileInputStream inputfile = new FileInputStream(Timerfile);
            Timerps.load(inputfile);
            inputfile.close();
            Tool.WriteDefaultPropertie(Timerps, TimerConfig.AD_TIME_SLOT, "9-22");
            Tool.WriteDefaultPropertie(Timerps, TimerConfig.AD_TIME_NOTITIME, "240");
            Tool.WriteDefaultPropertie(Timerps, TimerConfig.APP_TIME_SLOT, "9-22");
            Tool.WriteDefaultPropertie(Timerps, TimerConfig.APP_TIME_NOTITIME, "240");
            Tool.WriteDefaultPropertie(Timerps, TimerConfig.TIMER_VERSION, "0.0");
            Tool.WriteDefaultPropertie(Timerps, TimerConfig.IF_PUSH, "1");
            Tool.UpdateDefaultPropertie(Timerps, TimerConfig.IF_START_TIMER, "true");
            Tool.WriteDefaultPropertie(Timerps, TimerConfig.XML_APP_RECORD_NUM, "3");
            Tool.WriteDefaultPropertie(Timerps, TimerConfig.XML_AD_RECORD_NUM, "3");
            Tool.WriteDefaultPropertie(Timerps, TimerConfig.XML_AD_TIME, "15");
            FileOutputStream outputFile = new FileOutputStream(Timerfile);
            Timerps.store(outputFile, "TimerConfigFile");
            outputFile.close();
        } catch (IOException e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:AppUtil  func:getDefaultTimerConfig  text:message:", e);
        }
    }

    public static void getDefaultPushConfig() {
        try {
            File Pushfile = new File(ConfigureFile.PushConfigFile);
            if (!Pushfile.exists()) {
                CreateDir(ConfigureFile.PushConfigFile);
                Pushfile.createNewFile();
            }
            Properties Pushps = new Properties();
            FileInputStream inputfile = new FileInputStream(Pushfile);
            Pushps.load(inputfile);
            inputfile.close();
            Tool.WriteDefaultPropertie(Pushps, PushConfig.IS_APK_INSTALLATION, "false");
            Tool.WriteDefaultPropertie(Pushps, PushConfig.AD_SHOW_INDEX, "0");
            Tool.WriteDefaultPropertie(Pushps, PushConfig.APK_SHOW_INDEX, "0");
            FileOutputStream outputFile = new FileOutputStream(Pushfile);
            Pushps.store(outputFile, "TimerConfigFile");
            outputFile.close();
        } catch (IOException e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:AppUtil  func:getDefaultPushConfig  text:message:", e);
        }
    }

    public static void Checkconfigfile(Context context, Intent intent) {
        if (!new File(ConfigureFile.PhoneConfigFile).exists()) {
            getDefaultPhoneConfig(context, intent);
        }
        if (!new File(ConfigureFile.TimerConfigFile).exists()) {
            getDefaultTimerConfig();
        } else if (Tool.isStrEmpty(Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.TIMER_VERSION))) {
            getDefaultTimerConfig();
        }
        if (!new File(ConfigureFile.PushConfigFile).exists()) {
            getDefaultPushConfig();
        }
    }

    public static TimerConfigure getTimerconfig() {
        TimerConfigure timerconfig = new TimerConfigure();
        try {
            Properties Phoneps = new Properties();
            File Timerfile = new File(ConfigureFile.TimerConfigFile);
            if (!Timerfile.exists()) {
                getDefaultTimerConfig();
            } else if (!checkDefaultTimerConfig()) {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:getTimerconfig text:checkDefaultTimerConfig");
                Timerfile.delete();
                getDefaultTimerConfig();
            }
            FileInputStream inputfile = new FileInputStream(Timerfile);
            Phoneps.load(inputfile);
            inputfile.close();
            int systime = new Date(System.currentTimeMillis()).getHours();
            String adtimeslot = Phoneps.getProperty(TimerConfig.AD_TIME_SLOT);
            if (Tool.isStrEmpty(adtimeslot)) {
                adtimeslot = "9-22";
            }
            timerconfig.setAdStartTime(Tool.ChangeStrToInt(adtimeslot.split("-")[0]));
            timerconfig.setAdEndTime(Tool.ChangeStrToInt(adtimeslot.split("-")[1]));
            String adtimenotitime = Phoneps.getProperty(TimerConfig.AD_TIME_NOTITIME);
            if (Tool.isStrEmpty(adtimenotitime)) {
                adtimenotitime = "240";
            }
            timerconfig.setAdPeriodTime(Tool.ChangeStrToInt(adtimenotitime));
            if (systime < timerconfig.getAdStartTime()) {
                timerconfig.setAdDelayTime((((timerconfig.getAdStartTime() - systime) * 60) * 60) + 15);
            } else if (systime > timerconfig.getAdEndTime()) {
                timerconfig.setAdDelayTime(((((timerconfig.getAdStartTime() + 24) - systime) * 60) * 60) + 15);
            } else {
                timerconfig.setAdDelayTime(5);
            }
            int pushtime = (((timerconfig.getAdEndTime() - timerconfig.getAdStartTime()) * 60) / timerconfig.getAdPeriodTime()) + 1;
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:getTimerconfig text:sum pushtime" + pushtime);
            timerconfig.setPushtime(pushtime);
            String apptimeslot = Phoneps.getProperty(TimerConfig.APP_TIME_SLOT);
            if (Tool.isStrEmpty(apptimeslot)) {
                adtimeslot = "9-22";
            }
            timerconfig.setAppStartTime(Tool.ChangeStrToInt(apptimeslot.split("-")[0]));
            timerconfig.setAppEndTime(Tool.ChangeStrToInt(apptimeslot.split("-")[1]));
            String apptimenotitime = Phoneps.getProperty(TimerConfig.APP_TIME_NOTITIME);
            if (Tool.isStrEmpty(apptimenotitime)) {
                adtimenotitime = "240";
            }
            timerconfig.setAppPeriodTime(Tool.ChangeStrToInt(apptimenotitime));
            if (systime < timerconfig.getAppStartTime()) {
                timerconfig.setAppDelayTime((((timerconfig.getAppStartTime() - systime) * 60) * 60) + 35);
            } else if (systime > timerconfig.getAppEndTime()) {
                timerconfig.setAppDelayTime(((((timerconfig.getAppStartTime() + 24) - systime) * 60) * 60) + 35);
            } else {
                timerconfig.setAppDelayTime(15);
            }
        } catch (IOException e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:AppUtil  func:getTimerconfig  text:message:", e);
        }
        return timerconfig;
    }

    public static void CheckRecordFile() throws IOException {
        List<DownApkInfo> downinfos = ReadDownLoadInfoList(ConfigureFile.DownInfoFile);
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:CheckXMLFile text:CheckXMLFile");
        if (downinfos == null || downinfos.size() == 0) {
            Tool.JWDlog(DownApkXmlKey.ROOT, "class:AppUtil  func:CheckXMLFile text:xml is null");
            return;
        }
        int nI = 0;
        while (nI < downinfos.size()) {
            if (!(Tool.isStrEmpty(((DownApkInfo) downinfos.get(nI)).getImgFlie()) || new File(((DownApkInfo) downinfos.get(nI)).getImgFlie()).exists())) {
                ((DownApkInfo) downinfos.get(nI)).setImgFlag(DownStatus.DOWN_ERROR);
            }
            if (!(Tool.isStrEmpty(((DownApkInfo) downinfos.get(nI)).getAdFlie()) || new File(((DownApkInfo) downinfos.get(nI)).getAdFlie()).exists() || DownStatus.BAN_DOWN == ((DownApkInfo) downinfos.get(nI)).getAdFlag())) {
                ((DownApkInfo) downinfos.get(nI)).setAdFlag(DownStatus.DOWN_ERROR);
            }
            if (DownStatus.DOWN_NOW == ((DownApkInfo) downinfos.get(nI)).getDownFlag()) {
                ((DownApkInfo) downinfos.get(nI)).setDownFlag(DownStatus.DOWN_ERROR);
            }
            if (DownStatus.DOWN_NOW == ((DownApkInfo) downinfos.get(nI)).getImgFlag()) {
                ((DownApkInfo) downinfos.get(nI)).setImgFlag(DownStatus.DOWN_ERROR);
            }
            if (DownStatus.DOWN_NOW == ((DownApkInfo) downinfos.get(nI)).getAdFlag()) {
                ((DownApkInfo) downinfos.get(nI)).setAdFlag(DownStatus.DOWN_ERROR);
            }
            if (((DownApkInfo) downinfos.get(nI)).getAdType() != 0 || Tool.IfAPKOk(((DownApkInfo) downinfos.get(nI)).getAdUrl())) {
                if (DownStatus.DOWN_OK == ((DownApkInfo) downinfos.get(nI)).getImgFlag() && DownStatus.DOWN_OK == ((DownApkInfo) downinfos.get(nI)).getAdFlag()) {
                    ((DownApkInfo) downinfos.get(nI)).setDownFlag(DownStatus.DOWN_OK);
                } else if (DownStatus.DOWN_OK == ((DownApkInfo) downinfos.get(nI)).getImgFlag() && DownStatus.DOWN_OK == ((DownApkInfo) downinfos.get(nI)).getAdFlag()) {
                    ((DownApkInfo) downinfos.get(nI)).setDownFlag(DownStatus.DOWN_OK);
                } else {
                    ((DownApkInfo) downinfos.get(nI)).setDownFlag(DownStatus.DOWN_ERROR);
                }
            } else if (DownStatus.DOWN_OK == ((DownApkInfo) downinfos.get(nI)).getImgFlag()) {
                ((DownApkInfo) downinfos.get(nI)).setDownFlag(DownStatus.DOWN_OK);
            } else {
                ((DownApkInfo) downinfos.get(nI)).setDownFlag(DownStatus.DOWN_ERROR);
            }
            WriteDownLoadInfo(ConfigureFile.DownInfoFile, (DownApkInfo) downinfos.get(nI), 1);
            nI++;
        }
    }

    public static void UpdateAdRecord(List<DownApkInfo> downinfos) throws IOException {
        if (downinfos != null) {
            DownLoadAdImg(downinfos, 1);
        }
    }

    public static void UpdateAppRecord(List<DownApkInfo> downinfos, Context context) throws ClientProtocolException, IOException {
        if (downinfos != null) {
            DownloadApp(downinfos, 1, context);
        }
    }

    private static List<DownApkInfo> DownInfoListBubbleSort(List<DownApkInfo> downApkInfos) {
        for (int nI = downApkInfos.size() - 1; nI >= 0; nI--) {
            for (int nJ = 0; nJ + 1 <= nI; nJ++) {
                if (Tool.CompareString(((DownApkInfo) downApkInfos.get(nJ)).getAddRecoedTime().trim(), ((DownApkInfo) downApkInfos.get(nJ + 1)).getAddRecoedTime().trim()) > 0) {
                    DownApkInfo downApkInfo = (DownApkInfo) downApkInfos.get(nJ);
                    downApkInfos.remove(nJ);
                    downApkInfos.add(nJ + 1, downApkInfo);
                }
            }
        }
        return downApkInfos;
    }

    public static List<DownApkInfo> ReadDownLoadInfoList(String filename) throws IOException {
        List<DownApkInfo> downinfos = new ArrayList();
        File downFile = new File(filename);
        if (downFile.exists()) {
            Properties ps = new Properties();
            FileInputStream inputfile = new FileInputStream(downFile);
            ps.load(inputfile);
            inputfile.close();
            Enumeration enums = ps.propertyNames();
            while (enums.hasMoreElements()) {
                String adId = (String) enums.nextElement();
                if (!Tool.isStrEmpty(adId)) {
                    DownApkInfo downinfo = ReadSingleDownInfo(ps, adId);
                    if (downinfo != null) {
                        downinfos.add(downinfo);
                    }
                }
            }
            DownInfoListBubbleSort(downinfos);
        }
        return downinfos;
    }

    public static DownApkInfo ReadDownLoadInfo(String filename, int adId) throws IOException {
        File downFile = new File(filename);
        if (!downFile.exists()) {
            return null;
        }
        Properties ps = new Properties();
        FileInputStream inputfile = new FileInputStream(downFile);
        ps.load(inputfile);
        inputfile.close();
        return ReadSingleDownInfo(ps, String.valueOf(adId));
    }

    public static synchronized void WriteDownLoadInfo(String filename, DownApkInfo downinfo, int type) throws IOException {
        synchronized (AppUtil.class) {
            if (1 == type) {
                AddDownLoadInfo(filename, downinfo);
            } else if (2 == type) {
                DeleteDownLoadInfo(filename, downinfo);
            }
        }
    }

    private static void DeleteDownLoadInfo(String filename, DownApkInfo downinfo) throws IOException {
        File downFile = new File(filename);
        if (downFile.exists()) {
            Properties ps = new Properties();
            FileInputStream inputfile = new FileInputStream(downFile);
            ps.load(inputfile);
            String key = String.valueOf(downinfo.getAdID());
            if (Tool.isStrEmpty(key)) {
                key = "0";
            }
            if (ps.containsKey(key)) {
                ps.remove(key);
            }
            FileOutputStream outputFile = new FileOutputStream(downFile);
            ps.store(outputFile, null);
            inputfile.close();
            outputFile.flush();
            outputFile.close();
        }
    }

    private static void AddDownLoadInfo(String filename, DownApkInfo downinfo) throws IOException {
        if (downinfo != null) {
            String AdId = String.valueOf(downinfo.getAdID());
            if (Tool.isStrEmpty(AdId)) {
                AdId = "0";
            }
            String key = AdId;
            String value = AdId;
            String AdType = String.valueOf(downinfo.getAdType());
            if (Tool.isStrEmpty(AdType)) {
                AdType = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(AdType).toString();
            String DownTime = downinfo.getCilckTime();
            if (Tool.isStrEmpty(DownTime)) {
                DownTime = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(DownTime).toString();
            String downflag = String.valueOf(downinfo.getDownFlag());
            if (Tool.isStrEmpty(downflag)) {
                downflag = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(downflag).toString();
            String ImgUrl = downinfo.getImgUrl();
            if (Tool.isStrEmpty(ImgUrl)) {
                ImgUrl = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(ImgUrl).toString();
            String ImgFile = downinfo.getImgFlie();
            if (Tool.isStrEmpty(ImgFile)) {
                ImgFile = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(ImgFile).toString();
            String Imgflag = String.valueOf(downinfo.getImgFlag());
            if (Tool.isStrEmpty(Imgflag)) {
                Imgflag = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(Imgflag).toString();
            String ImgSize = String.valueOf(downinfo.getImgSize());
            if (Tool.isStrEmpty(ImgSize)) {
                ImgSize = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(ImgSize).toString();
            String AdUrl = downinfo.getAdUrl();
            if (Tool.isStrEmpty(AdUrl)) {
                AdUrl = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(AdUrl).toString();
            String AdFile = downinfo.getAdFlie();
            if (Tool.isStrEmpty(AdFile)) {
                AdFile = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(AdFile).toString();
            String Adflag = String.valueOf(downinfo.getAdFlag());
            if (Tool.isStrEmpty(Adflag)) {
                Adflag = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(Adflag).toString();
            String AdSize = String.valueOf(downinfo.getAdSize());
            if (Tool.isStrEmpty(AdSize)) {
                AdSize = "0";
            }
            value = new StringBuilder(String.valueOf(value)).append(",").append(AdSize).toString();
            String AddRecordTime = downinfo.getAddRecoedTime();
            if (Tool.isStrEmpty(AddRecordTime)) {
                AddRecordTime = "0";
            }
            Tool.WriteDownPropertie(filename, key, new StringBuilder(String.valueOf(value)).append(",").append(AddRecordTime).toString());
        }
    }

    private static DownApkInfo ReadSingleDownInfo(Properties Ps, String adId) {
        DownApkInfo downinfo = null;
        String Info = Tool.ReadDownPropertie(Ps, adId);
        if (Tool.isStrEmpty(Info)) {
            return null;
        }
        String[] downInfo = Info.split(",");
        if (13 == downInfo.length) {
            downinfo = new DownApkInfo();
            downinfo.setAdID(Tool.ChangeStrToInt(downInfo[0].trim()));
            downinfo.setAdType(Tool.ChangeStrToInt(downInfo[1].trim()));
            downinfo.setCilckTime(downInfo[2].trim());
            downinfo.setDownFlag(Tool.ChangeStrToInt(downInfo[3].trim()));
            downinfo.setImgUrl(downInfo[4].trim());
            downinfo.setImgFlie(downInfo[5].trim());
            downinfo.setImgFlag(Tool.ChangeStrToInt(downInfo[6].trim()));
            downinfo.setImgSize(Tool.ChangeStrToInt(downInfo[7].trim()));
            downinfo.setAdUrl(downInfo[8].trim());
            downinfo.setAdFlie(downInfo[9].trim());
            downinfo.setAdFlag(Tool.ChangeStrToInt(downInfo[10].trim()));
            downinfo.setAdSize(Tool.ChangeStrToInt(downInfo[11].trim()));
            downinfo.setAddRecoedTime(downInfo[12].trim());
        }
        return downinfo;
    }

    public static String GetApkId(Context context) throws NameNotFoundException {
        ApplicationInfo Info = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (Info != null) {
            return String.valueOf(Info.metaData.getInt("APP_KEY", 0));
        }
        return "0";
    }
}
