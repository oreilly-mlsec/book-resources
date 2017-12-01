package com.st.r;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.st.m.b.SB;
import com.st.m.da.b;
import com.st.m.u.PS;
import com.st.m.u.a;
import com.st.m.u.c;
import com.st.m.u.ef;
import com.st.m.u.f;
import u.aly.bs;

public class StatsReceiver extends BroadcastReceiver {
    public static final String a = c.a(a.G);
    private SharedPreferences b;

    private int a(Context context, String str) {
        int i = 0;
        for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(0)) {
            if (packageInfo.packageName.equals(str)) {
                i = packageInfo.versionCode;
            }
        }
        return i;
    }

    private boolean a(Context context) {
        boolean z = false;
        long j = this.b.getLong(b.gt, 0);
        int i = this.b.getInt(b.hd, 3600000);
        j = System.currentTimeMillis() - j;
        if (f.a().da()) {
            i = 1800000;
        }
        if (j > ((long) i)) {
            this.b.edit().putLong(b.gt, System.currentTimeMillis()).commit();
            z = true;
        }
        ef.c(a, new StringBuilder(String.valueOf(1)).append("    ").append(z).toString());
        return z;
    }

    private String b(Context context, String str) {
        PackageManager packageManager;
        ApplicationInfo applicationInfo = null;
        try {
            packageManager = context.getPackageManager();
            try {
                applicationInfo = packageManager.getApplicationInfo(str, 0);
            } catch (NameNotFoundException e) {
            }
        } catch (NameNotFoundException e2) {
            Object obj = applicationInfo;
        }
        return (String) packageManager.getApplicationLabel(applicationInfo);
    }

    public void onReceive(Context context, Intent intent) {
        PS.a();
        String action = intent.getAction();
        this.b = context.getSharedPreferences(b.f, 0);
        ef.c(a, new StringBuilder(String.valueOf(0)).append("    ").append(action).toString());
        if (a(context)) {
            com.st.m.m.b.getInstance(context).init();
        }
        if (action.equals("android.intent.action.PACKAGE_ADDED")) {
            action = intent.getData().getSchemeSpecificPart();
            int a = a(context, action);
            com.st.m.b.c.a(context).a(b(context, action), action, a);
        } else if (action.endsWith("android.intent.action.PACKAGE_REMOVED")) {
            action = intent.getData().getSchemeSpecificPart();
            String[] a2 = SB.a(context).a(action);
            if (TextUtils.isEmpty(a2[0])) {
                a2[0] = bs.b;
            }
            if (TextUtils.isEmpty(a2[1])) {
                a2[1] = "0";
            }
            com.st.m.b.c.a(context).b(a2[0], action, Integer.valueOf(a2[1]).intValue());
        }
    }
}
