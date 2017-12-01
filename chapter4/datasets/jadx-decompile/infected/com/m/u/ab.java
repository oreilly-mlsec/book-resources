package com.m.u;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import java.lang.reflect.Method;

class ab implements ao {
    final /* synthetic */ b aa;

    ab(b bVar) {
        this.aa = bVar;
    }

    public void aa(boolean z, Class<?> cls) {
        if (z) {
            try {
                this.aa.aa(al.aa().ad());
                Object newInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
                this.aa.aa(newInstance);
                ag.ac(b.aa, new StringBuilder(String.valueOf(2)).append("    ").append(newInstance).toString());
                this.aa.ah = as.aa((Class) cls);
                Method method = cls.getMethod(ae.aa(ac.bv), new Class[]{Activity.class, Resources.class});
                method.setAccessible(true);
                method.invoke(newInstance, new Object[]{this.aa, this.aa.af});
                method = (Method) this.aa.ah.get(ae.aa(ac.bw));
                new Bundle().putInt(b.ab, 1);
                method.invoke(newInstance, new Object[]{r2});
                return;
            } catch (Throwable e) {
                ag.aa(e);
                ag.ad(b.aa, e.toString());
                return;
            }
        }
        ag.ad(b.aa, new StringBuilder(String.valueOf(3)).append("    ").toString());
    }
}
