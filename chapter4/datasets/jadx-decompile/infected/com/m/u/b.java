package com.m.u;

import android.app.Activity;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.reflect.Method;
import java.util.HashMap;

public class b extends Activity {
    protected static final String aa = ae.aa(ac.dp);
    public static final String ab = ae.aa(ac.bs);
    public static final String ac = ae.aa(ac.bt);
    protected String ad;
    protected AssetManager ae;
    protected Resources af;
    protected Activity ag;
    protected HashMap<String, Method> ah = new HashMap();

    protected void aa(Object obj) {
        try {
            this.ag = (Activity) obj;
        } catch (Throwable e) {
            ag.aa(e);
            ag.ad(aa, e.toString());
        }
    }

    protected void aa(String str) {
        this.ae = as.aa(str);
        Resources resources = super.getResources();
        this.af = new Resources(this.ae, resources.getDisplayMetrics(), resources.getConfiguration());
    }

    protected void ab(String str) {
        ag.ac(aa, new StringBuilder(String.valueOf(1)).append("    ").append(str).toString());
        new o(getApplicationContext()).aa(str, new ab(this));
    }
}
