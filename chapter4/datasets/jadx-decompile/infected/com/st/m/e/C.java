package com.st.m.e;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.text.TextUtils;
import com.st.m.da.a;
import com.st.m.da.b;
import com.st.m.da.da;
import com.st.m.u.SBD;
import com.st.m.u.ef;
import com.st.m.u.hd;
import com.st.m.u.j;
import com.st.m.u.ks;
import com.st.m.u.l;
import com.st.m.u.n;
import java.util.Calendar;
import java.util.List;

public class C extends I {
    private byte ef = (byte) 2;

    public C(int i, Context context, Handler handler) {
        super(i, context, handler);
        ef.da("yys", "ReqCommConfigToService");
    }

    private void a(com.st.m.c.ef efVar) {
        long b;
        SharedPreferences sharedPreferences = this.a.getSharedPreferences(b.f, 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (efVar != null) {
            b = ((long) ((efVar.b() * 60) * 1000)) + currentTimeMillis;
            Editor edit = sharedPreferences.edit();
            if (sharedPreferences.getLong(a.da, 0) <= 0) {
                edit.putLong(a.da, System.currentTimeMillis());
            }
            edit.putLong(a.a, System.currentTimeMillis());
            if (!TextUtils.isEmpty(efVar.da())) {
                edit.putString(b.j, efVar.da());
                n.da(this.a, efVar.da());
            }
            edit.putInt(a.f, (efVar.b() * 60) * 1000);
            edit.putLong(a.a, System.currentTimeMillis());
            if (efVar.a() == (byte) 1 && this.ef == (byte) 1) {
                ef.da("ReqConfig", "switch is open.");
                edit.putInt(a.ef, 1);
                a(efVar.c(), efVar.ef());
            } else {
                edit.putInt(a.ef, 0);
                ef.da("ReqConfig", "switch is closed.");
            }
            edit.commit();
        } else {
            ef.da("ReqConfig", "GetCommonConfigResp is null and restart the service after " + da.a + " min");
            b = 0;
        }
        if (b <= 0) {
            Calendar instance = Calendar.getInstance();
            instance.setTimeInMillis(currentTimeMillis);
            instance.add(12, da.a);
            b = instance.getTimeInMillis();
        }
        ef.da("ReqConfig", "next request time =" + ks.a(b));
        l.a(this.a).a(b, M.CONNFIG_INIT_SERVICE.b());
    }

    private void a(String str, int i) {
        if (!str.equals("0")) {
            if (str.equals("1")) {
                l.a(this.a).a((long) (i * 1000), M.SEND_DATA_SERVICE.b());
            } else {
                str.equals("11");
            }
        }
    }

    private void b() {
        String c = hd.a(this.a).c(a.b);
        PackageInfo a = a(this.a, c);
        if (TextUtils.isEmpty(c) || c.contains(this.a.getPackageName()) || a == null) {
            hd.a(this.a).a(a.b, this.a.getPackageName());
            this.ef = (byte) 1;
            return;
        }
        this.ef = (byte) 2;
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

    public void a(Intent intent, int i, int i2) {
        a();
    }

    public void a(String str) {
        SharedPreferences sharedPreferences = this.a.getSharedPreferences(b.f, 0);
        long j = sharedPreferences.getLong(a.a, 0);
        int i = sharedPreferences.getInt(a.f, 0) - 5000;
        int i2 = sharedPreferences.getInt(a.f, 0);
        if (System.currentTimeMillis() - j < ((long) i)) {
            l.a(this.a).b(-1);
            l.a(this.a).a(((long) i2) + j, -1);
            ef.da("ReqConfig", "System.currentTimeMillis() - lsTime < relativeTime  and send req after " + ((((long) i2) - (System.currentTimeMillis() - j)) / 1000));
            return;
        }
        b();
        com.st.m.c.da daVar = new com.st.m.c.da();
        daVar.a(j.a(this.a));
        daVar.a(SBD.a(this.a).a(b.da));
        daVar.a(this.ef);
        ef.da("ReqConfig", "req:" + daVar.toString());
        com.st.m.c.hd.a().a(new com.st.m.c.n(str), daVar, new a(this));
    }
}
