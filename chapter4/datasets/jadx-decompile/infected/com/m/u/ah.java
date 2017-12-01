package com.m.u;

import java.util.Properties;

public class ah {
    public static final String aa = ae.aa(ac.dm);
    private static ah ab = null;
    private Properties ac = null;
    private boolean ad = false;
    private boolean ae = false;
    private boolean af = false;

    private ah() {
        if (this.ac == null) {
            this.ac = af.ab();
        }
        this.ae = af.aa(this.ac, "a");
        this.ad = af.aa(this.ac, "b");
        this.af = af.aa(this.ac, "c");
    }

    public static ah aa() {
        if (ab == null) {
            ab = new ah();
        }
        return ab;
    }

    public boolean ab() {
        return this.ad;
    }

    public boolean ac() {
        return this.ae;
    }

    public boolean ad() {
        return this.af;
    }
}
