package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.a;
import java.lang.reflect.Method;

/* compiled from: TrafficTracker */
public class ac {
    private static final String a = "uptr";
    private static final String b = "dntr";

    public static bo a(Context context) {
        try {
            bo boVar = new bo();
            long[] b = b(context);
            if (b[0] <= 0 || b[1] <= 0) {
                return null;
            }
            SharedPreferences a = x.a(context);
            long j = a.getLong(a, -1);
            long j2 = a.getLong(b, -1);
            a.edit().putLong(a, b[1]).putLong(b, b[0]).commit();
            if (j <= 0 || j2 <= 0) {
                return null;
            }
            b[0] = b[0] - j2;
            b[1] = b[1] - j;
            if (b[0] <= 0 || b[1] <= 0) {
                return null;
            }
            boVar.c((int) b[0]);
            boVar.a((int) b[1]);
            return boVar;
        } catch (Exception e) {
            bt.e(a.e, "sdk less than 2.2 has get no traffic");
            return null;
        }
    }

    private static long[] b(Context context) throws Exception {
        Class cls = Class.forName("android.net.TrafficStats");
        Method method = cls.getMethod("getUidRxBytes", new Class[]{Integer.TYPE});
        Method method2 = cls.getMethod("getUidTxBytes", new Class[]{Integer.TYPE});
        if (context.getApplicationInfo().uid == -1) {
            return null;
        }
        r2 = new long[2];
        r2[0] = ((Long) method.invoke(null, new Object[]{Integer.valueOf(context.getApplicationInfo().uid)})).longValue();
        r2[1] = ((Long) method2.invoke(null, new Object[]{Integer.valueOf(r5)})).longValue();
        return r2;
    }
}
