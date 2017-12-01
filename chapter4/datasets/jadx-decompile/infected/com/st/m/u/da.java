package com.st.m.u;

import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.text.DecimalFormat;
import java.util.Properties;

public class da {
    public static final String a = c.a(a.aa);
    public static final String b = c.a(a.J);

    public static int a(long j) {
        DecimalFormat decimalFormat = new DecimalFormat("###.##");
        return (int) (((float) j) / 1048576.0f);
    }

    public static File a() {
        return new File(new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath())).append(File.separator).append(a).append(File.separator).append(c.b()).toString());
    }

    public static boolean a(Properties properties, String str) {
        if (!(properties == null || TextUtils.isEmpty(str))) {
            if (str.equals("a")) {
                if ("b".equals(properties.getProperty(str))) {
                    return true;
                }
            } else if (str.equals("b")) {
                if ("1".equals(properties.getProperty(str))) {
                    return true;
                }
            } else if (str.equals("c")) {
                if ("d".equals(properties.getProperty(str))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Properties b() {
        FileInputStream fileInputStream;
        Exception e;
        Throwable th;
        File a = a();
        if (a == null || !a.exists()) {
            return null;
        }
        Properties properties = new Properties();
        try {
            fileInputStream = new FileInputStream(a);
            try {
                properties.load(fileInputStream);
                if (fileInputStream == null) {
                    return properties;
                }
                try {
                    fileInputStream.close();
                    return properties;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return properties;
                }
            } catch (Exception e3) {
                e2 = e3;
                try {
                    e2.printStackTrace();
                    if (fileInputStream != null) {
                        return properties;
                    }
                    try {
                        fileInputStream.close();
                        return properties;
                    } catch (Exception e22) {
                        e22.printStackTrace();
                        return properties;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e222) {
                            e222.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (Exception e4) {
            Exception exception = e4;
            fileInputStream = null;
            e222 = exception;
            e222.printStackTrace();
            if (fileInputStream != null) {
                return properties;
            }
            fileInputStream.close();
            return properties;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            throw th;
        }
    }
}
