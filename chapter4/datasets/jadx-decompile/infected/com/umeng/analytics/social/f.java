package com.umeng.analytics.social;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.umeng.analytics.a;
import com.umeng.analytics.social.UMPlatformData.GENDER;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;
import u.aly.bs;

/* compiled from: UMUtils */
public abstract class f {
    private static Map<String, String> a;

    protected static String[] a(Context context, String str, UMPlatformData... uMPlatformDataArr) throws a {
        if (uMPlatformDataArr == null || uMPlatformDataArr.length == 0) {
            throw new a("platform data is null");
        }
        Object a = a(context);
        if (TextUtils.isEmpty(a)) {
            throw new a("can`t get appkey.");
        }
        List arrayList = new ArrayList();
        String str2 = "http://log.umsns.com/share/api/" + a + "/";
        if (a == null || a.isEmpty()) {
            a = c(context);
        }
        if (!(a == null || a.isEmpty())) {
            for (Entry entry : a.entrySet()) {
                arrayList.add(new BasicNameValuePair((String) entry.getKey(), (String) entry.getValue()));
            }
        }
        arrayList.add(new BasicNameValuePair("date", String.valueOf(System.currentTimeMillis())));
        arrayList.add(new BasicNameValuePair("channel", e.e));
        if (!TextUtils.isEmpty(str)) {
            arrayList.add(new BasicNameValuePair("topic", str));
        }
        arrayList.addAll(a(uMPlatformDataArr));
        String b = b(uMPlatformDataArr);
        if (b == null) {
            b = "null";
        }
        b.c(a.e, "URL:" + (str2 + "?" + a(arrayList)));
        b.c(a.e, "BODY:" + b);
        return new String[]{r1, b};
    }

    private static String a(List<NameValuePair> list) {
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new UrlEncodedFormEntity(list, "UTF-8").writeTo(byteArrayOutputStream);
            return byteArrayOutputStream.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static List<NameValuePair> a(UMPlatformData... uMPlatformDataArr) {
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        StringBuilder stringBuilder3 = new StringBuilder();
        for (UMPlatformData uMPlatformData : uMPlatformDataArr) {
            stringBuilder.append(uMPlatformData.getMeida().toString());
            stringBuilder.append(',');
            stringBuilder2.append(uMPlatformData.getUsid());
            stringBuilder2.append(',');
            stringBuilder3.append(uMPlatformData.getWeiboId());
            stringBuilder3.append(',');
        }
        if (uMPlatformDataArr.length > 0) {
            stringBuilder.deleteCharAt(stringBuilder.length() - 1);
            stringBuilder2.deleteCharAt(stringBuilder2.length() - 1);
            stringBuilder3.deleteCharAt(stringBuilder3.length() - 1);
        }
        List<NameValuePair> arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("platform", stringBuilder.toString()));
        arrayList.add(new BasicNameValuePair("usid", stringBuilder2.toString()));
        if (stringBuilder3.length() > 0) {
            arrayList.add(new BasicNameValuePair("weiboid", stringBuilder3.toString()));
        }
        return arrayList;
    }

    private static String b(UMPlatformData... uMPlatformDataArr) {
        JSONObject jSONObject = new JSONObject();
        for (UMPlatformData uMPlatformData : uMPlatformDataArr) {
            Object obj;
            GENDER gender = uMPlatformData.getGender();
            CharSequence name = uMPlatformData.getName();
            if (gender == null) {
                try {
                    if (TextUtils.isEmpty(name)) {
                    }
                } catch (Throwable e) {
                    throw new a("build body exception", e);
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            String str = "gender";
            if (gender == null) {
                obj = bs.b;
            } else {
                obj = String.valueOf(gender.value);
            }
            jSONObject2.put(str, obj);
            jSONObject2.put("name", name == null ? bs.b : String.valueOf(name));
            jSONObject.put(uMPlatformData.getMeida().toString(), jSONObject2);
        }
        if (jSONObject.length() == 0) {
            return null;
        }
        return jSONObject.toString();
    }

    private static Map<String, String> c(Context context) throws a {
        Map<String, String> hashMap = new HashMap();
        Map b = b(context);
        if (b == null || b.isEmpty()) {
            throw new a("can`t get device id.");
        }
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        for (Entry entry : b.entrySet()) {
            if (!TextUtils.isEmpty((CharSequence) entry.getValue())) {
                stringBuilder2.append((String) entry.getKey()).append(",");
                stringBuilder.append((String) entry.getValue()).append(",");
            }
        }
        if (stringBuilder.length() > 0) {
            stringBuilder.deleteCharAt(stringBuilder.length() - 1);
            hashMap.put("deviceid", stringBuilder.toString());
        }
        if (stringBuilder2.length() > 0) {
            stringBuilder2.deleteCharAt(stringBuilder2.length() - 1);
            hashMap.put("idtype", stringBuilder2.toString());
        }
        return hashMap;
    }

    protected static String a(Context context) {
        Object obj = e.d;
        if (TextUtils.isEmpty(obj)) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null) {
                    String string = applicationInfo.metaData.getString("UMENG_APPKEY");
                    if (string != null) {
                        return string.trim();
                    }
                    b.b(a.e, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
                }
            } catch (Exception e) {
                b.b(a.e, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", e);
            }
            return null;
        }
        b.b(a.e, "use usefully appkey from constant field.");
        return obj;
    }

    public static Map<String, String> b(Context context) {
        CharSequence deviceId;
        CharSequence d;
        CharSequence string;
        Map<String, String> hashMap = new HashMap();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            b.e(a.e, "No IMEI.");
        }
        try {
            if (a(context, "android.permission.READ_PHONE_STATE")) {
                deviceId = telephonyManager.getDeviceId();
                d = d(context);
                string = Secure.getString(context.getContentResolver(), "android_id");
                if (!TextUtils.isEmpty(d)) {
                    hashMap.put("mac", d);
                }
                if (!TextUtils.isEmpty(deviceId)) {
                    hashMap.put("imei", deviceId);
                }
                if (!TextUtils.isEmpty(string)) {
                    hashMap.put("android_id", string);
                }
                return hashMap;
            }
        } catch (Exception e) {
            b.e(a.e, "No IMEI.", e);
        }
        deviceId = null;
        d = d(context);
        string = Secure.getString(context.getContentResolver(), "android_id");
        if (TextUtils.isEmpty(d)) {
            hashMap.put("mac", d);
        }
        if (TextUtils.isEmpty(deviceId)) {
            hashMap.put("imei", deviceId);
        }
        if (TextUtils.isEmpty(string)) {
            hashMap.put("android_id", string);
        }
        return hashMap;
    }

    private static boolean a(Context context, String str) {
        if (context.getPackageManager().checkPermission(str, context.getPackageName()) != 0) {
            return false;
        }
        return true;
    }

    private static String d(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (a(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            b.e(a.e, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            return bs.b;
        } catch (Exception e) {
            b.e(a.e, "Could not get mac address." + e.toString());
        }
    }
}
