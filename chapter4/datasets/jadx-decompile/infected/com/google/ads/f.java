package com.google.ads;

import android.os.SystemClock;
import com.google.ads.util.a;
import java.util.LinkedList;

public final class f {
    private static long f = 0;
    public String a;
    private LinkedList<Long> b = new LinkedList();
    private long c;
    private long d;
    private LinkedList<Long> e = new LinkedList();
    private String g;
    private boolean h = false;
    private boolean i = false;

    f() {
        a();
    }

    final void a() {
        this.b.clear();
        this.c = 0;
        this.d = 0;
        this.e.clear();
        this.g = null;
        this.h = false;
        this.i = false;
    }

    final void b() {
        a.d("Ad clicked.");
        this.b.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    final void c() {
        a.d("Ad request loaded.");
        this.c = SystemClock.elapsedRealtime();
    }

    final void d() {
        a.d("Ad request started.");
        this.d = SystemClock.elapsedRealtime();
        f++;
    }

    final long e() {
        if (this.b.size() != this.e.size()) {
            return -1;
        }
        return (long) this.b.size();
    }

    final String f() {
        if (this.b.isEmpty() || this.b.size() != this.e.size()) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < this.b.size(); i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(((Long) this.e.get(i)).longValue() - ((Long) this.b.get(i)).longValue()));
        }
        return stringBuilder.toString();
    }

    final String g() {
        if (this.b.isEmpty()) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < this.b.size(); i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(((Long) this.b.get(i)).longValue() - this.c));
        }
        return stringBuilder.toString();
    }

    final long h() {
        return this.c - this.d;
    }

    static long i() {
        return f;
    }

    final String j() {
        return this.g;
    }

    public final void a(String str) {
        a.d("Prior ad identifier = " + str);
        this.g = str;
    }

    final boolean k() {
        return this.h;
    }

    final void l() {
        a.d("Interstitial network error.");
        this.h = true;
    }

    final boolean m() {
        return this.i;
    }

    final void n() {
        a.d("Interstitial no fill.");
        this.i = true;
    }

    public final void o() {
        a.d("Landing page dismissed.");
        this.e.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    final String p() {
        return this.a;
    }

    public final void b(String str) {
        a.d("Prior impression ticket = " + str);
        this.a = str;
    }
}
