package com.st.m.e;

import com.st.m.c.a;
import com.st.m.c.gt;
import com.st.m.c.if;
import com.st.m.c.o;
import com.st.m.u.ef;
import java.util.ArrayList;

class b implements o {
    final /* synthetic */ S a;
    private final /* synthetic */ ArrayList b;

    b(S s, ArrayList arrayList) {
        this.a = s;
        this.b = arrayList;
    }

    public void a(Boolean bool, if ifVar) {
        gt gtVar = null;
        if (bool.booleanValue() && ifVar.a.gt == a.a(gt.class)) {
            gtVar = (gt) ifVar.b;
            ef.da(S.ef, gtVar.toString());
        } else {
            ef.da(S.ef, "GetDataInfoResp on reponse error");
        }
        this.a.a(gtVar, this.b);
    }
}
