package com.nx.a;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.io.File;

class c extends Thread {
    private final /* synthetic */ Intent a;
    private final /* synthetic */ Context b;

    c(Intent intent, Context context) {
        this.a = intent;
        this.b = context;
    }

    public void run() {
        if (this.a.getIntExtra("action", -1) == 0) {
            File b = f.b(this.b);
            File d = f.d(this.b);
            File f = f.f(this.b);
            if (TextUtils.isEmpty(d.a(d.getAbsolutePath(), f.getAbsolutePath()))) {
                f.delete();
            } else {
                f.renameTo(f.c(this.b));
                if (b.exists()) {
                    b.delete();
                }
            }
            d.delete();
            b.a(this.b, false);
            b.c(this.b);
        }
    }
}
