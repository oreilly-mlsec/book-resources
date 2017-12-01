package u.aly;

import android.content.Context;
import android.provider.Settings.Secure;

/* compiled from: AndroidIdTracker */
public class b extends a {
    private static final String a = "android_id";
    private Context b;

    public b(Context context) {
        super(a);
        this.b = context;
    }

    public String f() {
        String str = null;
        try {
            str = Secure.getString(this.b.getContentResolver(), a);
        } catch (Exception e) {
        }
        return str;
    }
}
