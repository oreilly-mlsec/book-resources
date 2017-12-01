package com.third.mx.utils;

import java.util.TimerTask;

class f extends TimerTask {
    final /* synthetic */ e a;

    f(e eVar) {
        this.a = eVar;
    }

    public void run() {
        new e(this.a.c, this.a.d, this.a.b + 1).execute(new Void[0]);
    }
}
