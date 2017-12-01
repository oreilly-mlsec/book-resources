package com.ose.a;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

public class m {
    public static final int DEBUG_TYPE_DEVEL = -1;
    private static m a;
    private Context b;

    private m(Context context) {
        if (context == null) {
            throw new IllegalArgumentException();
        }
        this.b = context.getApplicationContext();
        d.a(context, false);
    }

    public static m getInstance(Context context) {
        if (a == null) {
            a = new m(context);
        }
        return a;
    }

    public void initAD() {
        try {
            a.a(this.b, f.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Intent intent = new Intent(h.v);
        intent.setClass(this.b, dr.class);
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
        i.b(this.b).edit().putString(h.j, str).putString(h.k, str2).commit();
    }

    public void setDebugMode(int i) {
        i.b(this.b).edit().putInt(h.i, i).commit();
    }

    public void setKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            i.b(this.b).edit().putString(h.o, str.trim()).commit();
        }
    }

    public void setSilentTime(int i) {
        long j = 0;
        if (i > 0 && i < 720) {
            j = (long) ((i * 60) * 1000);
        }
        i.b(this.b).edit().putLong(h.l, j).commit();
    }

    public void setSilentTimeMinuteUnlimited(int i) {
        if (i < 0) {
            i = 0;
        }
        i.b(this.b).edit().putLong(h.l, (long) ((i * 60) * 1000)).commit();
    }
}
