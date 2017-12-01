package com.st.m.da;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.st.m.u.a;
import com.st.m.u.j;
import java.io.File;
import u.aly.bs;

public class c {
    public static final String a = Environment.getExternalStorageDirectory().getAbsolutePath();
    public static final String b = com.st.m.u.c.a(a.X);
    public static final String c = com.st.m.u.c.a(a.Y);
    public static final String da = com.st.m.u.c.a(a.Z);

    public static String a(Context context) {
        String str = bs.b;
        String str2 = bs.b;
        SharedPreferences sharedPreferences = context.getSharedPreferences(b.f, 0);
        Object string = sharedPreferences.getString(b, bs.b);
        if (!TextUtils.isEmpty(string)) {
            return a + File.separator + string + File.separator;
        }
        try {
            CharSequence deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            string = str2;
        }
        try {
            Object gt = j.gt(context);
            String stringBuilder = (TextUtils.isEmpty(deviceId) && TextUtils.isEmpty(gt)) ? System.currentTimeMillis() + c : new StringBuilder(String.valueOf(deviceId)).append(gt).append(c).toString();
            try {
                str = "." + com.st.m.u.c.a(stringBuilder);
                if (!TextUtils.isEmpty(str) && str.length() > 13) {
                    str = str.substring(0, 11);
                }
                stringBuilder = a + File.separator + str + File.separator;
                sharedPreferences.edit().putString(b, str).commit();
                return stringBuilder;
            } catch (Exception e2) {
                return stringBuilder;
            }
        } catch (Exception e3) {
            return str;
        }
    }
}
