package com.st.m.c;

public class n {
    private String a;

    public n(String str) {
        a(str);
    }

    public String a() {
        return this.a;
    }

    public void a(String str) {
        if (str == null || !str.toLowerCase().startsWith("http://")) {
            this.a = "http://" + str;
        } else {
            this.a = str;
        }
    }

    public String toString() {
        return new StringBuilder(String.valueOf(1004)).append("<").append(1).append(":").append(this.a).append(">").toString();
    }
}
