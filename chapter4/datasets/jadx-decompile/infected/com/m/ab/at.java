package com.m.ab;

public class at {
    private String aa;

    public at(String str) {
        aa(str);
    }

    public String aa() {
        return this.aa;
    }

    public void aa(String str) {
        if (str == null || !str.toLowerCase().startsWith("http://")) {
            this.aa = "http://" + str;
        } else {
            this.aa = str;
        }
    }

    public String toString() {
        return new StringBuilder(String.valueOf(1004)).append("<").append(1).append(":").append(this.aa).append(">").toString();
    }
}
