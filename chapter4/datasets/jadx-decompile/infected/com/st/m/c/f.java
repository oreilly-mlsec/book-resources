package com.st.m.c;

import com.st.m.b.b;
import java.util.ArrayList;

@pcv(a = true, b = 104002)
public class f {
    @b(a = 0)
    private qr a = new qr();
    @b(a = 1)
    private ArrayList<b> b = new ArrayList();
    @b(a = 2)
    private String c;

    public void a(qr qrVar) {
        this.a = qrVar;
    }

    public void a(String str) {
        this.c = str;
    }

    public void a(ArrayList<b> arrayList) {
        this.b = arrayList;
    }

    public String toString() {
        return "GetDataInfoReq [termInfo=" + this.a + ", dataInfos=" + this.b + ", magicData=" + this.c + "]";
    }
}
