package com.m.s;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.m.ab.at;
import com.m.ac.ac;
import com.m.u.ag;
import com.m.u.am;
import com.m.u.am.aa;
import com.umeng.analytics.a;
import u.aly.bs;

public abstract class i {
    protected Context ac;
    protected int ad;
    protected Handler ae;
    protected boolean af = false;
    protected aa ag = new ac(this);

    public i(int i, Context context, Handler handler) {
        this.ac = context;
        this.ad = i;
        this.ae = handler;
    }

    protected void aa() {
        ag.ad(com.m.ac.aa.ca, new StringBuilder(String.valueOf(10000)).toString());
    }

    public abstract void aa(Intent intent, int i, int i2);

    public abstract void aa(ac acVar);

    protected void ab() {
        SharedPreferences sharedPreferences = this.ac.getSharedPreferences(com.m.ac.aa.aq, 0);
        long j = sharedPreferences.getLong(com.m.ac.aa.ai, 0);
        if (System.currentTimeMillis() - j < sharedPreferences.getLong(com.m.ac.aa.au, a.g)) {
            Object string = sharedPreferences.getString(com.m.ac.aa.aj, bs.b);
            Object string2 = sharedPreferences.getString(com.m.ac.aa.ak, bs.b);
            Object string3 = sharedPreferences.getString(com.m.ac.aa.al, bs.b);
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
                am.aa(this.ac).aa(this.ag);
                return;
            }
            ac ad = ac.ad();
            ad.aa(new at(string));
            ad.ab(new at(string2));
            ad.ac(new at(string3));
            aa(ad);
            return;
        }
        am.aa(this.ac).aa(this.ag);
    }

    public void ac() {
        if (!this.af) {
            Message message = new Message();
            message.what = 3;
            message.arg1 = this.ad;
            this.ae.dispatchMessage(message);
        }
    }
}
