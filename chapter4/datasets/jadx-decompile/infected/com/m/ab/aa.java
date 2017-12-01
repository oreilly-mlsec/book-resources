package com.m.ab;

import java.io.Serializable;

public class aa implements Serializable {
    @ac(aa = 0)
    private int aa;
    @ac(aa = 1)
    private String ab;
    @ac(aa = 2)
    private int ac;
    @ac(aa = 3)
    private short ad;
    @ac(aa = 4)
    private String ae;
    @ac(aa = 5)
    private String af;
    @ac(aa = 6)
    private String ag;
    @ac(aa = 7)
    private String ah;

    public int aa() {
        return this.aa;
    }

    public void aa(int i) {
        this.aa = i;
    }

    public void aa(String str) {
        this.ab = str;
    }

    public void aa(short s) {
        this.ad = s;
    }

    public short ab() {
        return this.ad;
    }

    public void ab(int i) {
        this.ac = i;
    }

    public String toString() {
        return new StringBuilder(String.valueOf(1002)).append("< ").append(1).append(":").append(this.aa).append(",").append(2).append(":").append(this.ab).append(",").append(3).append(":").append(this.ac).append(",").append(4).append(":").append(this.ad).append(",").append(5).append(":").append(this.ae).append(",").append(6).append(":").append(this.af).append(",").append(7).append(":").append(this.ag).append(",").append(8).append(":").append(this.ah).append(">").toString();
    }
}
