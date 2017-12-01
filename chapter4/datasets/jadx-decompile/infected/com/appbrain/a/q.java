package com.appbrain.a;

import android.content.Context;
import com.appbrain.b.d;
import com.appbrain.c.h;
import com.appbrain.d.a;
import com.appbrain.e.j;
import com.appbrain.e.p;
import com.appbrain.e.r;

public final class q extends a {
    private static q a = null;
    private Context b;

    private q(Context context, String str, String str2) {
        this.b = context;
        a(str, str2);
    }

    public static synchronized q a(Context context) {
        q qVar;
        synchronized (q.class) {
            if (a == null) {
                v.a().a(context, false);
                a = new q(context, v.a().e(), v.a().g().get("ppath", "/api/pb?action="));
            }
            qVar = a;
        }
        return qVar;
    }

    protected final d a(h hVar, String str) {
        return p.a(hVar, str);
    }

    public final j a(p pVar) {
        byte[] b = b(pVar, "ev");
        return b == null ? null : j.a(b);
    }

    public final j a(r rVar) {
        byte[] b = b(rVar, "ai");
        return b == null ? null : j.a(b);
    }
}
