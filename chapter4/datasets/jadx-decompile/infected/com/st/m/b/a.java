package com.st.m.b;

public class a {
    private String a;
    private String b;
    private int c;
    private int da;
    private int ef;

    public String a() {
        return this.a;
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(String str) {
        this.a = str;
    }

    public String b() {
        return this.b;
    }

    public void b(int i) {
        this.da = i;
    }

    public void b(String str) {
        this.b = str;
    }

    public int c() {
        return this.c;
    }

    public void c(int i) {
        this.ef = i;
    }

    public int da() {
        return this.da;
    }

    public int ef() {
        return this.ef;
    }

    public String toString() {
        return "AppInfo [appName=" + this.a + ", packageName=" + this.b + ", versionCode=" + this.c + ", type=" + this.da + ", isUpload=" + this.ef + "]";
    }
}
