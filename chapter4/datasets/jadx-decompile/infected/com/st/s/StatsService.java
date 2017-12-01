package com.st.s;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.st.m.da.b;
import com.st.m.e.I;
import com.st.m.e.M;
import com.st.m.u.PS;
import com.st.m.u.a;
import com.st.m.u.c;
import com.st.m.u.ef;
import com.st.m.u.if;
import com.st.r.StatsReceiver;

public class StatsService extends Service {
    public static final String a = c.a(a.Hzcv);
    public StatsReceiver b = new StatsReceiver();
    public Handler c = new a(this);
    private I[] da = new I[M.a()];

    public boolean a() {
        for (I i : this.da) {
            if (i != null) {
                return false;
            }
        }
        return true;
    }

    public void b() {
        if.a(this.b, getApplicationContext());
    }

    public void c() {
        try {
            if.b(this.b, getApplicationContext());
        } catch (Throwable th) {
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        PS.a();
        com.st.m.a.a.a().a(getApplicationContext());
        b();
    }

    public void onDestroy() {
        super.onDestroy();
        c();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null || intent.getExtras() == null) {
            ef.da(a, "3");
            if (a()) {
                stopSelf();
                ef.b(a, "4");
            }
        } else {
            int i3 = intent.getExtras().getInt(b.n, 0);
            ef.da(a, "5    " + i3);
            if (i3 >= 0 && i3 < this.da.length && this.da[i3] == null) {
                this.da[i3] = M.a(i3, getApplicationContext(), this.c);
            }
            if (i3 >= 0 && i3 < this.da.length) {
                this.da[i3].a(intent, i, i2);
            }
        }
        return 2;
    }
}
