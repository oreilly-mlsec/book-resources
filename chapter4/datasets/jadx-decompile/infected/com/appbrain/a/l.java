package com.appbrain.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import cmn.Proguard.KeepMembers;
import cmn.a;

class l implements KeepMembers {
    final o a;
    private final Context b;

    public l(Context context, o oVar) {
        this.a = oVar;
        this.b = context;
    }

    public void click() {
        if (this.a != null) {
            k.a(this.b, this.a);
            SharedPreferences d = v.a().d();
            Editor edit = d.edit();
            edit.putInt("ow_click", d.getInt("ow_click", 0) + 1);
            a.a().b(edit);
        }
    }

    public boolean isPackageInstalled(String str) {
        return k.a(this.b, str);
    }

    public void reportSelected(String str, String str2, String str3) {
        new Thread(new m(this, str, str2, str3)).start();
        SharedPreferences d = v.a().d();
        Editor edit = d.edit();
        edit.putInt("ow_imp", d.getInt("ow_imp", 0) + 1);
        a.a().b(edit);
    }

    public void trackClick(String str, String str2, String str3) {
        k.a(this.b, str, str2, str3);
    }
}
