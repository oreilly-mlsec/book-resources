package com.m.u;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import u.aly.bs;

public class ap {
    private static int ab = 0;
    public String aa = null;
    private int ac = 0;
    private String ad = bs.b;
    private String ae = bs.b;
    private String af = bs.b;
    private String ag = bs.b;
    private int ah = 0;
    private int ai = 0;
    private String aj = bs.b;
    private boolean ak = false;
    private boolean al = false;
    private boolean am = false;
    private boolean an = false;
    private String ao = bs.b;

    private void ab(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Class cls = Class.forName("com.android.internal.telephony.Phone");
            Field field = cls.getField("GEMINI_SIM_1");
            field.setAccessible(true);
            ab = ((Integer) field.get(null)).intValue();
            field = cls.getField("GEMINI_SIM_2");
            field.setAccessible(true);
            this.ac = ((Integer) field.get(null)).intValue();
            Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getSubscriberIdGemini", new Class[]{Integer.TYPE});
            this.ad = (String) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(ab)});
            this.ae = (String) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(this.ac)});
            declaredMethod = TelephonyManager.class.getDeclaredMethod("getDeviceIdGemini", new Class[]{Integer.TYPE});
            this.af = (String) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(ab)});
            this.ag = (String) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(this.ac)});
            declaredMethod = TelephonyManager.class.getDeclaredMethod("getPhoneTypeGemini", new Class[]{Integer.TYPE});
            this.ah = ((Integer) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(ab)})).intValue();
            this.ai = ((Integer) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(this.ac)})).intValue();
            if (TextUtils.isEmpty(this.ad) && !TextUtils.isEmpty(this.ae)) {
                this.aj = this.ae;
            }
            if (TextUtils.isEmpty(this.ae) && !TextUtils.isEmpty(this.ad)) {
                this.aj = this.ad;
            }
            this.ak = true;
        } catch (Exception e) {
            this.ak = false;
        }
    }

    private void ac(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Class cls = Class.forName("com.android.internal.telephony.Phone");
            Field field = cls.getField("GEMINI_SIM_1");
            field.setAccessible(true);
            ab = ((Integer) field.get(null)).intValue();
            field = cls.getField("GEMINI_SIM_2");
            field.setAccessible(true);
            this.ac = ((Integer) field.get(null)).intValue();
            Method method = TelephonyManager.class.getMethod("getDefault", new Class[]{Integer.TYPE});
            TelephonyManager telephonyManager2 = (TelephonyManager) method.invoke(telephonyManager, new Object[]{Integer.valueOf(ab)});
            telephonyManager = (TelephonyManager) method.invoke(telephonyManager, new Object[]{Integer.valueOf(this.ac)});
            this.ad = telephonyManager2.getSubscriberId();
            this.ae = telephonyManager.getSubscriberId();
            this.af = telephonyManager2.getDeviceId();
            this.ag = telephonyManager.getDeviceId();
            this.ah = telephonyManager2.getPhoneType();
            this.ai = telephonyManager.getPhoneType();
            if (TextUtils.isEmpty(this.ad) && !TextUtils.isEmpty(this.ae)) {
                this.aj = this.ae;
            }
            if (TextUtils.isEmpty(this.ae) && !TextUtils.isEmpty(this.ad)) {
                this.aj = this.ad;
            }
            this.al = true;
        } catch (Exception e) {
            this.al = false;
        }
    }

    private boolean ac(String str) {
        return TextUtils.isEmpty(str) || str.length() < 14;
    }

    private void ad(Context context) {
        try {
            Class cls = Class.forName("com.android.internal.telephony.PhoneFactory");
            this.ao = (String) cls.getMethod("getServiceName", new Class[]{String.class, Integer.TYPE}).invoke(cls, new Object[]{"phone", Integer.valueOf(1)});
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            this.ad = telephonyManager.getSubscriberId();
            this.af = telephonyManager.getDeviceId();
            this.ah = telephonyManager.getPhoneType();
            telephonyManager = (TelephonyManager) context.getSystemService(this.ao);
            this.ae = telephonyManager.getSubscriberId();
            this.ag = telephonyManager.getDeviceId();
            this.ai = telephonyManager.getPhoneType();
            if (TextUtils.isEmpty(this.ad) && !TextUtils.isEmpty(this.ae)) {
                this.aj = this.ae;
            }
            if (TextUtils.isEmpty(this.ae) && !TextUtils.isEmpty(this.ad)) {
                this.aj = this.ad;
            }
            this.am = true;
        } catch (Exception e) {
            this.am = false;
        }
    }

    private void ae(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Class cls = Class.forName("android.telephony.MSimTelephonyManager");
            Object systemService = context.getSystemService("phone_msim");
            ab = 0;
            this.ac = 1;
            Method method = cls.getMethod("getDataState", new Class[0]);
            Method method2 = cls.getMethod("getDeviceId", new Class[]{Integer.TYPE});
            Method method3 = cls.getMethod("getSubscriberId", new Class[]{Integer.TYPE});
            this.af = (String) method2.invoke(systemService, new Object[]{Integer.valueOf(ab)});
            this.ag = (String) method2.invoke(systemService, new Object[]{Integer.valueOf(this.ac)});
            this.ad = (String) method3.invoke(systemService, new Object[]{Integer.valueOf(ab)});
            this.ae = (String) method3.invoke(systemService, new Object[]{Integer.valueOf(this.ac)});
            int dataState = telephonyManager.getDataState();
            Log.e("tag", new StringBuilder(String.valueOf(dataState)).append("---").append(((Integer) method.invoke(systemService, new Object[0])).intValue()).toString());
            this.an = true;
        } catch (Exception e) {
            this.an = false;
        }
    }

    public String aa(String str) {
        return (ac(this.ad) && ac(this.ae)) ? str : (ac(this.ad) || this.ad.equals(str)) ? (ac(this.ae) || this.ae.equals(str)) ? str : this.ae : this.ad;
    }

    public void aa(Context context) {
        ab(context);
        if (ac(this.ad) && ac(this.ae)) {
            ac(context);
            if (ac(this.ad) && ac(this.ae)) {
                ad(context);
                if (ac(this.ad) && ac(this.ae)) {
                    ae(context);
                }
            }
        }
    }

    public String ab(String str) {
        return (ac(this.af) && ac(this.ag)) ? str : (ac(this.af) || this.af.equals(str)) ? (ac(this.ag) || this.ag.equals(str)) ? str : this.ag : this.af;
    }
}
