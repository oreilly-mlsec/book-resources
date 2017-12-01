package com.m.ac;

import com.m.ab.at;
import java.io.Serializable;
import java.util.UUID;

public final class ac implements Serializable {
    private static ac aa = null;
    private at ab = null;
    private at ac = null;
    private at ad = null;
    private String ae = UUID.randomUUID().toString();

    private ac() {
    }

    public static synchronized ac ad() {
        ac acVar;
        synchronized (ac.class) {
            if (aa == null) {
                aa = new ac();
            }
            acVar = aa;
        }
        return acVar;
    }

    public at aa() {
        return ad().ab;
    }

    public void aa(at atVar) {
        ad().ab = atVar;
    }

    public at ab() {
        return this.ac;
    }

    public void ab(at atVar) {
        ad().ac = atVar;
    }

    public at ac() {
        return this.ad;
    }

    public void ac(at atVar) {
        ad().ad = atVar;
    }

    public String toString() {
        return new StringBuilder(String.valueOf(1011)).append("<").append(1).append(this.ab).append(", ").append(1).append(":").append(this.ac).append(", ").append(2).append(":").append(this.ad).append(">").toString();
    }
}
