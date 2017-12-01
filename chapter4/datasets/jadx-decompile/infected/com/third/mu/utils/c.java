package com.third.mu.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.util.ArrayList;
import java.util.List;

public class c {
    public static String a = "2";
    private static String b = "com.android.vending";

    public static boolean a(Context context) {
        List installedPackages = context.getPackageManager().getInstalledPackages(0);
        List arrayList = new ArrayList();
        if (installedPackages != null) {
            for (int i = 0; i < installedPackages.size(); i++) {
                arrayList.add(((PackageInfo) installedPackages.get(i)).packageName);
            }
        }
        return arrayList.contains(b);
    }
}
