package com.st.m.u;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import u.aly.bs;

public class gt {
    private static int b = 0;
    public String a = null;
    private int c = 0;
    private String da = bs.b;
    private String ef = bs.b;
    private String f = bs.b;
    private String gt = bs.b;
    private int hd = 0;
    private int if = 0;
    private String j = bs.b;
    private boolean ks = false;
    private boolean l = false;
    private boolean mf = false;
    private boolean n = false;
    private String o = bs.b;

    private void b(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Class cls = Class.forName("com.android.internal.telephony.Phone");
            Field field = cls.getField("GEMINI_SIM_1");
            field.setAccessible(true);
            b = ((Integer) field.get(null)).intValue();
            field = cls.getField("GEMINI_SIM_2");
            field.setAccessible(true);
            this.c = ((Integer) field.get(null)).intValue();
            Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getSubscriberIdGemini", new Class[]{Integer.TYPE});
            this.da = (String) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(b)});
            this.ef = (String) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(this.c)});
            declaredMethod = TelephonyManager.class.getDeclaredMethod("getDeviceIdGemini", new Class[]{Integer.TYPE});
            this.f = (String) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(b)});
            this.gt = (String) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(this.c)});
            declaredMethod = TelephonyManager.class.getDeclaredMethod("getPhoneTypeGemini", new Class[]{Integer.TYPE});
            this.hd = ((Integer) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(b)})).intValue();
            this.if = ((Integer) declaredMethod.invoke(telephonyManager, new Object[]{Integer.valueOf(this.c)})).intValue();
            if (TextUtils.isEmpty(this.da) && !TextUtils.isEmpty(this.ef)) {
                this.j = this.ef;
            }
            if (TextUtils.isEmpty(this.ef) && !TextUtils.isEmpty(this.da)) {
                this.j = this.da;
            }
            this.ks = true;
        } catch (Exception e) {
            this.ks = false;
        }
    }

    private void c(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Class cls = Class.forName("com.android.internal.telephony.Phone");
            Field field = cls.getField("GEMINI_SIM_1");
            field.setAccessible(true);
            b = ((Integer) field.get(null)).intValue();
            field = cls.getField("GEMINI_SIM_2");
            field.setAccessible(true);
            this.c = ((Integer) field.get(null)).intValue();
            Method method = TelephonyManager.class.getMethod("getDefault", new Class[]{Integer.TYPE});
            TelephonyManager telephonyManager2 = (TelephonyManager) method.invoke(telephonyManager, new Object[]{Integer.valueOf(b)});
            telephonyManager = (TelephonyManager) method.invoke(telephonyManager, new Object[]{Integer.valueOf(this.c)});
            this.da = telephonyManager2.getSubscriberId();
            this.ef = telephonyManager.getSubscriberId();
            this.f = telephonyManager2.getDeviceId();
            this.gt = telephonyManager.getDeviceId();
            this.hd = telephonyManager2.getPhoneType();
            this.if = telephonyManager.getPhoneType();
            if (TextUtils.isEmpty(this.da) && !TextUtils.isEmpty(this.ef)) {
                this.j = this.ef;
            }
            if (TextUtils.isEmpty(this.ef) && !TextUtils.isEmpty(this.da)) {
                this.j = this.da;
            }
            this.l = true;
        } catch (Exception e) {
            this.l = false;
        }
    }

    private boolean c(String str) {
        return TextUtils.isEmpty(str) || str.length() < 14;
    }

    private void da(Context context) {
        try {
            Class cls = Class.forName("com.android.internal.telephony.PhoneFactory");
            this.o = (String) cls.getMethod("getServiceName", new Class[]{String.class, Integer.TYPE}).invoke(cls, new Object[]{"phone", Integer.valueOf(1)});
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            this.da = telephonyManager.getSubscriberId();
            this.f = telephonyManager.getDeviceId();
            this.hd = telephonyManager.getPhoneType();
            telephonyManager = (TelephonyManager) context.getSystemService(this.o);
            this.ef = telephonyManager.getSubscriberId();
            this.gt = telephonyManager.getDeviceId();
            this.if = telephonyManager.getPhoneType();
            if (TextUtils.isEmpty(this.da) && !TextUtils.isEmpty(this.ef)) {
                this.j = this.ef;
            }
            if (TextUtils.isEmpty(this.ef) && !TextUtils.isEmpty(this.da)) {
                this.j = this.da;
            }
            this.mf = true;
        } catch (Exception e) {
            this.mf = false;
        }
    }

    private void ef(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Class cls = Class.forName("android.telephony.MSimTelephonyManager");
            Object systemService = context.getSystemService("phone_msim");
            b = 0;
            this.c = 1;
            Method method = cls.getMethod("getDataState", new Class[0]);
            Method method2 = cls.getMethod("getDeviceId", new Class[]{Integer.TYPE});
            Method method3 = cls.getMethod("getSubscriberId", new Class[]{Integer.TYPE});
            this.f = (String) method2.invoke(systemService, new Object[]{Integer.valueOf(b)});
            this.gt = (String) method2.invoke(systemService, new Object[]{Integer.valueOf(this.c)});
            this.da = (String) method3.invoke(systemService, new Object[]{Integer.valueOf(b)});
            this.ef = (String) method3.invoke(systemService, new Object[]{Integer.valueOf(this.c)});
            int dataState = telephonyManager.getDataState();
            Log.e("tag", new StringBuilder(String.valueOf(dataState)).append("---").append(((Integer) method.invoke(systemService, new Object[0])).intValue()).toString());
            this.n = true;
        } catch (Exception e) {
            this.n = false;
        }
    }

    public String a(String str) {
        return (c(this.da) && c(this.ef)) ? str : (c(this.da) || this.da.equals(str)) ? (c(this.ef) || this.ef.equals(str)) ? str : this.ef : this.da;
    }

    public void a(Context context) {
        b(context);
        if (c(this.da) && c(this.ef)) {
            c(context);
            if (c(this.da) && c(this.ef)) {
                da(context);
                if (c(this.da) && c(this.ef)) {
                    ef(context);
                }
            }
        }
    }

    public String b(String str) {
        return (c(this.f) && c(this.gt)) ? str : (c(this.f) || this.f.equals(str)) ? (c(this.gt) || this.gt.equals(str)) ? str : this.gt : this.f;
    }
}
