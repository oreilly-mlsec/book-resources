package com.st.m.b;

public class b {
    @com.st.m.c.b(a = 0)
    private String a;
    @com.st.m.c.b(a = 1)
    private int b;
    @com.st.m.c.b(a = 2)
    private int c;
    @com.st.m.c.b(a = 3)
    private String da;

    public String a() {
        return this.a;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(String str) {
        this.a = str;
    }

    public int b() {
        return this.b;
    }

    public void b(int i) {
        this.c = i;
    }

    public void b(String str) {
        this.da = str;
    }

    public int c() {
        return this.c;
    }

    public String da() {
        return this.da;
    }

    public String toString() {
        return "DataInfo [packageName=" + this.a + ", versionCode=" + this.b + ", type=" + this.c + ", appName=" + this.da + "]";
    }
}
