package com.m.ab;

import java.io.Serializable;

public class aq implements Serializable {
    @ac(aa = 0)
    private int aa;
    @ac(aa = 1)
    private String ab;

    public int ae() {
        return this.aa;
    }

    public String af() {
        return this.ab;
    }

    public String toString() {
        return new StringBuilder(String.valueOf(1010)).append("<").append(1).append(":").append(this.aa).append(", ").append(2).append(":").append(this.ab).append(">").toString();
    }
}
