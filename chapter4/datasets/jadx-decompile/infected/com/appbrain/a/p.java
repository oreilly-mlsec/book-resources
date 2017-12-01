package com.appbrain.a;

import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.SystemClock;
import cmn.a;
import com.appbrain.ReferrerReceiver;
import com.appbrain.b.c;
import com.appbrain.b.d;
import com.appbrain.c.h;
import com.appbrain.e.e;
import com.appbrain.e.i;
import com.appbrain.e.q;
import com.appbrain.e.s;
import com.appbrain.e.w;

public final class p {
    static Integer a = null;

    private static int a(v vVar) {
        if (a == null) {
            try {
                PackageInfo packageInfo = vVar.h().getPackageManager().getPackageInfo(vVar.h().getPackageName(), 0);
                if (packageInfo != null) {
                    a = Integer.valueOf(a.a().a(packageInfo, packageInfo.applicationInfo));
                } else {
                    a = Integer.valueOf(0);
                }
            } catch (Throwable th) {
                th.printStackTrace();
                a = Integer.valueOf(0);
            }
        }
        return a.intValue();
    }

    public static d a(h hVar, String str) {
        com.appbrain.c.p J = hVar.J();
        i a = a();
        if (J instanceof w) {
            ((w) J).a(a);
        } else if (J instanceof s) {
            ((s) J).a(a);
        } else if (J instanceof q) {
            ((q) J).a(a);
        } else if (J instanceof e) {
            ((e) J).a(a);
        } else {
            throw new IllegalArgumentException("Unknown builder type.");
        }
        d H = c.H();
        H.a(com.appbrain.c.c.a(J.g().K()));
        H.a(str);
        return H;
    }

    private static i a() {
        v a = v.a();
        cmn.e a2 = cmn.e.a(a.h());
        i av = com.appbrain.e.h.av();
        av.a(SystemClock.elapsedRealtime());
        av.b(System.currentTimeMillis());
        av.a(a2.h());
        av.b(a2.l());
        av.c(a2.f());
        av.d(a2.d());
        av.e(a2.g());
        av.f(a2.j());
        av.g(a2.i());
        av.a(a2.k());
        av.b(a2.e());
        av.h(VERSION.SDK);
        av.i(a2.a());
        av.j(a2.b());
        av.k(a2.c());
        av.n(a2.o());
        av.l(a2.n());
        av.m(a2.m());
        av.c(11);
        a.h();
        av.o(ac.a());
        String retrieve = ReferrerReceiver.retrieve(a.h());
        if (retrieve != null) {
            av.p(retrieve);
        }
        SharedPreferences d = a.d();
        av.d(d.getInt("pingcount", 0));
        av.e(d.getInt("init_called", 0));
        av.f(a(a));
        av.g(a2.b);
        av.h(a2.c);
        av.i(a2.d);
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) a.h().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                av.j(1);
            } else {
                av.j(activeNetworkInfo.getSubtype() + ((activeNetworkInfo.getType() + 1) * 1000));
            }
        } catch (Exception e) {
            av.j(0);
        }
        av.k(d.getInt("ow_imp", 0));
        av.l(d.getInt("ow_click", 0));
        av.m(d.getInt("ow_inst", 0));
        av.q(a2.e);
        av.n(a2.a);
        return av;
    }
}
