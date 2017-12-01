package com.appbrain.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import android.webkit.WebSettings;
import android.webkit.WebView;
import cmn.a;
import cmn.f;
import com.appbrain.c.l;
import com.appbrain.e.b;
import com.appbrain.e.p;
import com.appbrain.e.q;
import com.appbrain.e.t;
import com.appbrain.e.u;
import java.text.ParseException;

public final class k {
    private static Boolean a = null;

    public static int a(Context context) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        SharedPreferences d = v.a().d();
        int i = Integer.MAX_VALUE;
        for (String str : d.getAll().keySet()) {
            String str2;
            if (str2.startsWith(b.CLICK.toString())) {
                str2 = d.getString(str2, null);
                if (str2 != null) {
                    try {
                        t a = t.a(f.a(str2));
                        String e = a.c().e();
                        int g = a.g();
                        boolean a2 = a(context, e);
                        if (g == 0 && a2) {
                            a(context, e, true);
                            SharedPreferences d2 = v.a().d();
                            Editor edit = d2.edit();
                            edit.putInt("ow_inst", d2.getInt("ow_inst", 0) + 1);
                            a.a().b(edit);
                        } else if (g == 1 && !a2) {
                            a(context, e, false);
                        }
                        int k = (int) ((elapsedRealtime - a.c().k()) / 1000);
                        k = k < 300 ? 30 : k < 900 ? 120 : k < 3600 ? 300 : k < 108000 ? 1800 : Integer.MAX_VALUE;
                        i = Math.min(i, k);
                    } catch (l e2) {
                        e2.printStackTrace();
                    } catch (ParseException e3) {
                        e3.printStackTrace();
                    }
                }
            }
        }
        return i == Integer.MAX_VALUE ? 0 : i;
    }

    private static t a(String str, b bVar, String str2, String str3) {
        q q = p.q();
        q.a(str);
        q.a(bVar);
        q.b(SystemClock.elapsedRealtime());
        q.a(System.currentTimeMillis());
        q.b(str2);
        q.c(str3);
        u i = t.i();
        i.a(q);
        i.a(false);
        i.a(0);
        return i.a();
    }

    public static void a(Context context, WebView webView) {
        SharedPreferences d = v.a().d();
        long currentTimeMillis = System.currentTimeMillis();
        long j = d.getLong("last_cache_clear", 0);
        if (j != 0 && currentTimeMillis >= j) {
            if (currentTimeMillis > 259200000 + j) {
                webView.clearCache(true);
            } else {
                currentTimeMillis = j;
            }
        }
        if (currentTimeMillis != j) {
            Editor edit = d.edit();
            edit.putLong("last_cache_clear", currentTimeMillis);
            a.a().a(edit);
        }
        WebSettings settings = webView.getSettings();
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(false);
        settings.setBlockNetworkImage(false);
        settings.setLoadsImagesAutomatically(true);
        settings.setDefaultTextEncodingName("UTF-8");
        webView.setBackgroundColor(-1);
        webView.addJavascriptInterface(new l(context, null), "adApi");
    }

    public static void a(Context context, o oVar) {
        a(context, oVar.a, oVar.c, oVar.b);
    }

    public static void a(Context context, String str, String str2, String str3) {
        u.a(context, b.CLICK + str, a(str, b.CLICK, str2, str3));
        if (!c(context)) {
            u.a(context);
        }
    }

    private static void a(Context context, String str, boolean z) {
        SharedPreferences d = v.a().d();
        try {
            String string = d.getString(b.CLICK + str, null);
            if (string != null) {
                t a = t.a(f.a(string));
                int g = a.g();
                int i = g + 1;
                if (g == 2) {
                    return;
                }
                if (g == 0 && !z) {
                    return;
                }
                if (g != 1 || !z) {
                    a = a.j().a(i).a();
                    Editor edit = d.edit();
                    edit.putString(b.CLICK + str, f.a(a.K()));
                    a.a().a(edit);
                    long i2 = a.c().i();
                    String str2 = "time=" + (i2 / 1000) + "&delta=" + ((System.currentTimeMillis() - i2) / 1000);
                    b bVar = z ? b.INSTALL : b.UNINSTALL;
                    u.a(context, bVar + str, a(str, bVar, a.c().m(), str2));
                }
            }
        } catch (l e) {
            e.printStackTrace();
        } catch (ParseException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0) != null;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    public static String b(Context context) {
        v.a().a(context, false);
        return v.a().d().getString("ref", null);
    }

    public static void b(Context context, String str) {
        v.a().a(context, false);
        Editor edit = v.a().d().edit();
        edit.putString("ref", str);
        a.a().a(edit);
    }

    private static synchronized boolean c(Context context) {
        boolean booleanValue;
        synchronized (k.class) {
            if (a == null) {
                try {
                    context.getPackageManager().getReceiverInfo(new ComponentName(context, "com.appspot.swisscodemonkeys.featured.InstallBroadcastReceiver"), 0);
                    a = Boolean.valueOf(true);
                } catch (NameNotFoundException e) {
                    a = Boolean.valueOf(false);
                }
            }
            booleanValue = a.booleanValue();
        }
        return booleanValue;
    }
}
