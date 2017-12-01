package com.st.m.b;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.st.m.da.a;
import com.st.m.e.M;
import com.st.m.u.hd;
import com.st.m.u.l;
import java.util.List;

public class c {
    private static c a = null;
    private static Context b = null;
    private int c;

    private c() {
    }

    public static c a(Context context) {
        b = context;
        if (a == null) {
            a = new c();
        }
        return a;
    }

    private void a() {
        Object c = hd.a(b).c(a.b);
        PackageInfo a = a(b, c);
        if (TextUtils.isEmpty(c) || c.contains(b.getPackageName()) || a == null) {
            hd.a(b).a(a.b, b.getPackageName());
            this.c = 1;
            return;
        }
        this.c = 2;
    }

    private void a(int i, String str, String str2, int i2) {
        a();
        if (this.c != 2) {
            a aVar = new a();
            aVar.a(str);
            aVar.b(str2);
            aVar.a(i2);
            aVar.b(i);
            aVar.c(0);
            SB.a(b).a(aVar);
            l.a(b).a(M.SEND_DATA_SERVICE.b());
        }
    }

    public PackageInfo a(Context context, String str) {
        int i = 0;
        List installedPackages = null == null ? context.getPackageManager().getInstalledPackages(0) : null;
        while (i < installedPackages.size()) {
            PackageInfo packageInfo = (PackageInfo) installedPackages.get(i);
            if (packageInfo.packageName.equals(str)) {
                return packageInfo;
            }
            i++;
        }
        return null;
    }

    public void a(String str, String str2, int i) {
        a(1, str, str2, i);
    }

    public void b(String str, String str2, int i) {
        a(2, str, str2, i);
    }
}
