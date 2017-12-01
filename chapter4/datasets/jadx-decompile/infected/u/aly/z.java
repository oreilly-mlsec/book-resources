package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.a;
import java.util.Arrays;
import java.util.List;

/* compiled from: SessionTracker */
public class z {
    private static final String a = "session_start_time";
    private static final String b = "session_end_time";
    private static final String c = "session_id";
    private static final String f = "activities";
    private static String g = null;
    private final String d = "a_start_time";
    private final String e = "a_end_time";

    public aj a(Context context) {
        SharedPreferences a = x.a(context);
        String string = a.getString(c, null);
        if (string == null) {
            return null;
        }
        long j = a.getLong(a, 0);
        long j2 = a.getLong(b, 0);
        long j3 = 0;
        if (j2 != 0) {
            j3 = j2 - j;
            if (Math.abs(j3) > a.g) {
                j3 = 0;
            }
        }
        aj ajVar = new aj();
        ajVar.a(string);
        ajVar.a(j);
        ajVar.b(j2);
        ajVar.c(j3);
        double[] location = AnalyticsConfig.getLocation();
        if (location != null) {
            bg bgVar = new bg(location[0], location[1], System.currentTimeMillis());
            if (ajVar.y()) {
                ajVar.a(bgVar);
            } else {
                ajVar.b(Arrays.asList(new bg[]{bgVar}));
            }
        }
        bo a2 = ac.a(context);
        if (a2 != null) {
            ajVar.a(a2);
        }
        List a3 = ad.a(a);
        if (a3 != null && a3.size() > 0) {
            ajVar.a(a3);
        }
        a(a);
        return ajVar;
    }

    private void a(SharedPreferences sharedPreferences) {
        Editor edit = sharedPreferences.edit();
        edit.remove(a);
        edit.remove(b);
        edit.remove("a_start_time");
        edit.remove("a_end_time");
        edit.putString(f, bs.b);
        edit.commit();
    }

    public String b(Context context) {
        String f = bs.f(context);
        String appkey = AnalyticsConfig.getAppkey(context);
        long currentTimeMillis = System.currentTimeMillis();
        if (appkey == null) {
            throw new RuntimeException("Appkey is null or empty, Please check AndroidManifest.xml");
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(currentTimeMillis).append(appkey).append(f);
        g = cf.a(stringBuilder.toString());
        return g;
    }

    public void c(Context context) {
        SharedPreferences a = x.a(context);
        if (a != null) {
            if (b(a)) {
                bt.a(a.e, "Start new session: " + a(context, a));
                return;
            }
            String string = a.getString(c, null);
            Editor edit = a.edit();
            edit.putLong("a_start_time", System.currentTimeMillis());
            edit.putLong("a_end_time", 0);
            edit.commit();
            bt.a(a.e, "Extend current session: " + string);
        }
    }

    public void d(Context context) {
        SharedPreferences a = x.a(context);
        if (a != null) {
            if (a.getLong("a_start_time", 0) == 0 && AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                bt.b(a.e, "onPause called before onResume");
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            Editor edit = a.edit();
            edit.putLong("a_start_time", 0);
            edit.putLong("a_end_time", currentTimeMillis);
            edit.putLong(b, currentTimeMillis);
            edit.commit();
        }
    }

    private boolean b(SharedPreferences sharedPreferences) {
        long j = sharedPreferences.getLong("a_start_time", 0);
        long j2 = sharedPreferences.getLong("a_end_time", 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (j != 0 && currentTimeMillis - j < AnalyticsConfig.kContinueSessionMillis) {
            bt.b(a.e, "onResume called before onPause");
            return false;
        } else if (currentTimeMillis - j2 > AnalyticsConfig.kContinueSessionMillis) {
            return true;
        } else {
            return false;
        }
    }

    private String a(Context context, SharedPreferences sharedPreferences) {
        l a = l.a(context);
        String b = b(context);
        q a2 = a(context);
        Editor edit = sharedPreferences.edit();
        edit.putString(c, b);
        edit.putLong(a, System.currentTimeMillis());
        edit.putLong(b, 0);
        edit.putLong("a_start_time", System.currentTimeMillis());
        edit.putLong("a_end_time", 0);
        edit.commit();
        if (a2 != null) {
            a.a(a2);
        } else {
            a.a((aj) null);
        }
        return b;
    }

    public boolean e(Context context) {
        boolean z = false;
        SharedPreferences a = x.a(context);
        if (!(a == null || a.getString(c, null) == null)) {
            long j = a.getLong("a_start_time", 0);
            long j2 = a.getLong("a_end_time", 0);
            if (j > 0 && j2 == 0) {
                z = true;
                d(context);
            }
            l a2 = l.a(context);
            q a3 = a(context);
            if (a3 != null) {
                a2.b(a3);
            }
        }
        return z;
    }

    public void f(Context context) {
        SharedPreferences a = x.a(context);
        if (a != null) {
            String b = b(context);
            Editor edit = a.edit();
            edit.putString(c, b);
            edit.putLong(a, System.currentTimeMillis());
            edit.putLong(b, 0);
            edit.putLong("a_start_time", System.currentTimeMillis());
            edit.putLong("a_end_time", 0);
            edit.commit();
            bt.a(a.e, "Restart session: " + b);
        }
    }

    public static String g(Context context) {
        if (g == null) {
            g = x.a(context).getString(c, null);
        }
        return g;
    }
}
