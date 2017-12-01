package com.nx.a;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.IBinder;
import android.text.TextUtils;
import java.lang.reflect.Method;

public class i extends h {
    private Method c;
    private Method d;
    private Method e;
    private Method f;
    private Method g;
    private Method h;
    private Method i;
    private Method j;
    private Method k;
    private Method l;

    protected int a(Intent intent, int i, int i2) {
        if (this.i == null) {
            this.i = l.a(this.b, "onStartCommand");
        }
        Object a = b.a(this.b, this.i, new Object[]{intent, Integer.valueOf(i), Integer.valueOf(i2)});
        return a != null ? ((Integer) a).intValue() : 3;
    }

    protected IBinder a(Intent intent) {
        if (this.f == null) {
            this.f = l.a(this.b, "onBind");
        }
        Object a = b.a(this.b, this.f, new Object[]{intent});
        return a != null ? (IBinder) a : null;
    }

    public String a() {
        if (TextUtils.isEmpty(this.a)) {
            this.a = k.u;
        }
        return this.a;
    }

    public void a(Service service) {
        if (this.c == null) {
            this.c = l.a(this.b, "ss");
        }
        b.a(this.b, this.c, new Object[]{service});
    }

    protected void a(Intent intent, int i) {
        if (this.e == null) {
            this.e = l.a(this.b, "onStart");
        }
        b.a(this.b, this.e, new Object[]{intent, Integer.valueOf(i)});
    }

    protected void a(Configuration configuration) {
        if (this.j == null) {
            this.j = l.a(this.b, "onConfigurationChanged");
        }
        b.a(this.b, this.j, new Object[]{configuration});
    }

    public void a(Object obj) {
        if (obj == null) {
            throw new Exception("SM:�ں˶�Ӧ��Classʵ��Ϊ�գ��޷�����...");
        }
        this.b = obj;
    }

    protected void b() {
        if (this.d == null) {
            this.d = l.a(this.b, "onCreate");
        }
        b.a(this.b, this.d, null);
    }

    protected boolean b(Intent intent) {
        if (this.g == null) {
            this.g = l.a(this.b, "onUnbind");
        }
        Object a = b.a(this.b, this.g, new Object[]{intent});
        return a != null ? ((Boolean) a).booleanValue() : true;
    }

    protected void c() {
        if (this.k == null) {
            this.k = l.a(this.b, "onLowMemory");
        }
        b.a(this.b, this.k, null);
    }

    protected void c(Intent intent) {
        if (this.h == null) {
            this.h = l.a(this.b, "onRebind");
        }
        b.a(this.b, this.h, new Object[]{intent});
    }

    protected void d() {
        if (this.l == null) {
            this.l = l.a(this.b, "onDestroy");
        }
        b.a(this.b, this.l, null);
    }
}
