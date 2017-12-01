package com.ovem.kmi;

import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import com.m.u.ac;
import com.m.u.ae;
import com.m.u.ag;
import com.m.u.al;
import com.m.u.ao;
import com.m.u.o;
import java.lang.reflect.Method;

class aa implements ao {
    final /* synthetic */ ProService aa;
    private final /* synthetic */ o ab;
    private final /* synthetic */ Intent ac;
    private final /* synthetic */ int ad;
    private final /* synthetic */ int ae;

    aa(ProService proService, o oVar, Intent intent, int i, int i2) {
        this.aa = proService;
        this.ab = oVar;
        this.ac = intent;
        this.ad = i;
        this.ae = i2;
    }

    public void aa(boolean z, Class<?> cls) {
        if (z) {
            try {
                ag.ad(ProService.ac, "3 ");
                this.aa.aa(al.aa().ad());
                this.ab.aa().ad();
                Object newInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
                this.aa.aa(newInstance);
                Method method = cls.getMethod(ae.aa(ac.fx), new Class[]{Service.class, Resources.class});
                method.setAccessible(true);
                method.invoke(newInstance, new Object[]{this.aa, this.aa.ae});
                try {
                    method = cls.getDeclaredMethod(ae.aa(ac.fw), new Class[]{Intent.class, Integer.TYPE, Integer.TYPE});
                    method.setAccessible(true);
                    method.invoke(newInstance, new Object[]{this.ac, Integer.valueOf(this.ad), Integer.valueOf(this.ae)});
                    return;
                } catch (Throwable e) {
                    ag.aa(e);
                    return;
                }
            } catch (Throwable e2) {
                ag.aa(e2);
                this.aa.stopSelf();
                return;
            }
        }
        this.aa.stopSelf();
    }
}
