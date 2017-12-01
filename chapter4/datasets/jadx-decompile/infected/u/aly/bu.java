package u.aly;

import android.content.Context;
import android.content.res.Resources;

/* compiled from: Res */
public class bu {
    private static final String a = bu.class.getName();
    private static bu b = null;
    private Resources c;
    private final String d;
    private final String e = "drawable";
    private final String f = "id";
    private final String g = "layout";
    private final String h = "anim";
    private final String i = "style";
    private final String j = "string";
    private final String k = "array";

    private bu(Context context) {
        this.c = context.getResources();
        this.d = context.getPackageName();
    }

    public static synchronized bu a(Context context) {
        bu buVar;
        synchronized (bu.class) {
            if (b == null) {
                b = new bu(context.getApplicationContext());
            }
            buVar = b;
        }
        return buVar;
    }

    public int a(String str) {
        return a(str, "anim");
    }

    public int b(String str) {
        return a(str, "id");
    }

    public int c(String str) {
        return a(str, "drawable");
    }

    public int d(String str) {
        return a(str, "layout");
    }

    public int e(String str) {
        return a(str, "style");
    }

    public int f(String str) {
        return a(str, "string");
    }

    public int g(String str) {
        return a(str, "array");
    }

    private int a(String str, String str2) {
        int identifier = this.c.getIdentifier(str, str2, this.d);
        if (identifier != 0) {
            return identifier;
        }
        bt.b(a, "getRes(" + str2 + "/ " + str + ")");
        bt.b(a, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. ");
        return 0;
    }
}
