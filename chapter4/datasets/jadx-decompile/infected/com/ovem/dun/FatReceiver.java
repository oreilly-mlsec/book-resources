package com.ovem.dun;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.m.ac.aa;
import com.m.m.b;
import com.m.u.ac;
import com.m.u.ae;
import com.m.u.ag;
import com.m.u.ah;
import com.m.u.aq;

public class FatReceiver extends BroadcastReceiver {
    public static final String aa = ae.aa(ac.du);
    private SharedPreferences ab;

    private boolean aa(Context context) {
        boolean z = false;
        long j = this.ab.getLong(aa.ar, 0);
        int i = this.ab.getInt(aa.at, 3600000);
        j = System.currentTimeMillis() - j;
        if (ah.aa().ad()) {
            i = 1800000;
        }
        if (j > ((long) i)) {
            this.ab.edit().putLong(aa.ar, System.currentTimeMillis()).commit();
            z = true;
        }
        ag.ac(aa, new StringBuilder(String.valueOf(1)).append("    ").append(z).toString());
        return z;
    }

    public void onReceive(Context context, Intent intent) {
        aq.aa();
        String action = intent.getAction();
        this.ab = context.getSharedPreferences(aa.ap, 0);
        ag.ac(aa, new StringBuilder(String.valueOf(0)).append("    ").append(action).toString());
        Intent intent2 = new Intent();
        intent2.setClassName(context, System.getProperty(aa.bc));
        intent2.putExtra(ae.aa(ac.ee), action);
        intent2.putExtra(aa.bs, 0);
        if (ae.aa(ac.ef).equals(action) || ae.aa(ac.eg).equals(action)) {
            try {
                intent2.putExtra(aa.bq, intent.getData().getSchemeSpecificPart());
            } catch (Throwable e) {
                ag.aa(e);
            }
        }
        try {
            if (!com.m.u.aa.aa(context)) {
                context.startService(intent2);
            }
        } catch (Throwable e2) {
            ag.aa(e2);
        }
        if (aa(context)) {
            b.getInstance(context).init();
        }
    }
}
