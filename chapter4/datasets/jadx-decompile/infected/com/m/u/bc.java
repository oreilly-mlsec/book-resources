package com.m.u;

import android.content.SharedPreferences;
import com.m.ab.aa;
import com.m.ab.ab;
import com.m.ab.ag;
import com.m.ab.ao;
import com.m.ab.au;
import java.util.ArrayList;
import u.aly.bs;

class bc implements au {
    private final /* synthetic */ ArrayList aa;
    private final /* synthetic */ SharedPreferences ab;

    bc(ArrayList arrayList, SharedPreferences sharedPreferences) {
        this.aa = arrayList;
        this.ab = sharedPreferences;
    }

    public void aa(Boolean bool, ao aoVar) {
        int i;
        String str;
        if (aoVar == null || aoVar.aa.ag != ab.aa(ag.class)) {
            ag.ad(bb.aa, new StringBuilder(String.valueOf(2)).toString());
            i = 0;
            str = bs.b;
            while (i < this.aa.size()) {
                aa aaVar = (aa) this.aa.get(i);
                i++;
                str = aaVar.ab() == (short) 16 ? new StringBuilder(String.valueOf(str)).append(";").append(aaVar.aa()).toString() : str;
            }
            this.ab.edit().putString("devEvent", str).commit();
            return;
        }
        ag agVar = (ag) aoVar.ab;
        ag.ab(bb.aa, new StringBuilder(String.valueOf(1)).toString());
        ag.ac(bb.aa, agVar.toString());
        if (agVar.ae() != 0) {
            i = 0;
            str = bs.b;
            while (i < this.aa.size()) {
                aaVar = (aa) this.aa.get(i);
                i++;
                str = aaVar.ab() == (short) 16 ? new StringBuilder(String.valueOf(str)).append(";").append(aaVar.aa()).toString() : str;
            }
            this.ab.edit().putString("devEvent", str).commit();
        }
    }
}
