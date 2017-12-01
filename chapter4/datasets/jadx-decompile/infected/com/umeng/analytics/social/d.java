package com.umeng.analytics.social;

import u.aly.bs;

/* compiled from: UMResult */
public class d {
    private int a = -1;
    private String b = bs.b;
    private String c = bs.b;
    private Exception d = null;

    public d(int i) {
        this.a = i;
    }

    public d(int i, Exception exception) {
        this.a = i;
        this.d = exception;
    }

    public Exception a() {
        return this.d;
    }

    public int b() {
        return this.a;
    }

    public void a(int i) {
        this.a = i;
    }

    public String c() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public String d() {
        return this.c;
    }

    public void b(String str) {
        this.c = str;
    }

    public String toString() {
        return "status=" + this.a + "\r\n" + "msg:  " + this.b + "\r\n" + "data:  " + this.c;
    }
}
