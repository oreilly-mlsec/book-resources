package com.m.ac;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.m.u.ac;
import com.m.u.ae;
import com.m.u.at;
import java.io.File;
import java.util.Random;
import u.aly.bs;

public class ab {
    public static final String aa = Environment.getExternalStorageDirectory().getAbsolutePath();
    public static final String ab = ae.aa(ac.a);
    public static final String ac = ae.aa(ac.b);
    public static final String ad = ae.aa(ac.c);

    public static File aa(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(aa.ap, 0);
        String string = sharedPreferences.getString(str, bs.b);
        if (TextUtils.isEmpty(string)) {
            string = ae.aa(aa());
            if (!TextUtils.isEmpty(string) && string.length() > 13) {
                string = string.substring(0, 11);
            }
            sharedPreferences.edit().putString(str, string).commit();
        }
        File file = new File(context.getFilesDir(), string);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static String aa() {
        String str = ad;
        Random random = new Random();
        int nextInt = random.nextInt(6) + 6;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < nextInt; i++) {
            stringBuffer.append(str.charAt(random.nextInt(str.length())));
        }
        return stringBuffer.toString();
    }

    public static String aa(Context context) {
        String str = bs.b;
        String str2 = bs.b;
        SharedPreferences sharedPreferences = context.getSharedPreferences(aa.ap, 0);
        Object string = sharedPreferences.getString(ab, bs.b);
        if (!TextUtils.isEmpty(string)) {
            return aa + File.separator + string + File.separator;
        }
        try {
            CharSequence deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            string = str2;
        }
        try {
            Object ah = at.ah(context);
            String stringBuilder = (TextUtils.isEmpty(deviceId) && TextUtils.isEmpty(ah)) ? System.currentTimeMillis() + ac : new StringBuilder(String.valueOf(deviceId)).append(ah).append(ac).toString();
            try {
                str = "." + ae.aa(stringBuilder);
                if (!TextUtils.isEmpty(str) && str.length() > 13) {
                    str = str.substring(0, 11);
                }
                stringBuilder = aa + File.separator + str + File.separator;
                sharedPreferences.edit().putString(ab, str).commit();
                return stringBuilder;
            } catch (Exception e2) {
                return stringBuilder;
            }
        } catch (Exception e3) {
            return str;
        }
    }

    public static String ab(Context context) {
        return aa(context) + ae.aa(ac.bi);
    }
}
