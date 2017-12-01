package cmn;

import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build.VERSION;
import java.io.File;

public class a {
    private static a a = null;

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (a == null) {
                if (VERSION.SDK_INT >= 11) {
                    a = new c();
                } else if (VERSION.SDK_INT >= 9) {
                    a = new d();
                } else {
                    a = new a();
                }
            }
            aVar = a;
        }
        return aVar;
    }

    public int a(PackageInfo packageInfo, ApplicationInfo applicationInfo) {
        try {
            return (int) (new File(applicationInfo.publicSourceDir).lastModified() / 1000);
        } catch (Throwable th) {
            return 0;
        }
    }

    public void a(Editor editor) {
        editor.commit();
    }

    public void b(Editor editor) {
        new Thread(new b(this, editor)).start();
    }
}
