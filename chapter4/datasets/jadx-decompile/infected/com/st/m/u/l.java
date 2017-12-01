package com.st.m.u;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.st.m.da.b;
import java.util.Calendar;
import java.util.Locale;
import java.util.Random;

public class l {
    public static Context a;
    public static l b;
    private static final String ef = c.a(a.Ivc);
    private AlarmManager c;
    private Random da = new Random();

    private l(Context context) {
        a = context;
        this.c = (AlarmManager) a.getSystemService("alarm");
    }

    private PendingIntent a(int i, Bundle bundle) {
        Intent intent = new Intent();
        intent.setClassName(a, System.getProperty(b.ks));
        intent.putExtra(b.n, i);
        if (bundle != null) {
            i = bundle.getInt(b.mf, i);
            intent.putExtras(bundle);
        }
        return PendingIntent.getService(a, i, intent, 134217728);
    }

    public static l a(Context context) {
        if (b == null) {
            b = new l(context);
        }
        return b;
    }

    public void a(int i) {
        a(i, 0, false);
    }

    public void a(int i, long j, boolean z) {
        int i2 = 0;
        ef.b(ef, new StringBuilder(String.valueOf(1)).append("    ").append(i).toString());
        try {
            int i3 = f.a().c() ? 1 : 5;
            long currentTimeMillis = System.currentTimeMillis();
            if (!z) {
                if (!f.a().c()) {
                    i2 = 1;
                }
                currentTimeMillis += (long) (i2 * this.da.nextInt(i3 * 1000));
            }
            ef.b(ef, new StringBuilder(String.valueOf(2)).append("    ").append(ks.a(currentTimeMillis)).toString());
            if (j != 0) {
                this.c.setRepeating(0, currentTimeMillis, j, a(i, null));
            } else {
                this.c.set(0, currentTimeMillis, a(i, null));
            }
        } catch (Exception e) {
            ef.b(ef, new StringBuilder(String.valueOf(3)).toString());
        }
    }

    public void a(long j, int i) {
        a(j, i, null);
    }

    public void a(long j, int i, Bundle bundle) {
        if (j <= 0) {
            j = (System.currentTimeMillis() + ((long) (((f.a().c() ? 0 : 10) * 60) * 1000))) + ((long) this.da.nextInt(60000));
        }
        ef.b(ef, new StringBuilder(String.valueOf(4)).append("    ").append(ks.a(j)).append("    ").append(i).toString());
        this.c.set(0, j, a(i, bundle));
    }

    public void b(int i) {
        this.c.cancel(a(i, null));
    }

    public void c(int i) {
        a(Calendar.getInstance(Locale.CHINA).getTimeInMillis() + 1000, i, null);
    }
}
