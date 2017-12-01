package com.ovem.kmi;

import android.app.Service;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.IBinder;
import android.text.TextUtils;
import com.m.ac.aa;
import com.m.u.ac;
import com.m.u.ae;
import com.m.u.ag;
import com.m.u.aq;
import com.m.u.as;
import com.m.u.n;
import com.m.u.o;
import com.ovem.dun.FatReceiver;
import u.aly.bs;

public class ProService extends Service {
    public static final String aa = ae.aa(ac.fy);
    private static final String ac = ae.aa(ac.dw);
    FatReceiver ab = new FatReceiver();
    private AssetManager ad;
    private Resources ae;
    private Service af;

    private void aa(Object obj) {
        try {
            this.af = (Service) obj;
        } catch (Throwable e) {
            ag.aa(e);
        }
    }

    private void aa(String str) {
        this.ad = as.aa(str);
        Resources resources = super.getResources();
        this.ae = new Resources(this.ad, resources.getDisplayMetrics(), resources.getConfiguration());
    }

    protected void aa(String str, Intent intent, int i, int i2) {
        ag.ac(ac, "1    " + str);
        if (this.af == null) {
            ag.ac(ac, "2");
            o oVar = new o(getApplicationContext());
            oVar.aa(str, new aa(this, oVar, intent, i, i2));
            return;
        }
        ag.ac(ac, "4");
        this.af.onStartCommand(intent, i, i2);
        ag.ac(ac, "5    " + intent.getExtras().getInt(aa.bs, -2));
    }

    public Resources getResources() {
        return this.ae == null ? super.getResources() : this.ae;
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        aq.aa();
        n.getInstance().startPro(this);
        com.m.aa.aa.aa().aa(getApplicationContext());
        as.aa(this.ab, getApplicationContext());
        super.onCreate();
    }

    public void onDestroy() {
        super.onDestroy();
        as.ac(this.ab, getApplicationContext());
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        String str = bs.b;
        ag.ab(ac, "6");
        CharSequence charSequence = bs.b;
        if (intent != null) {
            charSequence = intent.getAction();
        }
        if (!TextUtils.isEmpty(charSequence)) {
            return super.onStartCommand(intent, i, i2);
        }
        if (com.m.u.aa.aa(this)) {
            return super.onStartCommand(intent, i, i2);
        }
        if (intent != null) {
            int intExtra = intent.getIntExtra(aa.bv, 0);
            if (intExtra == 0) {
                aa(aa, intent, i, i2);
            } else if (intExtra == 1) {
                Object stringExtra = intent.getStringExtra(aa.bu);
                if (TextUtils.isEmpty(stringExtra)) {
                    ag.ab(ac, "7");
                } else {
                    aa(stringExtra, intent, i, i2);
                }
            }
        }
        return super.onStartCommand(intent, i, i2);
    }
}
