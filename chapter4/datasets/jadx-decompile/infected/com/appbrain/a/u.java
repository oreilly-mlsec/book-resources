package com.appbrain.a;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import cmn.a;
import cmn.f;
import com.appbrain.AppBrainService;
import com.appbrain.e.b;
import com.appbrain.e.t;
import java.util.Map;

public final class u {
    public static void a(Context context) {
        Intent intent = new Intent(context, AppBrainService.class);
        intent.setAction("com.appbrain.CHECK");
        context.startService(intent);
    }

    public static void a(Context context, String str, t tVar) {
        Intent intent = new Intent(context, AppBrainService.class);
        intent.putExtra("event", f.a(tVar.K()));
        intent.putExtra("key", str);
        context.startService(intent);
    }

    public static void a(String str, String str2) {
        SharedPreferences d = v.a().d();
        if (d.getString(str, null) == null) {
            Editor edit = d.edit();
            edit.putString(str, str2);
            a.a().a(edit);
        }
    }

    public static boolean b(Context context) {
        boolean z;
        SharedPreferences d = v.a().d();
        Map all = d.getAll();
        Editor edit = d.edit();
        for (String str : all.keySet()) {
            if (str.startsWith(b.CLICK.toString()) || str.startsWith(b.INSTALL.toString()) || str.startsWith(b.UNINSTALL.toString())) {
                String string = d.getString(str, null);
                if (string != null) {
                    try {
                        t a = t.a(f.a(string));
                        boolean z2 = ((double) System.currentTimeMillis()) > ((double) a.c().i()) + 1.296E8d;
                        if (!a.e()) {
                            try {
                                if (q.a(context).a(a.c()) != null) {
                                    if (a.c().g() != b.CLICK || z2) {
                                        edit.remove(str);
                                    } else {
                                        com.appbrain.e.u j = a.j();
                                        j.a(true);
                                        edit.putString(str, f.a(j.a().K()));
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                z = true;
                                break;
                            }
                        } else if (z2) {
                            edit.remove(str);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        edit.remove(str);
                    }
                } else {
                    continue;
                }
            }
        }
        z = false;
        a.a().a(edit);
        return !z;
    }
}
