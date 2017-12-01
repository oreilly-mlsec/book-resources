package cmn;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public final class j extends BroadcastReceiver {
    public static String a(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("cmn.refkey", null);
    }

    public final void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("referrer");
        if (stringExtra != null) {
            Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
            edit.putString("cmn.refkey", stringExtra);
            a.a().a(edit);
        }
    }
}
