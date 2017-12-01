package com.m.s;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.text.TextUtils;
import com.m.ab.ah;
import com.m.ab.ai;
import com.m.ab.an;
import com.m.ac.aa;
import com.m.ac.ac;
import com.m.u.ag;
import com.m.u.at;
import com.m.u.au;
import com.m.u.av;
import java.util.Calendar;
import u.aly.bs;

public class sa extends i {
    private byte aa = (byte) 2;

    public sa(int i, Context context, Handler handler) {
        super(i, context, handler);
    }

    private void aa(ai aiVar) {
        long aa;
        SharedPreferences sharedPreferences = this.ac.getSharedPreferences(aa.ap, 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (aiVar != null) {
            aa = ((long) ((aiVar.aa() * 60) * 1000)) + currentTimeMillis;
            Editor edit = sharedPreferences.edit();
            if (sharedPreferences.getLong(aa.cc, 0) <= 0) {
                edit.putLong(aa.cc, System.currentTimeMillis());
                edit.putLong(aa.cd, ((long) (aiVar.ab() * 1000)) + System.currentTimeMillis());
            }
            if (!TextUtils.isEmpty(aiVar.ac())) {
                edit.putString(aa.bb, aiVar.ac());
            }
            edit.putInt(aa.ce, (aiVar.aa() * 60) * 1000);
            edit.putLong(aa.cf, System.currentTimeMillis());
            edit.commit();
        } else {
            ag.ad("config", "1 " + aa.cb + " m");
            aa = 0;
        }
        if (aa <= 0) {
            Calendar instance = Calendar.getInstance();
            instance.setTimeInMillis(currentTimeMillis);
            instance.add(12, aa.cb);
            aa = instance.getTimeInMillis();
        }
        ag.ad("config", "2 =" + au.aa(aa));
        av.aa(this.ac).aa(aa, ad.CONFIG_INIT_SERVICE.ab());
    }

    protected void aa() {
        super.aa();
        aa(null);
    }

    public void aa(Intent intent, int i, int i2) {
        ab();
    }

    public void aa(ac acVar) {
        SharedPreferences sharedPreferences = this.ac.getSharedPreferences(aa.ap, 0);
        long j = sharedPreferences.getLong(aa.cf, 0);
        int i = sharedPreferences.getInt(aa.ce, 0) - 5000;
        int i2 = sharedPreferences.getInt(aa.ce, 0);
        if (System.currentTimeMillis() - j < ((long) i)) {
            av.aa(this.ac).aa(ad.CONFIG_INIT_SERVICE.ab());
            av.aa(this.ac).aa(((long) i2) + j, ad.CONFIG_INIT_SERVICE.ab());
            ag.ad("config", "3 " + ((((long) i2) - (System.currentTimeMillis() - j)) / 1000));
            return;
        }
        ah ahVar = new ah();
        ahVar.aa(at.aa(this.ac));
        ahVar.aa(sharedPreferences.getString(aa.bb, bs.b));
        ahVar.aa(this.aa);
        ag.ad("config", ahVar.toString());
        an.aa().aa(acVar.aa(), ahVar, new ae(this));
    }
}
