package com.st.m.c;

@pcv(a = true, b = 204001)
public class ef extends ks {
    @b(a = 2)
    private byte a;
    @b(a = 3)
    private int b;
    @b(a = 4)
    private String c;
    @b(a = 5)
    private String da;
    @b(a = 6)
    private int ef;

    public byte a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String da() {
        return this.da;
    }

    public int ef() {
        return this.ef;
    }

    public String toString() {
        return "GetConfigResp [configSwitch=" + this.a + ", reqRelativeTime=" + this.b + ", reqConfig=" + this.c + ", magicData=" + this.da + ", activeTime=" + this.ef + "]";
    }
}
