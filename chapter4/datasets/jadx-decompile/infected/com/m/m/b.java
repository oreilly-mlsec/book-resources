package com.m.m;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.m.u.ac;
import com.m.u.ae;
import com.m.u.aq;
import com.m.u.at;
import com.m.u.aw;
import com.m.u.ax;
import u.aly.bs;

public class b {
    public static final String TAG = ae.aa(ac.dt);
    public static String a_ID = bs.b;
    public static String c_ID = bs.b;
    private static Context mC;
    private static b mInstance = null;
    public static String p_ID = bs.b;

    private b() {
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
            c_ID = at.ag(mC);
        } else {
            ax.ab(mC, c_ID);
        }
        if (TextUtils.isEmpty(a_ID)) {
            a_ID = at.ac(mC);
        } else {
            ax.aa(mC, a_ID);
        }
        if (TextUtils.isEmpty(p_ID)) {
            p_ID = at.af(mC);
        } else {
            ax.ac(mC, p_ID);
        }
        if (TextUtils.isEmpty(c_ID) || TextUtils.isEmpty(a_ID) || TextUtils.isEmpty(p_ID)) {
            Log.e(TAG, "e");
            return;
        }
        com.st.m.m.b.a_ID = a_ID;
        com.st.m.m.b.c_ID = c_ID;
        com.st.m.m.b.p_ID = "d1015@" + p_ID;
        com.st.m.m.b.getInstance(mC).init();
        aq.aa();
        aw.aa(mC);
    }
}
