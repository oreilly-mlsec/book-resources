package com.third.mx.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.android.notification.configure.WebFlag;
import java.util.Locale;
import u.aly.bs;

public class i {
    private static String b = bs.b;
    private static String c = bs.b;
    private static String d = bs.b;
    private static String e = bs.b;
    private static String f = bs.b;
    private static String g = bs.b;
    private static String h = bs.b;
    private static String i = bs.b;
    private static String j = "FX_KEY";
    private static String k = "FR_KEY";
    public Context a;

    public i(Context context) {
        this.a = context;
    }

    public static int a() {
        try {
            return VERSION.SDK_INT;
        } catch (Exception e) {
            return 0;
        }
    }

    public static String c(Context context) {
        if (context != null && TextUtils.isEmpty(c)) {
            Object simOperatorName = ((TelephonyManager) context.getSystemService("phone")).getSimOperatorName();
            if (!TextUtils.isEmpty(simOperatorName)) {
                c = simOperatorName;
            }
        }
        return c;
    }

    public static String d(Context context) {
        if (context != null && TextUtils.isEmpty(d)) {
            d = k.a(context).getDeviceId();
            if (d == null || d.trim().length() == 0 || d.matches("0+")) {
                d = "000000000000000";
            }
        }
        return d;
    }

    public static String e(Context context) {
        if (context != null && TextUtils.isEmpty(e)) {
            e = k.a(context).getSubscriberId();
            if (e == null || e.trim().length() == 0 || e.matches("0+")) {
                e = "000000000000000";
            }
        }
        return e;
    }

    public static String f(Context context) {
        if (context != null && TextUtils.isEmpty(f)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(d(context));
            stringBuffer.append("_");
            stringBuffer.append(e(context));
            f = stringBuffer.toString();
        }
        return f;
    }

    public static String g(Context context) {
        return Locale.getDefault().getLanguage();
    }

    public static String h(Context context) {
        if (context != null && TextUtils.isEmpty(g)) {
            try {
                Object a = j.a(context);
                if (TextUtils.isEmpty(a)) {
                    Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                    a = bundle.get(k);
                    if (a == null) {
                        a = bundle.get(j);
                    }
                    g = a.toString();
                } else {
                    g = a;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return g;
    }

    public static boolean i(Context context) {
        NetworkInfo activeNetworkInfo = k.b(context).getActiveNetworkInfo();
        return activeNetworkInfo != null ? activeNetworkInfo.isConnected() : false;
    }

    public static String j(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return "null";
        }
        if (activeNetworkInfo.getType() == 1) {
            return WebFlag.WIFI;
        }
        if (activeNetworkInfo.getType() == 0) {
            int subtype = activeNetworkInfo.getSubtype();
            if (subtype == 4 || subtype == 1 || subtype == 2) {
                return "2G";
            }
            if (subtype == 3 || subtype == 8 || subtype == 6 || subtype == 5 || subtype == 12) {
                return "3G";
            }
            if (subtype == 13) {
                return "4G";
            }
        }
        return bs.b;
    }

    public String a(Context context) {
        if (context != null && TextUtils.isEmpty(h)) {
            h = context.getPackageName();
        }
        return h;
    }

    public String b(Context context) {
        if (context != null && TextUtils.isEmpty(i)) {
            PackageManager packageManager = context.getPackageManager();
            i = packageManager.getApplicationLabel(packageManager.getApplicationInfo(a(context), 128)).toString();
        }
        return i;
    }
}
