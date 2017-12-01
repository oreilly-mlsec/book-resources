package com.umeng.analytics;

import android.content.Context;
import u.aly.aa;
import u.aly.al;
import u.aly.bs;
import u.aly.s;

public class ReportPolicy {
    public static final int BATCH_AT_LAUNCH = 1;
    public static final int BATCH_BY_INTERVAL = 6;
    public static final int DAILY = 4;
    public static final int REALTIME = 0;
    public static final int SMART_POLICY = 8;
    public static final int WIFIONLY = 5;
    static final int a = 2;
    static final int b = 3;

    public static class i {
        public boolean a(boolean z) {
            return true;
        }

        public boolean a() {
            return true;
        }
    }

    public static class a extends i {
        private final long a = 15000;
        private aa b;

        public a(aa aaVar) {
            this.b = aaVar;
        }

        public boolean a(boolean z) {
            if (System.currentTimeMillis() - this.b.c >= 15000) {
                return true;
            }
            return false;
        }
    }

    public static class b extends i {
        private al a;
        private aa b;

        public b(aa aaVar, al alVar) {
            this.b = aaVar;
            this.a = alVar;
        }

        public boolean a(boolean z) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.b.c >= this.a.a()) {
                return true;
            }
            return false;
        }

        public boolean a() {
            return this.a.c();
        }
    }

    public static class c extends i {
        private long a;
        private long b = 0;

        public c(int i) {
            this.a = (long) i;
            this.b = System.currentTimeMillis();
        }

        public boolean a(boolean z) {
            if (System.currentTimeMillis() - this.b >= this.a) {
                return true;
            }
            return false;
        }

        public boolean a() {
            return System.currentTimeMillis() - this.b < this.a;
        }
    }

    public static class d extends i {
        public boolean a(boolean z) {
            return z;
        }
    }

    public static class e extends i {
        private static long a = 90000;
        private static long b = a.g;
        private long c;
        private aa d;

        public e(aa aaVar, long j) {
            this.d = aaVar;
            a(j);
        }

        public boolean a(boolean z) {
            if (System.currentTimeMillis() - this.d.c >= this.c) {
                return true;
            }
            return false;
        }

        public void a(long j) {
            if (j < a || j > b) {
                this.c = a;
            } else {
                this.c = j;
            }
        }

        public long b() {
            return this.c;
        }

        public static boolean a(int i) {
            if (((long) i) < a) {
                return false;
            }
            return true;
        }
    }

    public static class f extends i {
        private final int a;
        private s b;

        public f(s sVar, int i) {
            this.a = i;
            this.b = sVar;
        }

        public boolean a(boolean z) {
            return this.b.b() > this.a;
        }
    }

    public static class g extends i {
        private long a = a.g;
        private aa b;

        public g(aa aaVar) {
            this.b = aaVar;
        }

        public boolean a(boolean z) {
            if (System.currentTimeMillis() - this.b.c >= this.a) {
                return true;
            }
            return false;
        }
    }

    public static class h extends i {
        public boolean a(boolean z) {
            return true;
        }
    }

    public static class j extends i {
        private Context a = null;

        public j(Context context) {
            this.a = context;
        }

        public boolean a(boolean z) {
            return bs.k(this.a);
        }
    }

    public static class k extends i {
        private final long a = 10800000;
        private aa b;

        public k(aa aaVar) {
            this.b = aaVar;
        }

        public boolean a(boolean z) {
            if (System.currentTimeMillis() - this.b.c >= 10800000) {
                return true;
            }
            return false;
        }
    }

    public static boolean a(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 8:
                return true;
            default:
                return false;
        }
    }
}
