package com.third.mx.utils;

import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.apache.http.NameValuePair;
import u.aly.bs;

public class b {
    public static void a(String str, String str2) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(Environment.getExternalStorageDirectory(), str), true);
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.close();
            return;
        }
        g.a("Sdcard 不存在");
    }

    public static void a(String str, String str2, ArrayList arrayList) {
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
        g.a(stringBuilder.toString());
        try {
            a("justin.txt", stringBuilder.toString() + "\r\n");
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
