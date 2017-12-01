package com.m.u;

import dalvik.system.DexClassLoader;

public class al {
    private static al aa;
    private static DexClassLoader ab;
    private static String ad;
    private boolean ac;

    private al() {
    }

    public static synchronized al aa() {
        al alVar;
        synchronized (al.class) {
            if (aa == null) {
                synchronized (al.class) {
                    if (aa == null) {
                        aa = new al();
                    }
                }
            }
            alVar = aa;
        }
        return alVar;
    }

    public void aa(DexClassLoader dexClassLoader) {
        ab = dexClassLoader;
    }

    public void aa(String str) {
        ad = str;
    }

    public void aa(boolean z) {
        this.ac = z;
    }

    public DexClassLoader ab() {
        return ab;
    }

    public boolean ac() {
        return this.ac;
    }

    public String ad() {
        return ad;
    }
}
