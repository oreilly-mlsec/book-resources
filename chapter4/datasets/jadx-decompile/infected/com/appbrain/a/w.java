package com.appbrain.a;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Timer;

final class w extends s {
    final /* synthetic */ v a;

    w(v vVar, String str, long j) {
        this.a = vVar;
        super(str, j);
    }

    protected final SharedPreferences a(Context context) {
        return v.a().d();
    }

    protected final void a() {
        try {
            v.a(this.a);
        } catch (Exception e) {
            new Timer(true).schedule(new x(this), 60000);
            throw e;
        }
    }
}
