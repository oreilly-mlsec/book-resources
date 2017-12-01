package com.st.m.u;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.st.m.c.qr;
import com.st.m.da.b;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Method;
import u.aly.bs;
import u.aly.ci;

public class j {
    private static qr a;

    public static qr a(Context context) {
        if (a == null) {
            if(context);
        }
        try {
            a.a(j(context));
            a.if(da(context));
        } catch (Exception e) {
            a.if("notfound");
        }
        try {
            a.ks("1.0.0.2");
            a.c(1002);
        } catch (Throwable e2) {
            ef.a(e2);
        }
        ef.b("mTerminalInfo=" + a.toString());
        return a;
    }

    public static String a() {
        if (Build.CPU_ABI.equalsIgnoreCase("x86")) {
            return "x86";
        }
        String str = bs.b;
        try {
            byte[] bArr = new byte[1024];
            return new RandomAccessFile("/proc/cpuinfo", "r").readLine();
        } catch (IOException e) {
            e.printStackTrace();
            return str;
        }
    }

    public static long b() {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return 0;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
    }

    public static String b(Context context) {
        Object a = SBD.a(context).a(b.a);
        if (TextUtils.isEmpty(a)) {
            ef.da(f.a, c.a(a.Tj));
        }
        return a;
    }

    private static int c() {
        int i = 0;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(c.a(a.M)), 8192);
            i = Integer.valueOf(bufferedReader.readLine().split("\\s+")[1]).intValue() / 1024;
            bufferedReader.close();
            return i;
        } catch (Exception e) {
            return i;
        }
    }

    public static String c(Context context) {
        return ef(context) + c.a(a.N) + f(context);
    }

    public static String da(Context context) {
        return ef(context) + "@" + b(context);
    }

    public static String ef(Context context) {
        Object a = SBD.a(context).a(b.c);
        if (TextUtils.isEmpty(a)) {
            ef.da(f.a, c.a(a.U));
        }
        return a;
    }

    public static String f(Context context) {
        Object a = SBD.a(context).a(b.b);
        if (TextUtils.isEmpty(a)) {
            ef.da(f.a, c.a(a.V));
        }
        return a;
    }

    public static String gt(Context context) {
        String subscriberId;
        String str;
        String str2;
        gt gtVar;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            subscriberId = telephonyManager.getSubscriberId();
        } catch (Exception e) {
            subscriberId = null;
        }
        if (subscriberId == null) {
            try {
                Method method = telephonyManager.getClass().getMethod(c.a(a.Oh), new Class[]{Integer.TYPE});
                if (method != null) {
                    str = (String) method.invoke(telephonyManager, new Object[]{Integer.valueOf(1)});
                    if (str == null) {
                        try {
                            str2 = (String) method.invoke(telephonyManager, new Object[]{Integer.valueOf(0)});
                        } catch (Throwable th) {
                            str2 = str;
                            if (str2 != null) {
                                return str2;
                            }
                            gtVar = new gt();
                            gtVar.a(context);
                            str2 = gtVar.a("1");
                            return str2.equals("1") ? str2 : null;
                        }
                    } else {
                        str2 = str;
                    }
                    if (str2 != null) {
                        return str2;
                    }
                    gtVar = new gt();
                    gtVar.a(context);
                    str2 = gtVar.a("1");
                    if (str2.equals("1")) {
                    }
                }
            } catch (Throwable th2) {
                str = subscriberId;
                str2 = str;
                if (str2 != null) {
                    return str2;
                }
                gtVar = new gt();
                gtVar.a(context);
                str2 = gtVar.a("1");
                if (str2.equals("1")) {
                }
            }
        }
        str2 = subscriberId;
        if (str2 != null) {
            return str2;
        }
        gtVar = new gt();
        gtVar.a(context);
        str2 = gtVar.a("1");
        if (str2.equals("1")) {
        }
    }

    public static String hd(Context context) {
        String deviceId;
        try {
            deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            deviceId = null;
        }
        if (deviceId != null) {
            return deviceId;
        }
        gt gtVar = new gt();
        gtVar.a(context);
        deviceId = gtVar.b("2");
        return deviceId.equals("2") ? null : deviceId;
    }

    private static void if(Context context) {
        int i = 1;
        a = new qr();
        try {
            a.a(Build.PRODUCT);
            a.b(Build.MODEL);
            a.c("android_" + VERSION.RELEASE);
        } catch (Exception e) {
            a.a(bs.b);
            a.b(bs.b);
            a.c("android");
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayMetrics = context.getResources().getDisplayMetrics();
            a.a((short) displayMetrics.widthPixels);
            a.b((short) displayMetrics.heightPixels);
        } catch (Exception e2) {
            a.a((short) 0);
            a.b((short) 0);
        }
        try {
            a.da(a());
        } catch (Exception e3) {
            a.da(bs.b);
        }
        try {
            a.c((short) c());
        } catch (Exception e4) {
            a.c((short) 0);
        }
        String gt = gt(context);
        if (gt == null) {
            gt = bs.b;
        }
        a.ef(gt);
        try {
            gt = hd(context);
            if (gt == null) {
                gt = bs.b;
            }
            a.f(gt);
            a.a(0);
            a.b(0);
        } catch (Exception e5) {
        }
        a.a(j(context));
        a.gt(bs.b);
        a.hd(c(context));
        a.if(da(context));
        if (context.checkCallingOrSelfPermission("android.permission.INSTALL_PACKAGES") == 0) {
            int i2 = 1;
        } else {
            short s = (short) 0;
        }
        qr qrVar = a;
        if (i2 == 0) {
            i = 2;
        }
        qrVar.b((byte) i);
        a.j(context.getPackageName());
        a.c(1002);
        try {
            gt = "1.0.0.2";
        } catch (Exception e6) {
            gt = "android";
            e6.printStackTrace();
        }
        a.ks(gt);
        a.l(context.getSharedPreferences(b.f, 0).getString(b.if, "0.0.0"));
        a.da(da.a(b()));
    }

    private static byte j(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return (byte) 0;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return (byte) 0;
        }
        if (activeNetworkInfo.getType() != 0) {
            return activeNetworkInfo.getType() == 1 ? (byte) 3 : (byte) 0;
        } else {
            int networkType = ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
            switch (networkType) {
                case 0:
                    return (byte) 4;
                case 1:
                case 2:
                case 4:
                case ci.h /*7*/:
                case 11:
                    return (byte) 1;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return (byte) 2;
                case 13:
                    return (byte) 5;
                default:
                    return (byte) networkType;
            }
        }
    }
}
