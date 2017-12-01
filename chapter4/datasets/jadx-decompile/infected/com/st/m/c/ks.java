package com.st.m.c;

import java.io.Serializable;

public class ks implements Serializable {
    @b(a = 0)
    private int a;
    @b(a = 1)
    private String b;

    public String toString() {
        return new StringBuilder(String.valueOf(1010)).append("<").append(1).append(":").append(this.a).append(", ").append(2).append(":").append(this.b).append(">").toString();
    }
}
