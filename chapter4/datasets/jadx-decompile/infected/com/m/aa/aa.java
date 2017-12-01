package com.m.aa;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import com.m.ac.ab;
import com.m.u.ac;
import com.m.u.ae;
import com.m.u.ag;
import com.m.u.ak;
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

public class aa implements UncaughtExceptionHandler {
    public static final String aa = ae.aa(ac.ds);
    public static final String ab = ae.aa(ac.bg);
    public static final String ac = ae.aa(ac.bh);
    private static aa ae;
    private UncaughtExceptionHandler ad;
    private Context af;
    private Map<String, String> ag = new HashMap();

    private aa() {
    }

    public static aa aa() {
        synchronized (aa.class) {
            if (ae == null) {
                ae = new aa();
            }
        }
        return ae;
    }

    private boolean aa(Throwable th) {
        if (th == null) {
            return false;
        }
        ab(this.af);
        ab(th);
        return true;
    }

    private synchronized String ab(Throwable th) {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        for (Entry entry : this.ag.entrySet()) {
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
            str = ab + "-" + new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA).format(new Date()) + "-" + System.currentTimeMillis() + ac;
            if (Environment.getExternalStorageState().equals("mounted")) {
                str2 = new StringBuilder(String.valueOf(ab.aa(this.af))).append(ab).append(File.separator).toString();
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
            ag.ad(aa, new StringBuilder(String.valueOf(4)).append("    ").append(e).toString());
            str = null;
        }
        return str;
    }

    public void aa(Context context) {
        this.af = context;
        this.ad = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public void ab(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 1);
            if (packageInfo != null) {
                Object obj = packageInfo.versionName == null ? "null" : packageInfo.versionName;
                String stringBuilder = new StringBuilder(String.valueOf(packageInfo.versionCode)).toString();
                String str = ak.ab(this.af);
                this.ag.put(ae.aa(ac.cq), obj);
                this.ag.put(ae.aa(ac.cr), stringBuilder);
                this.ag.put(ae.aa(ac.cs), "2.0.4");
                this.ag.put(ae.aa(ac.ct), str);
                this.ag.put(ae.aa(ac.cu), this.af.getPackageName());
            }
        } catch (NameNotFoundException e) {
            ag.ad(aa, new StringBuilder(String.valueOf(2)).append("     ").append(e).toString());
        }
        for (Field field : Build.class.getDeclaredFields()) {
            try {
                field.setAccessible(true);
                this.ag.put(field.getName(), field.get(null).toString());
                ag.ac(aa, field.getName() + " : " + field.get(null));
            } catch (Exception e2) {
                ag.ad(aa, new StringBuilder(String.valueOf(3)).append("     ").append(e2).toString());
            }
        }
    }

    public void uncaughtException(Thread thread, Throwable th) {
        if (aa(th) || this.ad == null) {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                ag.ad(aa, new StringBuilder(String.valueOf(1)).append("    ").append(e).toString());
            }
            Process.killProcess(Process.myPid());
            System.exit(1);
            return;
        }
        this.ad.uncaughtException(thread, th);
    }
}
