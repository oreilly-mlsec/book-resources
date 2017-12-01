package com.st.m.u;

import android.os.Environment;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import u.aly.bs;

public class ef {
    public static final String a = c.a(a.D);
    public static final String b = c.a(a.ab);
    private static StringBuffer c = new StringBuffer();
    private static SimpleDateFormat da = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS");
    private static File ef;
    private static BufferedWriter f;
    private static FileWriter gt;
    private static int hd;
    private static a if;
    private static String j = bs.b;

    static class a extends Thread {
        a() {
        }

        public void run() {
            while (true) {
                if (ef.hd >= 10 && ef.c.length() == 0) {
                    try {
                        break;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                } else if (ef.c.length() == 0) {
                    ef.hd = ef.hd + 1;
                } else {
                    ef.hd = 0;
                    try {
                        File c = ef.f();
                        if (!c.exists()) {
                            c.createNewFile();
                        }
                        ef.f.write(ef.c.toString());
                        ef.f.flush();
                        ef.c.setLength(0);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    try {
                        sleep(300);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            if (ef.f != null) {
                ef.f.close();
            }
            if (ef.gt != null) {
                ef.gt.close();
            }
            ef.ef = null;
        }
    }

    public static void a(String str) {
        if (f.a().b()) {
            Log.e(a, j + "\t " + str);
            ef(da.format(new Date()), a + "\t" + str);
        }
    }

    public static void a(String str, String str2) {
        if (f.a().b()) {
            Log.e(str, j + "\t " + str2);
            ef(da.format(new Date()), new StringBuilder(String.valueOf(str)).append("\t").append(str2).toString());
        }
    }

    public static void a(Throwable th) {
        if (f.a().b()) {
            th.printStackTrace();
            Writer stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter, true);
            th.printStackTrace(printWriter);
            printWriter.flush();
            stringWriter.flush();
            c.append(new StringBuilder(String.valueOf(da.format(new Date()))).append("\t ").append(stringWriter.toString()).append("\n").toString());
        }
    }

    public static void b(String str) {
        if (f.a().b()) {
            Log.d(a, j + "\t " + str);
            ef(da.format(new Date()), a + "\t" + str);
        }
    }

    public static void b(String str, String str2) {
        if (f.a().b()) {
            Log.d(str, j + "\t " + str2);
            ef(da.format(new Date()), new StringBuilder(String.valueOf(str)).append("\t").append(str2).toString());
        }
    }

    public static void c(String str, String str2) {
        if (f.a().b()) {
            Log.d(str, j + "\t " + str2);
            ef(da.format(new Date()), new StringBuilder(String.valueOf(str)).append("\t").append(str2).toString());
        }
    }

    public static void da(String str, String str2) {
        if (f.a().b()) {
            Log.e(str, j + "\t " + str2);
            ef(da.format(new Date()), new StringBuilder(String.valueOf(str)).append("\t").append(str2).toString());
        }
    }

    public static synchronized void ef(String str, String str2) {
        synchronized (ef.class) {
            if (f.a().b()) {
                c.append(new StringBuilder(String.valueOf(str)).append("\t").append(str2).append("\n").toString());
                if (if == null || !if.isAlive()) {
                    if = new a();
                    if.start();
                }
            }
        }
    }

    private static synchronized File f() {
        File file;
        synchronized (ef.class) {
            if (ef != null) {
                file = ef;
            } else {
                int i = Calendar.getInstance(Locale.CHINA).get(1);
                int i2 = Calendar.getInstance(Locale.CHINA).get(2) + 1;
                String stringBuilder = new StringBuilder(String.valueOf(i)).append("-").append(i2).append("-").append(Calendar.getInstance(Locale.CHINA).get(5)).toString();
                if (ef == null || !ef.getName().equals(new StringBuilder(String.valueOf(stringBuilder)).append(c.a(a.K)).toString())) {
                    File file2 = new File(new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath())).append(File.separator).append(File.separator).append(b).append(File.separator).toString());
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    ef = new File(file2, new StringBuilder(String.valueOf(stringBuilder)).append(c.a(a.K)).toString());
                    try {
                        gt = new FileWriter(ef, true);
                        f = new BufferedWriter(gt);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                file = ef;
            }
        }
        return file;
    }
}
