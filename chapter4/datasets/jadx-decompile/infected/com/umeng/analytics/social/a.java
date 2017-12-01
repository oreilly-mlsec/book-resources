package com.umeng.analytics.social;

import u.aly.bs;

/* compiled from: UMException */
public class a extends RuntimeException {
    private static final long b = -4656673116019167471L;
    protected int a = 5000;
    private String c = bs.b;

    public int a() {
        return this.a;
    }

    public a(int i, String str) {
        super(str);
        this.a = i;
        this.c = str;
    }

    public a(String str, Throwable th) {
        super(str, th);
        this.c = str;
    }

    public a(String str) {
        super(str);
        this.c = str;
    }

    public String getMessage() {
        return this.c;
    }
}
