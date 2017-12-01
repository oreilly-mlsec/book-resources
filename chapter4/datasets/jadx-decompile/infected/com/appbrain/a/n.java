package com.appbrain.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import cmn.a;
import com.appbrain.RemoteSettings;
import com.appbrain.e.l;
import java.util.List;

public final class n implements RemoteSettings {
    private static RemoteSettings b = null;
    private static RemoteSettings c = null;
    private final SharedPreferences a;

    private n(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    public static synchronized RemoteSettings a(Context context, boolean z) {
        RemoteSettings remoteSettings;
        synchronized (n.class) {
            remoteSettings = z ? b : c;
            if (remoteSettings == null) {
                remoteSettings = new n(context.getSharedPreferences(z ? "ab_pref_int" : "ab_pref_ext", 0));
                if (z) {
                    b = remoteSettings;
                } else {
                    c = remoteSettings;
                }
            }
        }
        return remoteSettings;
    }

    public static void a(Context context, l lVar) {
        Editor edit;
        if ((lVar.h() && lVar.i()) || lVar.e() > 0) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("ab_pref_ext", 0);
            edit = sharedPreferences.edit();
            if (lVar.h() && lVar.i()) {
                for (String remove : sharedPreferences.getAll().keySet()) {
                    edit.remove(remove);
                }
            }
            a(lVar.d(), edit);
            a.a().a(edit);
        }
        if ((lVar.f() && lVar.g()) || lVar.c() > 0) {
            sharedPreferences = context.getSharedPreferences("ab_pref_int", 0);
            edit = sharedPreferences.edit();
            if (lVar.f() && lVar.g()) {
                for (String remove2 : sharedPreferences.getAll().keySet()) {
                    edit.remove(remove2);
                }
            }
            a(lVar.b(), edit);
            a.a().a(edit);
        }
    }

    private static void a(List list, Editor editor) {
        for (com.appbrain.e.n nVar : list) {
            if (nVar.f() && nVar.g()) {
                editor.remove(nVar.c());
            } else {
                editor.putString(nVar.c(), nVar.e());
            }
        }
    }

    public final String get(String str) {
        return get(str, null);
    }

    public final String get(String str, String str2) {
        return this.a.getString(str, str2);
    }
}
