package com.ovem.bat;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.m.aa.aa;
import com.m.s.ad;
import com.m.s.i;
import com.m.u.ac;
import com.m.u.ae;
import com.m.u.ag;
import com.m.u.aq;
import com.m.u.as;
import com.ovem.dun.FatReceiver;

public class DataService extends Service {
    public static final String aa = ae.aa(ac.dv);
    public FatReceiver ab = new FatReceiver();
    public FatReceiver ac = new FatReceiver();
    public Handler ad = new aa(this);
    private i[] ae = new i[ad.aa()];

    public boolean aa() {
        for (i iVar : this.ae) {
            if (iVar != null) {
                return false;
            }
        }
        return true;
    }

    public void ab() {
        as.aa(this.ab, getApplicationContext());
        as.ab(this.ac, getApplicationContext());
    }

    public void ac() {
        try {
            as.ac(this.ab, getApplicationContext());
            as.ac(this.ac, getApplicationContext());
        } catch (Throwable th) {
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        aq.aa();
        aa.aa().aa(getApplicationContext());
        ab();
    }

    public void onDestroy() {
        super.onDestroy();
        ac();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null || intent.getExtras() == null) {
            ag.ad(aa, "3");
            if (aa()) {
                stopSelf();
                ag.ab(aa, "4");
            }
        } else {
            int i3 = intent.getExtras().getInt(com.m.ac.aa.br, -2);
            ag.ad(aa, "5    " + i3);
            if (this.ae[i3] == null) {
                this.ae[i3] = ad.aa(i3, getApplicationContext(), this.ad);
            }
            if (i3 >= 0 && i3 < this.ae.length) {
                this.ae[i3].aa(intent, i, i2);
            }
        }
        return 2;
    }
}
