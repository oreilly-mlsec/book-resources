package u.aly;

import android.content.Context;
import android.telephony.TelephonyManager;

/* compiled from: ImeiTracker */
public class e extends a {
    private static final String a = "imei";
    private Context b;

    public e(Context context) {
        super(a);
        this.b = context;
    }

    public String f() {
        TelephonyManager telephonyManager = (TelephonyManager) this.b.getSystemService("phone");
        if (telephonyManager == null) {
        }
        try {
            if (bs.a(this.b, "android.permission.READ_PHONE_STATE")) {
                return telephonyManager.getDeviceId();
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
