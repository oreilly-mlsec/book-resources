package com.m.ab;

import java.io.Serializable;

@av(ab = 102001)
public class aj implements Serializable {
    @ac(aa = 0)
    private aw aa = new aw();
    @ac(aa = 1)
    private String ab;

    public void aa(aw awVar) {
        this.aa = awVar;
    }

    public void aa(String str) {
        this.ab = str;
    }

    public String toString() {
        return new StringBuilder(String.valueOf(101)).append("< ").append(this.aa).append(",  ").append(this.ab).append(">").toString();
    }
}
