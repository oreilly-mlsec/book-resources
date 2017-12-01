package com.m.u;

import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

public class af {
    public static final String aa = ae.aa(ac.d);
    public static final String ab = ae.aa(ac.ei);

    public static File aa() {
        return new File(new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath())).append(File.separator).append(aa).append(File.separator).append(ae.ab()).toString());
    }

    public static void aa(File file, File file2) throws IOException {
        aa(new FileInputStream(file), new FileOutputStream(file2));
    }

    public static void aa(InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        byte[] bArr = new byte[2048];
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read == -1) {
                bufferedOutputStream.flush();
                bufferedInputStream.close();
                bufferedOutputStream.close();
                inputStream.close();
                outputStream.close();
                return;
            }
            bufferedOutputStream.write(bArr, 0, read);
        }
    }

    public static boolean aa(String str) {
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            return false;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isFile()) {
                    listFiles[i].delete();
                } else {
                    aa(listFiles[i].getAbsolutePath());
                }
            }
        }
        return file.delete();
    }

    public static boolean aa(Properties properties, String str) {
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

    public static Properties ab() {
        FileInputStream fileInputStream;
        Exception e;
        Throwable th;
        File aa = aa();
        if (aa == null || !aa.exists()) {
            return null;
        }
        Properties properties = new Properties();
        try {
            fileInputStream = new FileInputStream(aa);
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
