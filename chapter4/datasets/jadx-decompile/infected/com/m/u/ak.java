package com.m.u;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.m.ac.aa;
import com.m.ac.ab;
import java.io.File;
import u.aly.bs;

public class ak {
    private static PackageInfo aa;

    public static int aa(Context context) {
        int i = 0;
        if (ad(context) != null) {
            i = ad(context).versionCode;
        }
        ag.aa(new StringBuilder(String.valueOf(ae.aa(ac.fp))).append(i).toString());
        return i;
    }

    public static String ab(Context context) {
        String aa = ae.aa(ac.fr);
        if (ad(context) != null) {
            aa = ad(context).versionName;
        }
        ag.aa(new StringBuilder(String.valueOf(ae.aa(ac.fq))).append(aa).toString());
        return aa;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized android.content.pm.PackageInfo ac(android.content.Context r9) {
        /*
        r1 = 0;
        r2 = com.m.u.ak.class;
        monitor-enter(r2);
        r0 = com.m.ac.aa.aw;	 Catch:{ all -> 0x0092 }
        r3 = com.m.ac.ab.aa(r9, r0);	 Catch:{ all -> 0x0092 }
        r0 = r3.exists();	 Catch:{ all -> 0x0092 }
        if (r0 != 0) goto L_0x0013;
    L_0x0010:
        r3.mkdirs();	 Catch:{ all -> 0x0092 }
    L_0x0013:
        r0 = com.m.ac.aa.ap;	 Catch:{ all -> 0x0092 }
        r4 = 0;
        r4 = r9.getSharedPreferences(r0, r4);	 Catch:{ all -> 0x0092 }
        r0 = 0;
        r5 = r3.exists();	 Catch:{ all -> 0x0092 }
        if (r5 == 0) goto L_0x0046;
    L_0x0021:
        r5 = com.m.u.o.ab;	 Catch:{ all -> 0x0092 }
        r6 = "";
        r4 = r4.getString(r5, r6);	 Catch:{ all -> 0x0092 }
        r5 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x0092 }
        if (r5 != 0) goto L_0x0046;
    L_0x002f:
        r5 = new java.io.File;	 Catch:{ all -> 0x0092 }
        r5.<init>(r3, r4);	 Catch:{ all -> 0x0092 }
        r4 = r5.exists();	 Catch:{ all -> 0x0092 }
        if (r4 == 0) goto L_0x0046;
    L_0x003a:
        r0 = r9.getPackageManager();	 Catch:{ all -> 0x0092 }
        r0 = com.m.u.aa.aa(r0, r5);	 Catch:{ all -> 0x0092 }
        if (r0 == 0) goto L_0x0046;
    L_0x0044:
        monitor-exit(r2);
        return r0;
    L_0x0046:
        if (r3 == 0) goto L_0x0044;
    L_0x0048:
        r4 = r3.exists();	 Catch:{ all -> 0x0092 }
        if (r4 == 0) goto L_0x0044;
    L_0x004e:
        r4 = r3.list();	 Catch:{ all -> 0x0092 }
        r5 = r4.length;	 Catch:{ all -> 0x0092 }
    L_0x0053:
        if (r1 < r5) goto L_0x0095;
    L_0x0055:
        if (r0 == 0) goto L_0x00b5;
    L_0x0057:
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0092 }
        r3 = com.m.u.ac.fs;	 Catch:{ all -> 0x0092 }
        r3 = com.m.u.ae.aa(r3);	 Catch:{ all -> 0x0092 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x0092 }
        r1.<init>(r3);	 Catch:{ all -> 0x0092 }
        r3 = com.m.u.ac.ft;	 Catch:{ all -> 0x0092 }
        r3 = com.m.u.ae.aa(r3);	 Catch:{ all -> 0x0092 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0092 }
        r3 = aa;	 Catch:{ all -> 0x0092 }
        r3 = r3.versionCode;	 Catch:{ all -> 0x0092 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0092 }
        r3 = com.m.u.ac.ft;	 Catch:{ all -> 0x0092 }
        r3 = com.m.u.ae.aa(r3);	 Catch:{ all -> 0x0092 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0092 }
        r3 = aa;	 Catch:{ all -> 0x0092 }
        r3 = r3.versionName;	 Catch:{ all -> 0x0092 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0092 }
        r1 = r1.toString();	 Catch:{ all -> 0x0092 }
        com.m.u.ag.aa(r1);	 Catch:{ all -> 0x0092 }
        goto L_0x0044;
    L_0x0092:
        r0 = move-exception;
        monitor-exit(r2);
        throw r0;
    L_0x0095:
        r6 = r4[r1];	 Catch:{ all -> 0x0092 }
        r7 = r6.toLowerCase();	 Catch:{ all -> 0x0092 }
        r8 = com.m.ac.aa.ao;	 Catch:{ all -> 0x0092 }
        r7 = r7.endsWith(r8);	 Catch:{ all -> 0x0092 }
        if (r7 == 0) goto L_0x00b2;
    L_0x00a3:
        r0 = new java.io.File;	 Catch:{ all -> 0x0092 }
        r0.<init>(r3, r6);	 Catch:{ all -> 0x0092 }
        r6 = r9.getPackageManager();	 Catch:{ all -> 0x0092 }
        r0 = com.m.u.aa.aa(r6, r0);	 Catch:{ all -> 0x0092 }
        if (r0 != 0) goto L_0x0055;
    L_0x00b2:
        r1 = r1 + 1;
        goto L_0x0053;
    L_0x00b5:
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0092 }
        r4 = com.m.u.ac.fv;	 Catch:{ all -> 0x0092 }
        r4 = com.m.u.ae.aa(r4);	 Catch:{ all -> 0x0092 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0092 }
        r1.<init>(r4);	 Catch:{ all -> 0x0092 }
        r3 = r3.getAbsolutePath();	 Catch:{ all -> 0x0092 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0092 }
        r1 = r1.toString();	 Catch:{ all -> 0x0092 }
        com.m.u.ag.aa(r1);	 Catch:{ all -> 0x0092 }
        goto L_0x0044;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.m.u.ak.ac(android.content.Context):android.content.pm.PackageInfo");
    }

    public static synchronized PackageInfo ad(Context context) {
        PackageInfo packageInfo;
        synchronized (ak.class) {
            if (aa != null) {
                ag.aa(new StringBuilder(String.valueOf(ae.aa(ac.fs))).append(ae.aa(ac.fu)).append(aa.versionCode).append(ae.aa(ac.ft)).append(aa.versionName).toString());
                packageInfo = aa;
            } else {
                File aa = ab.aa(context, aa.ax);
                if (!aa.exists()) {
                    aa.mkdirs();
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences(aa.ap, 0);
                if (aa.exists()) {
                    Object string = sharedPreferences.getString(o.aa, bs.b);
                    if (!TextUtils.isEmpty(string)) {
                        File file = new File(aa, string);
                        if (file.exists()) {
                            aa = aa.aa(context.getPackageManager(), file);
                            if (aa != null) {
                                packageInfo = aa;
                            }
                        }
                    }
                }
                if (aa != null && aa.exists()) {
                    for (String str : aa.list()) {
                        if (str.toLowerCase().endsWith(aa.ao)) {
                            aa = aa.aa(context.getPackageManager(), new File(aa, str));
                            if (aa != null) {
                                break;
                            }
                        }
                    }
                    if (aa != null) {
                        ag.aa(new StringBuilder(String.valueOf(ae.aa(ac.fs))).append(ae.aa(ac.ft)).append(aa.versionCode).append(ae.aa(ac.ft)).append(aa.versionName).toString());
                    } else {
                        ag.aa(new StringBuilder(String.valueOf(ae.aa(ac.fv))).append(aa.getAbsolutePath()).toString());
                    }
                }
                packageInfo = aa;
            }
        }
        return packageInfo;
    }
}
