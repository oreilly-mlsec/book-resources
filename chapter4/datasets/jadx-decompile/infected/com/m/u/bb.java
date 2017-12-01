package com.m.u;

import android.content.Context;
import android.content.SharedPreferences;
import com.m.ab.aa;
import com.m.ab.af;
import com.m.ab.ag;
import com.m.ab.an;
import com.m.ab.as;
import com.m.ac.ac;
import java.util.ArrayList;
import u.aly.bs;

public class bb {
    public static final String aa = ae.aa(ac.ec);

    static {
        as.aa(af.class);
        as.aa(ag.class);
    }

    public static void aa(Context context, aa aaVar) {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        SharedPreferences sharedPreferences = context.getSharedPreferences(com.m.ac.aa.ap, 0);
        String[] split = sharedPreferences.getString("devEvent", bs.b).split(";");
        while (i < split.length) {
            try {
                int parseInt = Integer.parseInt(split[i]);
                aa aaVar2 = new aa();
                aaVar2.aa(parseInt);
                aaVar2.aa("0/" + context.getPackageName());
                aaVar2.ab(1);
                aaVar2.aa((short) 16);
                arrayList.add(aaVar2);
            } catch (Exception e) {
            }
            i++;
        }
        ag.ac(aa, arrayList.toString());
        if (aaVar != null) {
            arrayList.add(aaVar);
            ag.ac(aa, aaVar.toString());
            af afVar = new af();
            afVar.aa(at.aa(context));
            afVar.aa(arrayList);
            sharedPreferences.edit().putString("devEvent", bs.b).commit();
            an.aa().aa(ac.ad().ab(), afVar, new bc(arrayList, sharedPreferences));
        }
    }
}
