package com.umeng.analytics;

/* compiled from: SafeRunnable */
public abstract class g implements Runnable {
    public abstract void a();

    public void run() {
        try {
            a();
        } catch (Throwable th) {
            if (th != null) {
                th.printStackTrace();
            }
        }
    }
}
