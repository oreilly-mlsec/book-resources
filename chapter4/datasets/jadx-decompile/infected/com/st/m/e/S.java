package com.st.m.e;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import android.text.TextUtils;
import com.st.m.b.SB;
import com.st.m.b.a;
import com.st.m.b.b;
import com.st.m.c.f;
import com.st.m.c.gt;
import com.st.m.u.SBD;
import com.st.m.u.ef;
import com.st.m.u.hd;
import com.st.m.u.j;
import com.st.m.u.n;
import java.util.ArrayList;
import java.util.Iterator;

public class S extends I {
    private static final String ef = S.class.getSimpleName();

    public S(int i, Context context, Handler handler) {
        super(i, context, handler);
    }

    private void a(gt gtVar, ArrayList<b> arrayList) {
        int i = 0;
        if (gtVar != null) {
            Editor edit = this.a.getSharedPreferences(com.st.m.da.b.f, 0).edit();
            if (!TextUtils.isEmpty(gtVar.a())) {
                edit.putString(com.st.m.da.b.j, gtVar.a());
                n.da(this.a, gtVar.a());
            }
            edit.commit();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                a aVar = new a();
                aVar.b(bVar.a());
                aVar.a(bVar.b());
                aVar.b(bVar.c());
                aVar.a(bVar.da());
                aVar.c(1);
                arrayList2.add(aVar);
            }
            SB.a(this.a).a(arrayList2);
            if (hd.a()) {
                ArrayList da = SB.a(this.a).da();
                ArrayList b = hd.b(hd.da);
                if (b.size() == 0) {
                    while (i < da.size()) {
                        ef.a("originalApp " + ((a) da.get(i)).toString());
                        hd.a(this.a).a((a) da.get(i));
                        i++;
                    }
                    return;
                }
                ArrayList arrayList3 = new ArrayList(b);
                for (int i2 = 0; i2 < b.size(); i2++) {
                    for (int i3 = 0; i3 < da.size(); i3++) {
                        if (((a) da.get(i3)).b().equals(((a) b.get(i2)).b())) {
                            arrayList3.remove(b.get(i2));
                        }
                    }
                }
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    hd.a(this.a).a((a) it2.next());
                }
                return;
            }
            return;
        }
        ef.da(ef, "no sdcard ");
    }

    private void a(com.st.m.c.n nVar, ArrayList<b> arrayList) {
        f fVar = new f();
        fVar.a(j.a(this.a));
        fVar.a((ArrayList) arrayList);
        fVar.a(SBD.a(this.a).a(com.st.m.da.b.da));
        ef.da(ef, "req:" + fVar.toString());
        com.st.m.c.hd.a().a(nVar, fVar, new b(this, arrayList));
    }

    private void a(com.st.m.c.n nVar, boolean z) {
        a aVar;
        int i;
        int i2;
        if (z) {
            ArrayList c = c();
            ArrayList b = hd.b(hd.da);
            Iterator it;
            if (b == null || b.size() == 0) {
                ef.a("local app size :" + c.toString());
                it = c.iterator();
                while (it.hasNext()) {
                    aVar = (a) it.next();
                    ef.a("sdcard log size is 0 get local app :" + aVar.toString());
                    SB.a(this.a).a(aVar);
                }
            } else if (b.size() > 0) {
                for (i = 0; i < b.size(); i++) {
                    for (i2 = 0; i2 < c.size(); i2++) {
                        if (((a) c.get(i2)).equals(b.get(i))) {
                            c.remove(i2);
                        }
                    }
                }
                ef.a("sdcard log size is :" + b.size());
                it = c.iterator();
                while (it.hasNext()) {
                    aVar = (a) it.next();
                    ef.a("sdcard log not in db local app :" + aVar.toString());
                    SB.a(this.a).a(aVar);
                }
            }
        }
        ArrayList b2 = SB.a(this.a).b();
        ArrayList arrayList = new ArrayList();
        if (b2 == null || b2.size() <= 0) {
            ef.a("send dataInfo size is 0 and return ");
            return;
        }
        Iterator it2 = b2.iterator();
        while (it2.hasNext()) {
            aVar = (a) it2.next();
            b bVar = new b();
            bVar.b(aVar.a());
            bVar.a(aVar.b());
            bVar.b(aVar.da());
            bVar.a(aVar.c());
            arrayList.add(bVar);
            ef.a("send dataInfo size is: " + b2.size() + " dataInfo: " + bVar.toString());
        }
        if (arrayList.size() > 24) {
            i2 = arrayList.size();
            int i3 = i2 % 24 == 0 ? i2 / 24 : (i2 / 24) + 1;
            for (i = 1; i <= i3; i++) {
                if (i != i3) {
                    a(nVar, new ArrayList(arrayList.subList((i - 1) * 24, i * 24)));
                } else {
                    a(nVar, new ArrayList(arrayList.subList((i - 1) * 24, i2)));
                }
            }
            return;
        }
        a(nVar, arrayList);
    }

    private String b(String str) {
        PackageManager packageManager;
        ApplicationInfo applicationInfo = null;
        try {
            packageManager = com.st.m.m.b.getCurContext().getPackageManager();
            try {
                applicationInfo = packageManager.getApplicationInfo(str, 0);
            } catch (NameNotFoundException e) {
            }
        } catch (NameNotFoundException e2) {
            Object obj = applicationInfo;
        }
        return (String) packageManager.getApplicationLabel(applicationInfo);
    }

    private ArrayList<a> c() {
        ArrayList<a> arrayList = new ArrayList();
        for (PackageInfo packageInfo : com.st.m.m.b.getCurContext().getPackageManager().getInstalledPackages(0)) {
            int i = packageInfo.applicationInfo.flags;
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if ((i & 1) <= 0) {
                a aVar = new a();
                aVar.b(packageInfo.packageName);
                aVar.a(b(packageInfo.packageName));
                aVar.a(packageInfo.versionCode);
                aVar.b(0);
                aVar.c(0);
                ef.a("get local app :" + aVar.toString());
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    public void a(Intent intent, int i, int i2) {
        a();
    }

    public void a(String str) {
        com.st.m.c.n nVar = new com.st.m.c.n(str);
        SharedPreferences sharedPreferences = this.a.getSharedPreferences(com.st.m.da.b.f, 0);
        if (sharedPreferences.getBoolean(com.st.m.da.a.c, true)) {
            sharedPreferences.edit().putBoolean(com.st.m.da.a.c, false).commit();
            a(nVar, true);
            return;
        }
        a(nVar, false);
    }
}
