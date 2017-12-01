package com.appbrain.a;

import com.appbrain.e.j;
import com.appbrain.e.r;
import com.appbrain.e.s;

final class m implements Runnable {
    final /* synthetic */ l a;
    private final /* synthetic */ String b;
    private final /* synthetic */ String c;
    private final /* synthetic */ String d;

    m(l lVar, String str, String str2, String str3) {
        this.a = lVar;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final void run() {
        int i = 0;
        s g = r.g();
        for (String str : this.b.split(",")) {
            if (k.a(this.a.b, str)) {
                g.b(str);
            }
        }
        String[] split = this.c.split(",");
        int length = split.length;
        while (i < length) {
            g.a(split[i]);
            i++;
        }
        g.c(this.d);
        try {
            j a = q.a(this.a.b).a(g.a());
            if (a != null) {
                n.a(this.a.b, a.c());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
