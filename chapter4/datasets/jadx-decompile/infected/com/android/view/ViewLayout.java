package com.android.view;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo.State;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.DownloadListener;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.android.notification.AdService;
import com.android.notification.bean.DownApkInfo;
import com.android.notification.configure.ConfigureFile;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.PropertiesKey.PhoneConfig;
import com.android.notification.configure.PropertiesKey.TimerConfig;
import com.android.notification.configure.WebFlag;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import u.aly.bs;

public class ViewLayout extends WebView {
    private static List<Context> contextList = new ArrayList();
    private Context context;
    private DownApkInfo downinfo = null;
    private List<DownApkInfo> g_downInfos = null;

    public ViewLayout(Context c) {
        super(c);
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:ViewLayout  func:ViewLayout  text:Create ViewLayout");
        this.context = c;
        contextList.add(this.context);
        settingForWebView(this);
        loadUrl("file:///android_asset/splash.html");
    }

    public ViewLayout(Context c, AttributeSet attrs) {
        super(c, attrs);
        this.context = c;
        contextList.add(this.context);
        settingForWebView(this);
        loadUrl("file:///android_asset/splash.html");
    }

    public void ViewLayoutDestory() {
        contextList.remove(contextList.indexOf(this.context));
        stopLoading();
        destroy();
    }

    private void CreateSysDir() {
        File file = new File(ConfigureFile.savePath);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public static String getViewWebStatus(Context context) {
        String status = new String(bs.b);
        ConnectivityManager connManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (State.CONNECTED == connManager.getNetworkInfo(1).getState()) {
            return new StringBuilder(String.valueOf(status)).append(WebFlag.WIFI).toString();
        }
        if (State.CONNECTED == connManager.getNetworkInfo(0).getState()) {
            return new StringBuilder(String.valueOf(status)).append(WebFlag.GPRS).toString();
        }
        return new StringBuilder(String.valueOf(status)).append(WebFlag.NONET).toString();
    }

    private boolean IfRecordBeShow() {
        try {
            List<DownApkInfo> downInfos = AppUtil.ReadDownLoadInfoList(ConfigureFile.DownInfoFile);
            if (downInfos == null || downInfos.size() == 0) {
                return false;
            }
            for (int nI = 0; nI < downInfos.size(); nI++) {
                boolean ifShow;
                File imgfile = new File(((DownApkInfo) downInfos.get(nI)).getImgFlie());
                if (imgfile == null || !imgfile.exists()) {
                    ifShow = false;
                } else {
                    ifShow = true;
                }
                if (ifShow) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:ViewLayout  func:IfDownRecordBeShow  text:message:", e);
        }
    }

    private boolean ShowAdRequest() {
        boolean ret = false;
        String apk_id = null;
        try {
            apk_id = AppUtil.GetApkId(this.context);
        } catch (NameNotFoundException e1) {
            e1.printStackTrace();
        }
        if (Tool.isStrEmpty(apk_id)) {
            return false;
        }
        String retex;
        if (getViewWebStatus(this.context).equals(WebFlag.NONET)) {
            retex = Tool.ReadPropertie(ConfigureFile.PushConfigFile, apk_id);
            if (!Tool.isStrEmpty(retex) && retex.equals("true")) {
                ret = true;
            }
            return ret;
        }
        String url = "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id=" + Tool.ReadPropertie(ConfigureFile.PhoneConfigFile, PhoneConfig.USER_ID) + "&id=-1" + "&record_type=4" + "&position_type=2" + "&apk_id=" + apk_id;
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:ViewLayout  func:ViewLayout  text:url" + url);
        try {
            String retstr = Tool.MyHttpRequest(url);
            if (!Tool.isStrEmpty(Boolean.valueOf(false))) {
                String[] array = retstr.split(":");
                if (2 == array.length && array[0].equals("true")) {
                    ret = true;
                    Tool.WritePropertie(ConfigureFile.PushConfigFile, apk_id, "true");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            Tool.JWDlogException(DownApkXmlKey.ROOT, "class:ViewLayout  func:ShowAdRequest  text:message:", e);
            retex = Tool.ReadPropertie(ConfigureFile.PushConfigFile, apk_id);
            if (!Tool.isStrEmpty(retex) && retex.equals("true")) {
                ret = true;
            }
        }
        return ret;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        contextList.remove(contextList.indexOf(this.context));
        stopLoading();
        destroy();
    }

    private void settingForWebView(WebView childView) {
        CreateSysDir();
        if ((getViewWebStatus(this.context).equals(WebFlag.NONET) && !IfRecordBeShow()) || !ShowAdRequest()) {
            childView.setVisibility(4);
        }
        Log.i("newwebview", "new webview");
        childView.setHorizontalScrollBarEnabled(false);
        childView.setVerticalScrollBarEnabled(false);
        childView.setBackgroundColor(0);
        WebSettings settings = childView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setAllowFileAccess(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(false);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setAppCacheEnabled(true);
        settings.setSupportMultipleWindows(true);
        settings.setRenderPriority(RenderPriority.HIGH);
        childView.setDownloadListener(new DownloadListener() {
            public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
            }
        });
        childView.addJavascriptInterface(new Object() {
            private int RecordNum = 0;

            public final void DownAdImg() {
                Tool.JWDlog(DownApkXmlKey.ROOT, "class:ViewLayout  func:DownAdImg  text:DownAdImg");
                try {
                    if (!ViewLayout.getViewWebStatus(ViewLayout.this.context).equals(WebFlag.NONET)) {
                        List<DownApkInfo> downInfos = AppUtil.ReadDownLoadInfoList(ConfigureFile.DownInfoFile);
                        AppUtil.DownLoadAppInternalImg(downInfos, 1);
                        if (downInfos != null && downInfos.size() != 0) {
                            this.RecordNum = downInfos.size();
                        }
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    Tool.JWDlogException(DownApkXmlKey.ROOT, "class:ViewLayout  func:DownAdImg  text:message:", e);
                }
            }

            public final int Getinterval() {
                int ret = Tool.ChangeStrToInt(Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.XML_AD_TIME));
                if (ret == 0) {
                    return 15;
                }
                return ret;
            }

            public final String GetDownInfoByFlag(String flag) {
                if (ViewLayout.this.downinfo == null) {
                    return null;
                }
                if (flag.equals(DownApkXmlKey.AD_ID)) {
                    return String.valueOf(ViewLayout.this.downinfo.getAdID());
                }
                if (flag.equals(DownApkXmlKey.IMG_FILE)) {
                    return ViewLayout.this.downinfo.getImgFlie();
                }
                if (flag.equals(DownApkXmlKey.IMG_FLAG)) {
                    return String.valueOf(ViewLayout.this.downinfo.getImgFlag());
                }
                return null;
            }

            public final boolean IfViewActive() {
                if (((Context) ViewLayout.contextList.get(ViewLayout.contextList.size() - 1)) != ViewLayout.this.context) {
                    return false;
                }
                return true;
            }

            public final void setAdIndex(int index, String adType) {
                if (adType.equals("0")) {
                    Tool.WritePropertie(ConfigureFile.TimerConfigFile, TimerConfig.XML_AD_INDEX, String.valueOf(index));
                } else {
                    Tool.WritePropertie(ConfigureFile.TimerConfigFile, TimerConfig.XML_APP_INDEX, String.valueOf(index));
                }
                Tool.WritePropertie(ConfigureFile.TimerConfigFile, TimerConfig.XML_AD_TYPE, adType);
            }

            public final void UpdateShowRecord() {
                String web = ViewLayout.getViewWebStatus(ViewLayout.this.context);
                try {
                    int retIndex;
                    if (ViewLayout.this.g_downInfos == null || ViewLayout.this.g_downInfos.size() == 0 || this.RecordNum != ViewLayout.this.g_downInfos.size()) {
                        ViewLayout.this.g_downInfos = AppUtil.ReadDownLoadInfoList(ConfigureFile.DownInfoFile);
                        if (ViewLayout.this.g_downInfos != null && ViewLayout.this.g_downInfos.size() != 0) {
                            this.RecordNum = ViewLayout.this.g_downInfos.size();
                        } else {
                            return;
                        }
                    }
                    String adType = Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.XML_AD_TYPE);
                    if (Tool.isStrEmpty(adType)) {
                        adType = "0";
                    }
                    String apk_id = null;
                    try {
                        apk_id = AppUtil.GetApkId(ViewLayout.this.context);
                    } catch (NameNotFoundException e) {
                        e.printStackTrace();
                    }
                    String ad_index = Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.XML_AD_INDEX);
                    String app_index = Tool.ReadPropertie(ConfigureFile.TimerConfigFile, TimerConfig.XML_APP_INDEX);
                    if (adType.equals("1")) {
                        retIndex = AppUtil.GetNextAdRecordIndex(ViewLayout.this.g_downInfos, ad_index, app_index, 0, web, apk_id);
                    } else {
                        retIndex = AppUtil.GetNextAdRecordIndex(ViewLayout.this.g_downInfos, ad_index, app_index, 1, web, apk_id);
                    }
                    if (-1 != retIndex) {
                        ViewLayout.this.downinfo = (DownApkInfo) ViewLayout.this.g_downInfos.get(retIndex);
                        setAdIndex(retIndex, String.valueOf(ViewLayout.this.downinfo.getAdType()));
                        if (this.RecordNum != ViewLayout.this.g_downInfos.size()) {
                            Tool.JWDlog(DownApkXmlKey.ROOT, "class:ViewLayout  func:UpdateShowRecord  text:UpdateShowRecord");
                            UpdateShowRecord();
                        }
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }

            public final boolean fileExist(String name) {
                File file = new File(name);
                if (file.exists() && ((long) ViewLayout.this.downinfo.getImgSize()) == file.length()) {
                    return true;
                }
                return false;
            }

            public final void startintent(String adId) {
                Intent intent = new Intent(ViewLayout.this.context, AdService.class);
                intent.setFlags(268435456);
                intent.addFlags(1073741824);
                intent.putExtra("ADID", Tool.ChangeStrToInt(adId));
                intent.putExtra("position_type", 2);
                intent.putExtra("SendCilck", 1);
                ViewLayout.this.context.startService(intent);
            }
        }, "content");
        childView.setWebChromeClient(new WebChromeClient() {
            public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
                return super.onJsAlert(view, url, message, result);
            }

            public boolean onCreateWindow(WebView view, boolean dialog, boolean userGesture, Message resultMsg) {
                Log.i("onCreateWindow ", "onCreateWindow");
                return true;
            }

            public void onCloseWindow(WebView view) {
            }

            public void onExceededDatabaseQuota(String url, String databaseIdentifier, long currentQuota, long estimatedSize, long totalUsedQuota, QuotaUpdater quotaUpdater) {
                quotaUpdater.updateQuota(2 * estimatedSize);
            }
        });
        childView.setWebViewClient(new WebViewClient() {
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                if (url.indexOf("tel:") < 0) {
                    view.loadUrl(url);
                }
                return true;
            }

            public void onPageFinished(WebView view, String url) {
                Log.i("communication", "onPageFinished*****");
            }

            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                Log.i("content communiction url:", url);
                Log.i("communication", "onPageStarted*****");
                if (url.contains("file:///")) {
                    Log.i("communication", url);
                }
            }
        });
    }
}
