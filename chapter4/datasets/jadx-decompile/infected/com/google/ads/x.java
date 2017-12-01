package com.google.ads;

import com.google.ads.util.a;
import java.lang.ref.WeakReference;

public final class x implements Runnable {
    private WeakReference<d> a;

    public x(d dVar) {
        this.a = new WeakReference(dVar);
    }

    public final void run() {
        d dVar = (d) this.a.get();
        if (dVar == null) {
            a.a("The ad must be gone, so cancelling the refresh timer.");
        } else {
            dVar.x();
        }
    }
}
