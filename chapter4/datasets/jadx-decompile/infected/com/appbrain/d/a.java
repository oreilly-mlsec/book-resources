package com.appbrain.d;

import cmn.h;
import com.appbrain.b.d;

public abstract class a {
    private static String b = "There was a network error. Please try again.";
    private h a;

    protected a() {
    }

    protected abstract d a(com.appbrain.c.h hVar, String str);

    protected final void a(String str, String str2) {
        this.a = new h(str, str2);
    }

    protected final byte[] b(com.appbrain.c.h hVar, String str) {
        if (str.startsWith("ClientRequest$")) {
            str = str.substring(14);
        }
        d a = a(hVar, str);
        h hVar2 = this.a;
        com.appbrain.b.a aVar = new com.appbrain.b.a();
        byte[] a2 = hVar2.a(str, com.appbrain.b.a.a(a));
        return a2 == null ? null : new com.appbrain.b.a().a(a2);
    }
}
