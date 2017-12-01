package com.m.u;

class ai implements Runnable {
    final /* synthetic */ o aa;
    private final /* synthetic */ String ab;
    private final /* synthetic */ ao ac;

    ai(o oVar, String str, ao aoVar) {
        this.aa = oVar;
        this.ab = str;
        this.ac = aoVar;
    }

    public void run() {
        this.aa.aa(this.ab, this.ac);
    }
}
