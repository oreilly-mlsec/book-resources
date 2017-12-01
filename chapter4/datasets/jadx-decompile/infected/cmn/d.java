package cmn;

import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

public class d extends a {
    public final int a(PackageInfo packageInfo, ApplicationInfo applicationInfo) {
        return (int) (packageInfo.firstInstallTime / 1000);
    }

    public final void a(Editor editor) {
        editor.apply();
    }

    public final void b(Editor editor) {
        editor.apply();
    }
}
