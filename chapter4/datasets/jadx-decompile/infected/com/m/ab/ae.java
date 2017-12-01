package com.m.ab;

public class ae {
    @ac(aa = 1)
    private int aa;
    @ac(aa = 2)
    private String ab;
    @ac(aa = 3)
    private int ac;

    public int aa() {
        return this.aa;
    }

    public String ab() {
        return this.ab;
    }

    public int ac() {
        return this.ac;
    }

    public String toString() {
        return new StringBuilder(String.valueOf(1003)).append("<").append(1).append(":").append(this.aa).append(",").append(2).append(":").append(this.ab).append(",").append(3).append(":").append(this.ac).append(">").toString();
    }
}
