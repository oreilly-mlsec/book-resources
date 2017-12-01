package com.android.notification.bean;

import cn.dump.pencil.R;

public class ResID {
    private static final int JWDAdID = 2131034123;
    private static final int JWDAdLayout = 2130903042;
    private static final int JWDApkName = 2131034126;
    private static final int JWDAppID = 2131034124;
    private static final int JWDAppLayout = 2130903043;
    private static final int JWDAppProgress = 2130903044;
    private static final int JWDNotiProgress = 2131034128;
    private static final int JWDTextDown = 2131034127;
    private static final int JWDdrawableAd = 2130837513;
    private static final int JWDdrawableApk = 2130837514;

    public static int getJwdappprogress() {
        return R.layout.app_progress;
    }

    public static int getJwdapkname() {
        return R.id.apkname;
    }

    public static int getJwdtextdown() {
        return R.id.textDown;
    }

    public static int getJwdnotiprogress() {
        return R.id.notiprogressBar;
    }

    public static int getJwddrawableapk() {
        return R.drawable.jwd_apk;
    }

    public static int getJwddrawablead() {
        return R.drawable.jwd_ad;
    }

    public static int getJwdadlayout() {
        return R.layout.ad_notification;
    }

    public static int getJwdapplayout() {
        return R.layout.app_notification;
    }

    public static int getJwdadid() {
        return R.id.adnotification;
    }

    public static int getJwdappid() {
        return R.id.appnotification;
    }
}
