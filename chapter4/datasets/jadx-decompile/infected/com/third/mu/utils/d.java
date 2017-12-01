package com.third.mu.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.notification.configure.WebFlag;
import com.third.mu.update.a;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import u.aly.bs;

public class d {
    private static String a;
    private static String b;
    private static String c;
    private static String d;
    private static String e = bs.b;
    private static String f = bs.b;
    private static String g;
    private static String h;

    public static int a() {
        try {
            return VERSION.SDK_INT;
        } catch (Exception e) {
            return 0;
        }
    }

    public static String a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(b(context));
        String str = bs.b;
        try {
            str = a(b(), arrayList).trim();
            if (a(str)) {
                str = a(c(), arrayList).trim();
            }
        } catch (UnknownHostException e) {
            try {
                str = a(c(), arrayList).trim();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Exception e22) {
            e22.printStackTrace();
        }
        Log.i("resoult ", "resoult:" + str);
        return str;
    }

    public static String a(String str, ArrayList arrayList) {
        String str2 = bs.b;
        try {
            HttpUriRequest httpPost = new HttpPost(str);
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 30000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 30000);
            HttpResponse execute = new DefaultHttpClient(basicHttpParams).execute(httpPost);
            if (execute.getStatusLine().getStatusCode() == 200) {
                str2 = EntityUtils.toString(execute.getEntity());
            }
        } catch (UnknownHostException e) {
            throw e;
        } catch (Exception e2) {
        }
        if (b.e == b.b || b.e == b.d) {
            a(str, str2, arrayList);
        }
        a(str, str2, arrayList);
        return str2;
    }

    private static void a(String str, String str2, ArrayList arrayList) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
        StringBuilder stringBuilder = new StringBuilder(bs.b);
        stringBuilder.append("[time:");
        stringBuilder.append(simpleDateFormat.format(new Date())).append(']');
        stringBuilder.append("[url:").append(str).append(']');
        stringBuilder.append("[result:").append(str2).append(']');
        stringBuilder.append("[param:");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            NameValuePair nameValuePair = (NameValuePair) it.next();
            stringBuilder.append(nameValuePair.getName() + ":" + nameValuePair.getValue()).append(',');
        }
        stringBuilder.deleteCharAt(stringBuilder.length() - 1);
        stringBuilder.append("]");
        System.out.println(stringBuilder.toString());
        a.a(stringBuilder.toString());
    }

    private static boolean a(String str) {
        if (!TextUtils.isEmpty(str)) {
            if ((str.startsWith("http") && str.endsWith(".jar")) || str.equals("1000")) {
                return false;
            }
            if (str.equals("-1000")) {
                return false;
            }
        }
        return true;
    }

    public static String b() {
        return a.c() ? "http://192.168.10.169:9392/pthrkup.do" : "http://hgupdate.hmapi.com:7017/pthrkup.do";
    }

    public static ArrayList b(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            Object c = g.c(context);
            if (TextUtils.isEmpty(c)) {
                arrayList.add(new BasicNameValuePair("uuid", h(context)));
            } else {
                arrayList.add(new BasicNameValuePair("uuid", c));
            }
            arrayList.add(new BasicNameValuePair("mid", f(context)));
            arrayList.add(new BasicNameValuePair("imid", h(context)));
            arrayList.add(new BasicNameValuePair("language", e(context)));
            arrayList.add(new BasicNameValuePair("appkey", i(context)));
            arrayList.add(new BasicNameValuePair("sv", h.c(context)));
            arrayList.add(new BasicNameValuePair("kv", h.d(context)));
            arrayList.add(new BasicNameValuePair("pname", c(context)));
            arrayList.add(new BasicNameValuePair("appname", d(context)));
            arrayList.add(new BasicNameValuePair("model", Build.MODEL));
            arrayList.add(new BasicNameValuePair("networkname", k(context)));
            arrayList.add(new BasicNameValuePair("operatorsname", j(context)));
            arrayList.add(new BasicNameValuePair("networktype", l(context)));
            arrayList.add(new BasicNameValuePair("api", new StringBuilder(String.valueOf(a())).toString()));
            if (c.a(context)) {
                arrayList.add(new BasicNameValuePair("gp", "1"));
            } else {
                arrayList.add(new BasicNameValuePair("gp", "0"));
            }
            arrayList.add(new BasicNameValuePair("lpadkind", c.a));
        } catch (Exception e) {
            a.a(e);
        }
        return arrayList;
    }

    public static String c() {
        return a.c() ? "http://192.168.10.169:9392/pthrkup.do" : "http://hgupdate.eoapi.com:7017/pthrkup.do";
    }

    public static String c(Context context) {
        if (context != null && TextUtils.isEmpty(a)) {
            a = context.getApplicationInfo().packageName;
        }
        return a;
    }

    public static String d(Context context) {
        if (context != null && TextUtils.isEmpty(b)) {
            b = (String) context.getApplicationInfo().loadLabel(context.getPackageManager());
        }
        return b;
    }

    public static String e(Context context) {
        return Locale.getDefault().getLanguage();
    }

    public static String f(Context context) {
        if (context != null && TextUtils.isEmpty(d)) {
            d = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            if (d == null || d.trim().length() == 0 || d.matches("0+")) {
                d = "000000000000000";
            }
        }
        return d;
    }

    public static String g(Context context) {
        if (context != null && TextUtils.isEmpty(e)) {
            e = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
            if (e == null || e.trim().length() == 0 || e.matches("0+")) {
                e = "000000000000000";
            }
        }
        return e;
    }

    public static String h(Context context) {
        if (context != null && TextUtils.isEmpty(f)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(f(context));
            stringBuffer.append("_");
            stringBuffer.append(g(context));
            f = stringBuffer.toString();
        }
        return f;
    }

    public static String i(Context context) {
        if (context != null && TextUtils.isEmpty(c)) {
            try {
                Object h = h.h(context);
                if (TextUtils.isEmpty(h)) {
                    Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                    h = bundle.get("FR_KEY");
                    if (h == null) {
                        h = bundle.get("FP_KEY");
                    }
                    c = h.toString();
                } else {
                    c = h;
                }
            } catch (Exception e) {
                a.a(e);
            }
        }
        return c;
    }

    public static String j(Context context) {
        if (context != null && TextUtils.isEmpty(h)) {
            Object simOperatorName = ((TelephonyManager) context.getSystemService("phone")).getSimOperatorName();
            if (!TextUtils.isEmpty(simOperatorName)) {
                h = simOperatorName;
            }
        }
        return h;
    }

    public static String k(Context context) {
        if (context != null && TextUtils.isEmpty(g)) {
            Object simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
            if (!TextUtils.isEmpty(simOperator)) {
                g = simOperator;
            }
        }
        return g;
    }

    public static String l(Context context) {
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
}
