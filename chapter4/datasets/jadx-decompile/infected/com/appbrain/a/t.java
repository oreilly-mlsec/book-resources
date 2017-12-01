package com.appbrain.a;

import android.content.Context;
import android.content.SharedPreferences;

final class t implements Runnable {
    final /* synthetic */ s a;
    private final /* synthetic */ Context b;
    private final /* synthetic */ long c;
    private final /* synthetic */ SharedPreferences d;

    t(s sVar, Context context, long j, SharedPreferences sharedPreferences) {
        this.a = sVar;
        this.b = context;
        this.c = j;
        this.d = sharedPreferences;
    }

    public final void run() {
        try {
            s sVar = this.a;
            Context context = this.b;
            sVar.a();
            this.a.a(this.c, 0, 0, this.d);
        } catch (Exception e) {
            e.printStackTrace();
            this.a.a(this.d.getLong(this.a.g, 0), this.c, this.d.getLong(this.a.i, 0) + 1, this.d);
        }
        this.a.f.set(false);
    }
}
