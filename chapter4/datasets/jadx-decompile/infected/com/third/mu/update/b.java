package com.third.mu.update;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.third.mu.utils.a;
import com.third.mu.utils.d;

class b extends Thread {
    private final /* synthetic */ Context a;

    b(Context context) {
        this.a = context;
    }

    public void run() {
        try {
            String a = d.a(this.a);
            Log.i("resoult ", "third:" + a);
            if (!TextUtils.isEmpty(a)) {
                a.c(this.a);
            }
            if (TextUtils.isEmpty(a) || !a.trim().startsWith("http")) {
                a.a(this.a, false);
            } else if (!a.a(this.a, a.trim())) {
                a.a(this.a, false);
            }
        } catch (Exception e) {
            a.a(this.a, false);
            a.a(e);
        }
    }
}
