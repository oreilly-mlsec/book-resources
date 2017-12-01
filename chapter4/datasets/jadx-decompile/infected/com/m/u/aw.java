package com.m.u;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.m.ac.aa;
import com.m.s.ad;
import com.ovem.bat.DataService;

public class aw {
    public static void aa(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(aa.ap, 0);
        av.aa(context).ab(ad.SDK_INIT_SERVICE.ab());
        sharedPreferences.edit().putLong(aa.ar, System.currentTimeMillis()).commit();
        sharedPreferences.edit().putString(aa.ba, "2.0.4").commit();
        context.startService(new Intent(context, DataService.class));
    }
}
