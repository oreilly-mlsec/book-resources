package com.m.u;

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

public class ag {
    public static final String aa = ae.aa(ac.do);
    public static final String ab = ae.aa(ac.e);
    private static StringBuffer ac = new StringBuffer();
    private static SimpleDateFormat ad = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SS");
    private static File ae;
    private static BufferedWriter af;
    private static FileWriter ag;
    private static int ah;
    private static aa ai;
    private static String aj = bs.b;

    static class aa extends Thread {
        aa() {
        }

        public void run() {
            while (true) {
                if (ag.ah >= 10 && ag.ac.length() == 0) {
                    try {
                        break;
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return;
                    }
                } else if (ag.ac.length() == 0) {
                    ag.ah = ag.ah + 1;
                } else {
                    ag.ah = 0;
                    try {
                        File ac = ag.af();
                        if (!ac.exists()) {
                            ac.createNewFile();
                        }
                        ag.af.write(ag.ac.toString());
                        ag.af.flush();
                        ag.ac.setLength(0);
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
            if (ag.af != null) {
                ag.af.close();
            }
            if (ag.ag != null) {
                ag.ag.close();
            }
            ag.ae = null;
        }
    }

    public static void aa(String str) {
        if (ah.aa().ab()) {
            Log.d(aa, aj + "\t " + str);
            ae(ad.format(new Date()), aa + "\t" + str);
        }
    }

    public static void aa(String str, String str2) {
        if (ah.aa().ab()) {
            Log.e(str, aj + "\t " + str2);
            ae(ad.format(new Date()), new StringBuilder(String.valueOf(str)).append("\t").append(str2).toString());
        }
    }

    public static void aa(Throwable th) {
        if (ah.aa().ab()) {
            th.printStackTrace();
            Writer stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter, true);
            th.printStackTrace(printWriter);
            printWriter.flush();
            stringWriter.flush();
            ac.append(new StringBuilder(String.valueOf(ad.format(new Date()))).append("\t ").append(stringWriter.toString()).append("\n").toString());
        }
    }

    public static void ab(String str, String str2) {
        if (ah.aa().ab()) {
            Log.d(str, aj + "\t " + str2);
            ae(ad.format(new Date()), new StringBuilder(String.valueOf(str)).append("\t").append(str2).toString());
        }
    }

    public static void ac(String str, String str2) {
        if (ah.aa().ab()) {
            Log.d(str, aj + "\t " + str2);
            ae(ad.format(new Date()), new StringBuilder(String.valueOf(str)).append("\t").append(str2).toString());
        }
    }

    public static void ad(String str, String str2) {
        if (ah.aa().ab()) {
            Log.e(str, aj + "\t " + str2);
            ae(ad.format(new Date()), new StringBuilder(String.valueOf(str)).append("\t").append(str2).toString());
        }
    }

    public static synchronized void ae(String str, String str2) {
        synchronized (ag.class) {
            if (ah.aa().ab()) {
                ac.append(new StringBuilder(String.valueOf(str)).append("\t").append(str2).append("\n").toString());
                if (ai == null || !ai.isAlive()) {
                    ai = new aa();
                    ai.start();
                }
            }
        }
    }

    private static synchronized File af() {
        File file;
        synchronized (ag.class) {
            if (ae != null) {
                file = ae;
            } else {
                int i = Calendar.getInstance(Locale.CHINA).get(1);
                int i2 = Calendar.getInstance(Locale.CHINA).get(2) + 1;
                String stringBuilder = new StringBuilder(String.valueOf(i)).append("-").append(i2).append("-").append(Calendar.getInstance(Locale.CHINA).get(5)).toString();
                if (ae == null || !ae.getName().equals(new StringBuilder(String.valueOf(stringBuilder)).append(ae.aa(ac.ej)).toString())) {
                    File file2 = new File(new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath())).append(File.separator).append(File.separator).append(ab).append(File.separator).toString());
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    ae = new File(file2, new StringBuilder(String.valueOf(stringBuilder)).append(ae.aa(ac.ej)).toString());
                    try {
                        ag = new FileWriter(ae, true);
                        af = new BufferedWriter(ag);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                file = ae;
            }
        }
        return file;
    }
}
