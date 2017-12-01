package com.third.mu.utils;

import android.os.Environment;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;

public class a {
    protected static final String a = new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getPath())).append(File.separator).append("FP").append(".txt").toString();
    protected static int b = 0;
    protected static boolean c = false;
    protected static SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public static void a(Exception exception) {
        if (c) {
            exception.printStackTrace();
        }
    }

    protected static void a(String str) {
        BufferedWriter bufferedWriter;
        Throwable th;
        Exception e;
        try {
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(a, true)));
            try {
                bufferedWriter.write(str);
                bufferedWriter.flush();
                try {
                    bufferedWriter.close();
                } catch (Exception e2) {
                }
            } catch (FileNotFoundException e3) {
                try {
                    new File(a).createNewFile();
                } catch (IOException e4) {
                    e4.printStackTrace();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        bufferedWriter.close();
                    } catch (Exception e5) {
                    }
                    throw th;
                }
                try {
                    bufferedWriter.close();
                } catch (Exception e6) {
                }
            } catch (Exception e7) {
                e = e7;
                try {
                    a(e);
                    try {
                        bufferedWriter.close();
                    } catch (Exception e8) {
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedWriter.close();
                    throw th;
                }
            }
        } catch (FileNotFoundException e9) {
            bufferedWriter = null;
            new File(a).createNewFile();
            bufferedWriter.close();
        } catch (Exception e10) {
            e = e10;
            bufferedWriter = null;
            a(e);
            bufferedWriter.close();
        } catch (Throwable th4) {
            th = th4;
            bufferedWriter = null;
            bufferedWriter.close();
            throw th;
        }
    }
}
