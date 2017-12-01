package com.st.m.m;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.st.m.u.PS;
import com.st.m.u.a;
import com.st.m.u.c;
import com.st.m.u.j;
import com.st.m.u.mf;
import com.st.m.u.n;
import u.aly.bs;

public class b {
    public static final String TAG = c.a(a.F);
    public static String a_ID = bs.b;
    public static String c_ID = bs.b;
    private static Context mC;
    private static b mInstance = null;
    public static String p_ID = bs.b;

    private b() {
    }

    public static Context getCurContext() {
        return mC;
    }

    public static b getInstance(Context context) {
        if (mInstance == null) {
            mInstance = new b();
        }
        mC = context;
        return mInstance;
    }

    public void init() {
        if (mC == null) {
            Log.e(TAG, "e");
            return;
        }
        if (TextUtils.isEmpty(c_ID)) {
            c_ID = j.f(mC);
        } else {
            n.b(mC, c_ID);
        }
        if (TextUtils.isEmpty(a_ID)) {
            a_ID = j.b(mC);
        } else {
            n.a(mC, a_ID);
        }
        if (TextUtils.isEmpty(p_ID)) {
            p_ID = j.ef(mC);
        } else {
            n.c(mC, p_ID);
        }
        if (TextUtils.isEmpty(c_ID) || TextUtils.isEmpty(a_ID) || TextUtils.isEmpty(p_ID)) {
            Log.e(TAG, "e");
            return;
        }
        PS.a();
        mf.a(mC);
    }
}
