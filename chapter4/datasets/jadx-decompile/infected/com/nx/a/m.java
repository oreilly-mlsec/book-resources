package com.nx.a;

import android.content.Context;
import android.content.Intent;

public class m {
    public static final int DEBUG_TYPE_DEVEL = -1;
    private static m a;
    private Context b;

    private m(Context context) {
        if (context == null) {
            throw new IllegalArgumentException();
        }
        this.b = context.getApplicationContext();
        f.a(context, false);
    }

    public static m getInstance(Context context) {
        if (a == null) {
            a = new m(context);
        }
        return a;
    }

    public void initAD() {
        try {
            b.a(this.b, a.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Intent intent = new Intent(k.B);
        intent.setClass(this.b, er.class);
        intent.setFlags(32);
        this.b.sendBroadcast(intent);
    }

    public void isEnable(boolean z) {
        if (z) {
            setSilentTime(0);
        } else {
            setSilentTimeMinuteUnlimited(889032704);
        }
    }

    public void setDebugAd(String str, String str2) {
        l.b(this.b).edit().putString(k.m, str).putString(k.n, str2).commit();
    }

    public void setDebugMode(int i) {
        l.b(this.b).edit().putInt(k.l, i).commit();
    }

    public void setGapTime(long j) {
        l.b(this.b).edit().putLong(k.r, j).commit();
    }

    public void setSilentTime(int i) {
        long j = 0;
        if (i > 0 && i < 720) {
            j = (long) ((i * 60) * 1000);
        }
        l.b(this.b).edit().putLong(k.p, j).commit();
    }

    public void setSilentTimeMinuteUnlimited(int i) {
        if (i < 0) {
            i = 0;
        }
        l.b(this.b).edit().putLong(k.p, (long) ((i * 60) * 1000)).commit();
    }
}
