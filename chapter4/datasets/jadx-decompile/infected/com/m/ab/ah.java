package com.m.ab;

@av(ab = 101001)
public class ah {
    @ac(aa = 0)
    private aw aa = new aw();
    @ac(aa = 1)
    private String ab;
    @ac(aa = 2)
    private byte ac;

    public void aa(byte b) {
        this.ac = b;
    }

    public void aa(aw awVar) {
        this.aa = awVar;
    }

    public void aa(String str) {
        this.ab = str;
    }

    public String toString() {
        return new StringBuilder(String.valueOf(3001)).append("< ").append(this.aa).append(", ").append(this.ab).append(", ").append(this.ac).append(">").toString();
    }
}
