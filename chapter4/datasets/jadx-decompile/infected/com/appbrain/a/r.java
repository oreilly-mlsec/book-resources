package com.appbrain.a;

import android.content.Context;
import com.appbrain.b.d;
import com.appbrain.c.h;
import com.appbrain.d.a;
import com.appbrain.e.j;
import com.appbrain.e.v;

public final class r extends a {
    private static r a = null;
    private Context b;

    private r(Context context, String str, String str2) {
        this.b = context;
        a(str, str2);
    }

    public static synchronized r a(Context context) {
        r rVar;
        synchronized (r.class) {
            if (a == null) {
                v.a().a(context, false);
                a = new r(context, v.a().f(), v.a().g().get("ppath", "/api/pb?action="));
            }
            rVar = a;
        }
        return rVar;
    }

    protected final d a(h hVar, String str) {
        return p.a(hVar, str);
    }

    public final j a() {
        byte[] b = b(v.g().a(), "up");
        return b == null ? null : j.a(b);
    }
}
