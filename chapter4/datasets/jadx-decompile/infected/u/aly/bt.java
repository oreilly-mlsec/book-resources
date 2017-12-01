package u.aly;

import android.util.Log;

/* compiled from: Log */
public class bt {
    public static boolean a = false;

    public static void a(String str, String str2) {
        if (a) {
            Log.i(str, str2);
        }
    }

    public static void a(String str, String str2, Exception exception) {
        if (a) {
            Log.i(str, exception.toString() + ":  [" + str2 + "]");
        }
    }

    public static void b(String str, String str2) {
        if (a) {
            Log.e(str, str2);
        }
    }

    public static void b(String str, String str2, Exception exception) {
        if (a) {
            Log.e(str, exception.toString() + ":  [" + str2 + "]");
            for (StackTraceElement stackTraceElement : exception.getStackTrace()) {
                Log.e(str, "        at\t " + stackTraceElement.toString());
            }
        }
    }

    public static void c(String str, String str2) {
        if (a) {
            Log.d(str, str2);
        }
    }

    public static void c(String str, String str2, Exception exception) {
        if (a) {
            Log.d(str, exception.toString() + ":  [" + str2 + "]");
        }
    }

    public static void d(String str, String str2) {
        if (a) {
            Log.v(str, str2);
        }
    }

    public static void d(String str, String str2, Exception exception) {
        if (a) {
            Log.v(str, exception.toString() + ":  [" + str2 + "]");
        }
    }

    public static void e(String str, String str2) {
        if (a) {
            Log.w(str, str2);
        }
    }

    public static void e(String str, String str2, Exception exception) {
        if (a) {
            Log.w(str, exception.toString() + ":  [" + str2 + "]");
            for (StackTraceElement stackTraceElement : exception.getStackTrace()) {
                Log.w(str, "        at\t " + stackTraceElement.toString());
            }
        }
    }
}
