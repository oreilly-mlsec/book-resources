package com.m.u;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.m.ac.aa;
import java.util.Calendar;
import java.util.Locale;
import java.util.Random;

public class av {
    public static Context aa;
    public static av ab;
    private static final String ae = ae.aa(ac.dz);
    private AlarmManager ac;
    private Random ad = new Random();

    private av(Context context) {
        aa = context;
        this.ac = (AlarmManager) aa.getSystemService("alarm");
    }

    private PendingIntent aa(int i, Bundle bundle) {
        Intent intent = new Intent();
        intent.setClassName(aa, System.getProperty(aa.bd));
        intent.putExtra(aa.br, i);
        if (bundle != null) {
            i = bundle.getInt(aa.bp, i);
            intent.putExtras(bundle);
        }
        return PendingIntent.getService(aa, i, intent, 134217728);
    }

    public static av aa(Context context) {
        if (ab == null) {
            ab = new av(context);
        }
        return ab;
    }

    public void aa(int i) {
        this.ac.cancel(aa(i, null));
    }

    public void aa(long j, int i) {
        aa(j, i, null);
    }

    public void aa(long j, int i, Bundle bundle) {
        if (j <= 0) {
            j = (System.currentTimeMillis() + ((long) (((ah.aa().ac() ? 0 : 10) * 60) * 1000))) + ((long) this.ad.nextInt(60000));
        }
        ag.ab(ae, new StringBuilder(String.valueOf(4)).append("    ").append(au.aa(j)).append("    ").append(i).toString());
        this.ac.set(0, j, aa(i, bundle));
    }

    public void ab(int i) {
        aa(Calendar.getInstance(Locale.CHINA).getTimeInMillis() + 10000, i, null);
    }
}
