package com.m.u;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.m.ab.aw;
import com.m.ac.aa;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Method;
import java.util.Calendar;
import u.aly.bs;
import u.aly.ci;

public class at {
    private static aw aa;
    private static aw ab;

    public static aw aa(Context context) {
        if (aa == null) {
            ak(context);
        }
        try {
            aa.aa(al(context));
            aa.ai(ae(context));
        } catch (Exception e) {
            aa.ai("notfound");
        }
        try {
            aa.ak(ak.ab(context));
            aa.ac(ak.aa(context));
        } catch (Throwable e2) {
            ag.aa(e2);
        }
        aa.am(au.aa(Calendar.getInstance().getTimeInMillis()));
        aa.an(aj(context));
        ag.aa("mTerminalInfo=" + aa.toString());
        return aa;
    }

    public static void aa() {
        ab = null;
        aa = null;
    }

    public static aw ab(Context context) {
        if (aa == null) {
            ak(context);
        }
        return aa;
    }

    public static String ab() {
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

    private static int ac() {
        int i = 0;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(ae.aa(ac.eu)), 8192);
            i = Integer.valueOf(bufferedReader.readLine().split("\\s+")[1]).intValue() / 1024;
            bufferedReader.close();
            return i;
        } catch (Exception e) {
            return i;
        }
    }

    public static String ac(Context context) {
        Object aa = d.aa(context).aa(aa.aa);
        if (TextUtils.isEmpty(aa)) {
            ag.ad(ah.aa, ae.aa(ac.fk));
        }
        return aa;
    }

    public static String ad(Context context) {
        return af(context) + ae.aa(ac.ev) + ag(context);
    }

    public static String ae(Context context) {
        return af(context) + "@" + ac(context);
    }

    public static String af(Context context) {
        Object aa = d.aa(context).aa(aa.ac);
        if (TextUtils.isEmpty(aa)) {
            ag.ad(ah.aa, ae.aa(ac.fl));
        }
        return aa;
    }

    public static String ag(Context context) {
        Object aa = d.aa(context).aa(aa.ab);
        if (TextUtils.isEmpty(aa)) {
            ag.ad(ah.aa, ae.aa(ac.fn));
        }
        return aa;
    }

    public static String ah(Context context) {
        String subscriberId;
        String str;
        String str2;
        ap apVar;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            subscriberId = telephonyManager.getSubscriberId();
        } catch (Exception e) {
            subscriberId = null;
        }
        if (subscriberId == null) {
            try {
                Method method = telephonyManager.getClass().getMethod(ae.aa(ac.ew), new Class[]{Integer.TYPE});
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
                            apVar = new ap();
                            apVar.aa(context);
                            str2 = apVar.aa("1");
                            return str2.equals("1") ? str2 : null;
                        }
                    } else {
                        str2 = str;
                    }
                    if (str2 != null) {
                        return str2;
                    }
                    apVar = new ap();
                    apVar.aa(context);
                    str2 = apVar.aa("1");
                    if (str2.equals("1")) {
                    }
                }
            } catch (Throwable th2) {
                str = subscriberId;
                str2 = str;
                if (str2 != null) {
                    return str2;
                }
                apVar = new ap();
                apVar.aa(context);
                str2 = apVar.aa("1");
                if (str2.equals("1")) {
                }
            }
        }
        str2 = subscriberId;
        if (str2 != null) {
            return str2;
        }
        apVar = new ap();
        apVar.aa(context);
        str2 = apVar.aa("1");
        if (str2.equals("1")) {
        }
    }

    public static String ai(Context context) {
        String deviceId;
        try {
            deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            deviceId = null;
        }
        if (deviceId != null) {
            return deviceId;
        }
        ap apVar = new ap();
        apVar.aa(context);
        deviceId = apVar.ab("2");
        return deviceId.equals("2") ? null : deviceId;
    }

    public static String aj(Context context) {
        byte[] bArr = new byte[]{(byte) 48, (byte) 48, (byte) 48};
        if (aa.aa(context, aa.cg) != null) {
            bArr[0] = (byte) 49;
        } else if (aa.aa(context, aa.ch) != null) {
            bArr[0] = (byte) 49;
        }
        if (aa.aa(context, aa.ci) != null) {
            bArr[1] = (byte) 49;
        }
        if (aa.aa(context, aa.cj) != null) {
            bArr[2] = (byte) 49;
        }
        return new String(bArr);
    }

    private static void ak(Context context) {
        int i;
        int i2 = 1;
        aa = new aw();
        try {
            aa.aa(Build.PRODUCT);
            aa.ab(Build.MODEL);
            aa.ac("android_" + VERSION.RELEASE);
        } catch (Exception e) {
            aa.aa(bs.b);
            aa.ab(bs.b);
            aa.ac("android");
        }
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayMetrics = context.getResources().getDisplayMetrics();
            aa.aa((short) displayMetrics.widthPixels);
            aa.ab((short) displayMetrics.heightPixels);
        } catch (Exception e2) {
            aa.aa((short) 0);
            aa.ab((short) 0);
        }
        try {
            aa.ad(ab());
        } catch (Exception e3) {
            aa.ad(bs.b);
        }
        try {
            aa.ac((short) ac());
        } catch (Exception e4) {
            aa.ac((short) 0);
        }
        String ah = ah(context);
        if (ah == null) {
            ah = bs.b;
        }
        aa.ae(ah);
        try {
            ah = ai(context);
            if (ah == null) {
                ah = bs.b;
            }
            aa.af(ah);
            aa.aa(0);
            aa.ab(0);
        } catch (Exception e5) {
        }
        aa.aa(al(context));
        aa.ag(bs.b);
        aa.ah(ad(context));
        aa.ai(ae(context));
        if (context.checkCallingOrSelfPermission(aa.cm) == 0) {
            i = 1;
        } else {
            short s = (short) 0;
        }
        aw awVar = aa;
        if (i == 0) {
            i2 = 2;
        }
        awVar.ab((byte) i2);
        aa.aj(context.getPackageName());
        try {
            i = ak.aa(context);
            if (i == 0) {
                i = 204;
            }
        } catch (Exception e6) {
            e6.printStackTrace();
            i = 204;
        }
        aa.ac(i);
        ah = "2.0.4";
        try {
            ah = ak.ab(context);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        aa.ak(ah);
        aa.al(context.getSharedPreferences(aa.ap, 0).getString(aa.ba, "0.0.0"));
    }

    private static byte al(Context context) {
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
