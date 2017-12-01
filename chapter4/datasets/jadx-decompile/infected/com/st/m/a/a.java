package com.st.m.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import com.st.m.u.c;
import com.st.m.u.ef;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import u.aly.bs;

public class a implements UncaughtExceptionHandler {
    public static final String a = c.a(com.st.m.u.a.Ez);
    public static final String b = c.a(com.st.m.u.a.j);
    public static final String c = c.a(com.st.m.u.a.ks);
    private static a ef;
    private UncaughtExceptionHandler da;
    private Context f;
    private Map<String, String> gt = new HashMap();

    private a() {
    }

    public static a a() {
        synchronized (a.class) {
            if (ef == null) {
                ef = new a();
            }
        }
        return ef;
    }

    private boolean a(Throwable th) {
        if (th == null) {
            return false;
        }
        b(this.f);
        b(th);
        return true;
    }

    private synchronized String b(Throwable th) {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        for (Entry entry : this.gt.entrySet()) {
            String str2 = (String) entry.getKey();
            stringBuffer.append(new StringBuilder(String.valueOf(str2)).append("=").append((String) entry.getValue()).append("\n").toString());
        }
        Writer stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        printWriter.close();
        stringBuffer.append(stringWriter.toString());
        try {
            str = b + "-" + new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA).format(new Date()) + "-" + System.currentTimeMillis() + c;
            if (Environment.getExternalStorageState().equals("mounted")) {
                str2 = new StringBuilder(String.valueOf(com.st.m.da.c.a(this.f))).append(b).append(File.separator).toString();
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                file = new File(str2, str);
                if (!file.exists()) {
                    file.createNewFile();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(stringBuffer.toString().getBytes());
                fileOutputStream.close();
            }
        } catch (Exception e) {
            ef.da(a, new StringBuilder(String.valueOf(4)).append("    ").append(e).toString());
            str = null;
        }
        return str;
    }

    public void a(Context context) {
        this.f = context;
        this.da = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public void b(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 1);
            if (packageInfo != null) {
                Object obj = packageInfo.versionName == null ? "null" : packageInfo.versionName;
                String stringBuilder = new StringBuilder(String.valueOf(packageInfo.versionCode)).toString();
                String str = bs.b;
                this.gt.put(c.a(com.st.m.u.a.r), obj);
                this.gt.put(c.a(com.st.m.u.a.s), stringBuilder);
                this.gt.put(c.a(com.st.m.u.a.td), "1.0.0.2");
                this.gt.put(c.a(com.st.m.u.a.u), str);
                this.gt.put(c.a(com.st.m.u.a.v), this.f.getPackageName());
            }
        } catch (NameNotFoundException e) {
            ef.da(a, new StringBuilder(String.valueOf(2)).append("     ").append(e).toString());
        }
        for (Field field : Build.class.getDeclaredFields()) {
            try {
                field.setAccessible(true);
                this.gt.put(field.getName(), field.get(null).toString());
                ef.c(a, field.getName() + " : " + field.get(null));
            } catch (Exception e2) {
                ef.da(a, new StringBuilder(String.valueOf(3)).append("     ").append(e2).toString());
            }
        }
    }

    public void uncaughtException(Thread thread, Throwable th) {
        if (a(th) || this.da == null) {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                ef.da(a, new StringBuilder(String.valueOf(1)).append("    ").append(e).toString());
            }
            Process.killProcess(Process.myPid());
            System.exit(1);
            return;
        }
        this.da.uncaughtException(thread, th);
    }
}
