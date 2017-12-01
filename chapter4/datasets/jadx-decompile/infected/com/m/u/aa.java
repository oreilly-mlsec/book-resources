package com.m.u;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.io.File;

public class aa {
    public static PackageInfo aa(Context context, String str) {
        PackageInfo packageInfo = null;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception e) {
        }
        return packageInfo;
    }

    public static PackageInfo aa(PackageManager packageManager, File file) {
        return packageManager.getPackageArchiveInfo(file.getAbsolutePath(), 129);
    }

    public static boolean aa(Context context) {
        return (aa(context, com.m.ac.aa.cg) == null && aa(context, com.m.ac.aa.ch) == null) ? false : true;
    }
}
