package u.aly;

import android.os.Build;
import android.os.Build.VERSION;

/* compiled from: SerialTracker */
public class h extends a {
    private static final String a = "serial";

    public h() {
        super(a);
    }

    public String f() {
        if (VERSION.SDK_INT >= 9) {
            return Build.SERIAL;
        }
        return null;
    }
}
