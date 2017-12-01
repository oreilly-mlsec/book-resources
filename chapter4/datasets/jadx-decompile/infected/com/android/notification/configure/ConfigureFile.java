package com.android.notification.configure;

import android.os.Environment;

public class ConfigureFile {
    public static final String DownInfoFile = (savePath + "/down.properties");
    public static final String JWDLogFile = (savePath + "/Debug.txt");
    public static final String PhoneConfigFile = (savePath + "/PhoneConfigFile.properties");
    public static final String PushConfigFile = (savePath + "/PushConfigFile.properties");
    public static final String TimerConfigFile = (savePath + "/TimerConfigFile.properties");
    public static final String saveAPKPath = (savePath + "/apk");
    public static final String saveAppImgPath = (savePath + "/img");
    public static final String savePath = (Environment.getExternalStorageDirectory() + "/Android/data/android.com.system");
}
