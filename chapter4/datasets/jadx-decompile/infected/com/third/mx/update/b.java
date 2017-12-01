package com.third.mx.update;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.third.mx.utils.d;
import com.third.mx.utils.h;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Calendar;
import u.aly.bs;

class b extends Thread {
    private final /* synthetic */ Context a;

    b(Context context) {
        this.a = context;
    }

    public void run() {
        String str = bs.b;
        h hVar;
        try {
            hVar = new h(this.a);
            ArrayList a = hVar.a();
            str = d.a(hVar.b(), a);
            if (a.b(str)) {
                str = d.a(hVar.c(), a);
            }
        } catch (UnknownHostException e) {
            try {
                hVar = new h(this.a);
                str = d.a(hVar.c(), hVar.a());
            } catch (Exception e2) {
                a.a(this.a, false);
                e2.printStackTrace();
            }
        } catch (Exception e22) {
            a.a(this.a, false);
            e22.printStackTrace();
        }
        Log.i("FXOUT_Log", "third:" + str);
        if (!TextUtils.isEmpty(str)) {
            a.g.edit().putInt("mxsdkupdate", Calendar.getInstance().get(6)).commit();
        }
        if (TextUtils.isEmpty(str) || !str.trim().startsWith("http")) {
            a.a(this.a, false);
        } else if (!a.a(this.a, str.trim())) {
            a.a(this.a, false);
        }
    }
}
