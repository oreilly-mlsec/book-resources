package com.st.m.u;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.st.m.b.a;
import com.st.m.da.c;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Properties;
import u.aly.bs;

public class hd {
    public static final String a = c.a(a.ai);
    public static final String b = c.a(a.aj);
    public static final String c = c.a(a.ak);
    public static final String da = (c.a + File.separator + a + File.separator + b);
    private static hd ef = null;
    private static ArrayList<a> f = new ArrayList();

    private hd() {
        f = b(da);
    }

    public static hd a(Context context) {
        if (ef == null) {
            ef = new hd();
        }
        return ef;
    }

    public static String a(String str) {
        FileNotFoundException e;
        IOException e2;
        FileNotFoundException fileNotFoundException;
        IOException iOException;
        Throwable th;
        if (a()) {
            String str2 = bs.b;
            RandomAccessFile randomAccessFile = null;
            String str3;
            try {
                if (new File(str).exists()) {
                    randomAccessFile = new RandomAccessFile(str, "r");
                    try {
                        long length = randomAccessFile.length();
                        long filePointer = randomAccessFile.getFilePointer();
                        length = (length + filePointer) - 1;
                        str3 = bs.b;
                        randomAccessFile.seek(length);
                        str3 = str2;
                        while (length > filePointer) {
                            try {
                                int read = randomAccessFile.read();
                                if (read == 10 || read == 13) {
                                    str2 = randomAccessFile.readLine();
                                    if (str2 != null) {
                                        str3 = new StringBuilder(String.valueOf(str3)).append(str2).append(";").toString();
                                    }
                                    length--;
                                    str2 = str3;
                                } else {
                                    str2 = str3;
                                }
                                length--;
                                randomAccessFile.seek(length);
                                if (length == 0) {
                                    str3 = new StringBuilder(String.valueOf(str2)).append(randomAccessFile.readLine()).append(";").toString();
                                } else {
                                    str3 = str2;
                                }
                            } catch (FileNotFoundException e3) {
                                e = e3;
                            } catch (IOException e4) {
                                e2 = e4;
                            }
                        }
                        if (randomAccessFile == null) {
                            return str3;
                        }
                        try {
                            randomAccessFile.close();
                            return str3;
                        } catch (IOException e22) {
                            e22.printStackTrace();
                            return str3;
                        }
                    } catch (FileNotFoundException e5) {
                        fileNotFoundException = e5;
                        str3 = str2;
                        e = fileNotFoundException;
                    } catch (IOException e6) {
                        iOException = e6;
                        str3 = str2;
                        e22 = iOException;
                    }
                } else {
                    if (null != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e62) {
                            e62.printStackTrace();
                        }
                    }
                    return str2;
                }
            } catch (FileNotFoundException e7) {
                fileNotFoundException = e7;
                randomAccessFile = null;
                str3 = str2;
                e = fileNotFoundException;
                try {
                    e.printStackTrace();
                    if (randomAccessFile == null) {
                        return str3;
                    }
                    try {
                        randomAccessFile.close();
                        return str3;
                    } catch (IOException e222) {
                        e222.printStackTrace();
                        return str3;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e2222) {
                            e2222.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e8) {
                iOException = e8;
                randomAccessFile = null;
                str3 = str2;
                e2222 = iOException;
                e2222.printStackTrace();
                if (randomAccessFile == null) {
                    return str3;
                }
                try {
                    randomAccessFile.close();
                    return str3;
                } catch (IOException e22222) {
                    e22222.printStackTrace();
                    return str3;
                }
            } catch (Throwable th3) {
                randomAccessFile = null;
                th = th3;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        }
        ef.da("PromotionUtils", "SDCard unMounted");
        return null;
    }

    private static void a(File file, String str, boolean z) throws IOException {
        Writer fileWriter = new FileWriter(file, z);
        BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
        bufferedWriter.write(str);
        bufferedWriter.flush();
        bufferedWriter.close();
        fileWriter.close();
    }

    public static boolean a() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static ArrayList<a> b(String str) {
        ArrayList<a> arrayList = new ArrayList();
        Object a = a(str);
        if (!TextUtils.isEmpty(a)) {
            for (Object obj : a.split(";")) {
                if (!TextUtils.isEmpty(obj)) {
                    String[] split = obj.split("&");
                    a aVar = new a();
                    if (!TextUtils.isEmpty(split[0])) {
                        aVar.a(split[0]);
                        aVar.b(split[1]);
                        aVar.a(Integer.valueOf(split[2]).intValue());
                        arrayList.add(aVar);
                    }
                }
            }
        }
        return arrayList;
    }

    private boolean b(a aVar) {
        if (f.size() == 0) {
            return false;
        }
        Iterator it = f.iterator();
        while (it.hasNext()) {
            if (aVar.b().equals(((a) it.next()).b())) {
                return true;
            }
        }
        return false;
    }

    public void a(a aVar) {
        if (!a()) {
            ef.da("PromotionUtils", "SDCard unMounted");
        } else if (b(aVar)) {
            ef.da("PromotionUtils", " AppInfo In SDCardFile ");
        } else {
            File file = new File(c.a + File.separator + a);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, b);
            if (!file2.exists()) {
                try {
                    file2.createNewFile();
                } catch (Throwable e) {
                    e.printStackTrace();
                    ef.a(e);
                }
            }
            try {
                a(file2, aVar.a() + "&" + aVar.b() + "&" + aVar.c() + "\n", true);
            } catch (Throwable e2) {
                e2.printStackTrace();
                ef.a(e2);
            }
        }
    }

    public void a(String str, String str2) {
        if (a()) {
            Properties properties = new Properties();
            File file = new File(c.a + File.separator + a);
            File file2 = new File(file, c);
            try {
                if (!file.exists()) {
                    file.mkdirs();
                }
                if (!file2.exists()) {
                    file2.createNewFile();
                }
                properties.load(new FileInputStream(file2));
                properties.setProperty(str, str2);
                properties.store(new FileOutputStream(file2), bs.b);
            } catch (Throwable e) {
                ef.a(e);
            }
        }
    }

    public String c(String str) {
        String str2 = null;
        if (a()) {
            Properties properties = new Properties();
            File file = new File(c.a + File.separator + a);
            File file2 = new File(file, c);
            try {
                if (!file.exists()) {
                    file.mkdirs();
                }
                if (file2.exists()) {
                    properties.load(new FileInputStream(file2));
                    str2 = properties.getProperty(str);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str2;
    }
}
