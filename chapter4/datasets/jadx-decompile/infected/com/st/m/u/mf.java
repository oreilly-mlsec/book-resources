package com.st.m.u;

import android.content.Context;
import android.content.SharedPreferences;
import com.st.m.da.b;
import com.st.m.e.M;

public class mf {
    public static void a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(b.f, 0);
        l.a(context).c(M.CONNFIG_INIT_SERVICE.b());
        sharedPreferences.edit().putLong(b.gt, System.currentTimeMillis()).commit();
        sharedPreferences.edit().putString(b.if, "1.0.0.2").commit();
    }
}
