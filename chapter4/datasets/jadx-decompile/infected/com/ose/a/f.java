package com.ose.a;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.lang.reflect.Method;

public class f extends e {
    private Method c;

    public String a() {
        if (TextUtils.isEmpty(this.a)) {
            this.a = h.q;
        }
        return this.a;
    }

    public void a(Context context, Intent intent) {
        if (this.c == null) {
            this.c = i.a(this.b, "ori");
        }
        a.a(this.b, this.c, new Object[]{context, intent});
    }

    public void a(Object obj) {
        if (obj == null) {
            throw new Exception();
        }
        this.b = obj;
    }
}
