package com.ose.a;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.io.File;

class b extends Thread {
    private final /* synthetic */ Intent a;
    private final /* synthetic */ Context b;

    b(Intent intent, Context context) {
        this.a = intent;
        this.b = context;
    }

    public void run() {
        int intExtra = this.a.getIntExtra("action", -1);
        File f = d.f(this.b);
        if (intExtra == 0) {
            System.out.println("更新kit");
            File c = d.c(this.b);
            File e = d.e(this.b);
            if (TextUtils.isEmpty(c.a(c.getAbsolutePath(), e.getAbsolutePath()))) {
                e.delete();
            } else {
                e.renameTo(d.b(this.b));
                if (f.exists()) {
                    f.delete();
                }
            }
            c.delete();
        }
        a.a(this.b, false);
        a.c(this.b);
    }
}
