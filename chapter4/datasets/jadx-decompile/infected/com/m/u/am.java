package com.m.u;

import android.content.Context;
import com.m.ab.ae;
import com.m.ab.al;
import com.m.ab.an;
import com.m.ab.at;
import com.m.ac.ac;
import java.util.ArrayList;
import java.util.Iterator;

public class am {
    public static final ac aa = ac.ad();
    private static am ab = null;
    private Context ac;
    private int ad;

    public interface aa {
        void aa();

        void aa(ac acVar);
    }

    private am(Context context) {
        this.ac = context;
    }

    private at aa(Context context, int i) {
        return new at(ae.aa(context, i));
    }

    private ac aa(ArrayList<ae> arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ae aeVar = (ae) it.next();
            ag.ab(com.m.ac.aa.ca, aeVar.ab() + ":" + aeVar.ac() + "--" + aeVar.aa());
            if (aeVar.aa() == 1) {
                aa.aa(new at(aeVar.ab() + ":" + aeVar.ac()));
            } else if (aeVar.aa() == 2) {
                aa.ab(new at(aeVar.ab() + ":" + aeVar.ac()));
            } else if (aeVar.aa() == 3) {
                aa.ac(new at(aeVar.ab() + ":" + aeVar.ac()));
            }
        }
        return aa;
    }

    public static am aa(Context context) {
        if (ab == null) {
            ab = new am(context);
        }
        return ab;
    }

    private void aa(aa aaVar, al alVar, an anVar, at atVar) {
        anVar.aa(atVar, alVar, new an(this, aaVar, alVar, anVar));
    }

    public synchronized void aa(aa aaVar) {
        ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(1)).append("    ").toString());
        al alVar = new al();
        alVar.aa(at.ab(this.ac));
        alVar.aa(1);
        ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(2)).append("    ").append(alVar.toString()).toString());
        an aa = an.aa();
        at aa2 = aa(this.ac, 0);
        this.ad = 0;
        try {
            aa(aaVar, alVar, aa, aa2);
        } catch (Throwable th) {
            aaVar.aa();
            th.printStackTrace();
        }
    }
}
