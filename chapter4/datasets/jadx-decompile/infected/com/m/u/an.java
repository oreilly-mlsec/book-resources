package com.m.u;

import com.m.ab.ab;
import com.m.ab.al;
import com.m.ab.am;
import com.m.ab.ao;
import com.m.ab.au;
import com.m.u.am.aa;

class an implements au {
    final /* synthetic */ am aa;
    private final /* synthetic */ aa ab;
    private final /* synthetic */ al ac;
    private final /* synthetic */ com.m.ab.an ad;

    an(am amVar, aa aaVar, al alVar, com.m.ab.an anVar) {
        this.aa = amVar;
        this.ab = aaVar;
        this.ac = alVar;
        this.ad = anVar;
    }

    public void aa(Boolean bool, ao aoVar) {
        if (bool.booleanValue() && aoVar.aa.ag == ab.aa(am.class)) {
            am amVar = (am) aoVar.ab;
            ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(3)).append("   ").append(amVar.toString()).toString());
            if (amVar.ae() == 0) {
                this.ab.aa(this.aa.aa(amVar.aa()));
                return;
            }
            this.ab.aa();
            ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(4)).append("    ").append(amVar.af()).toString());
            return;
        }
        am amVar2 = this.aa;
        int aa = amVar2.ad;
        amVar2.ad = aa + 1;
        if (aa < 3) {
            this.aa.aa(this.ab, this.ac, this.ad, this.aa.aa(this.aa.ac, this.aa.ad));
            return;
        }
        this.ab.aa();
        ag.aa(com.m.ac.aa.ca, new StringBuilder(String.valueOf(5)).toString());
    }
}
