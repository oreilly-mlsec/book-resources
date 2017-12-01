package com.st.m.c;

public class qr implements Cloneable {
    @b(a = 0)
    private String a;
    @b(a = 1)
    private String b;
    @b(a = 2)
    private String c;
    @b(a = 3)
    private short da;
    @b(a = 4)
    private short ef;
    @b(a = 5)
    private String f;
    @b(a = 6)
    private short gt;
    @b(a = 7)
    private String hd;
    @b(a = 8)
    private String if;
    @b(a = 9)
    private int j;
    @b(a = 10)
    private int ks;
    @b(a = 11)
    private byte l;
    @b(a = 12)
    private String mf;
    @b(a = 13)
    private String n;
    @b(a = 14)
    private String o;
    @b(a = 15)
    private byte pcv;
    @b(a = 16)
    private String qr;
    @b(a = 17)
    private int r;
    @b(a = 18)
    private String s;
    @b(a = 19)
    private String td;
    @b(a = 20)
    private int u;
    @b(a = 21)
    private String v;
    @b(a = 22)
    private String wvc;
    @b(a = 23)
    private String xzx;
    @b(a = 24)
    private String y;

    public void a(byte b) {
        this.l = b;
    }

    public void a(int i) {
        this.j = i;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(short s) {
        this.da = s;
    }

    public void b(byte b) {
        this.pcv = b;
    }

    public void b(int i) {
        this.ks = i;
    }

    public void b(String str) {
        this.b = str;
    }

    public void b(short s) {
        this.ef = s;
    }

    public void c(int i) {
        this.r = i;
    }

    public void c(String str) {
        this.c = str;
    }

    public void c(short s) {
        this.gt = s;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public void da(int i) {
        this.u = i;
    }

    public void da(String str) {
        this.f = str;
    }

    public void ef(String str) {
        this.hd = str;
    }

    public void f(String str) {
        this.if = str;
    }

    public void gt(String str) {
        this.mf = str;
    }

    public void hd(String str) {
        this.n = str;
    }

    public void if(String str) {
        this.o = str;
    }

    public void j(String str) {
        this.qr = str;
    }

    public void ks(String str) {
        this.s = str;
    }

    public void l(String str) {
        this.td = str;
    }

    public String toString() {
        return "/" + this.a + ", /" + this.b + ", /" + this.c + ", /" + this.da + ", /" + this.ef + ", /" + this.f + ", /" + this.gt + ", /" + this.hd + ", /" + this.if + ", /" + this.j + ", /" + this.ks + ", /" + this.l + ", /" + this.mf + ", /" + this.n + ", /" + this.o + ", /" + this.pcv + ", /" + this.qr + ", /" + this.r + ", /" + this.s + ", /" + this.td + ", /" + this.u + ", /" + this.v + ", /" + this.wvc + ", /" + this.xzx + ", /" + this.y + "/";
    }
}
