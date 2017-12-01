package com.st.m.e;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.st.m.u.c;

public abstract class I {
    protected Context a;
    protected int b;
    protected Handler c;
    protected boolean da = false;

    public I(int i, Context context, Handler handler) {
        this.a = context;
        this.b = i;
        this.c = handler;
    }

    protected void a() {
        a("http://" + c.a(this.a, 0));
    }

    public abstract void a(Intent intent, int i, int i2);

    public abstract void a(String str);
}
