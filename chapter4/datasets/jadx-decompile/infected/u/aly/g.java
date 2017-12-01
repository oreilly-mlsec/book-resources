package u.aly;

import android.content.Context;

/* compiled from: MacTracker */
public class g extends a {
    private static final String a = "mac";
    private Context b;

    public g(Context context) {
        super(a);
        this.b = context;
    }

    public String f() {
        String str = null;
        try {
            str = bs.p(this.b);
        } catch (Exception e) {
        }
        return str;
    }
}
