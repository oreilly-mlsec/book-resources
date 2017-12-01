package com.m.ab;

@av(ab = 202001)
public class ak extends aq {
    @ac(aa = 2)
    public String aa;
    @ac(aa = 3)
    public String ab;
    @ac(aa = 4)
    public int ac;
    @ac(aa = 5)
    public String ad;
    @ac(aa = 6)
    public String ae;
    @ac(aa = 7)
    public String af;
    @ac(aa = 8)
    public int ag;

    public int aa() {
        return this.ac;
    }

    public String ab() {
        return this.ad;
    }

    public String ac() {
        return this.ae;
    }

    public int ad() {
        return this.ag;
    }

    public String toString() {
        return new StringBuilder(String.valueOf(102)).append("< ").append(1).append(":").append(this.aa).append(", ").append(2).append(":").append(this.ab).append(", ").append(3).append(":").append(this.ac).append(", ").append(4).append(":").append(this.ad).append(", ").append(5).append(":").append(this.ae).append(", ").append(6).append(":").append(this.ag).append(", ").append(7).append(":").append(this.af).append(">").toString();
    }
}
