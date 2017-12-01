package com.appbrain.a;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.widget.Toast;
import cmn.a;
import com.appbrain.AdService;
import com.appbrain.RemoteSettings;
import com.appbrain.e.f;
import com.appbrain.e.j;
import java.util.concurrent.atomic.AtomicBoolean;

public final class v implements AdService {
    private static v a = new v();
    private s b;
    private final AtomicBoolean c = new AtomicBoolean(false);
    private int d = 0;
    private RemoteSettings e = null;
    private SharedPreferences f = null;
    private Context g = null;

    private v() {
    }

    public static v a() {
        return a;
    }

    private synchronized void a(Context context) {
        if (this.e == null) {
            this.e = n.a(context, true);
            this.f = context.getSharedPreferences("ab_sdk_pref", 0);
            this.g = context;
        }
    }

    static /* synthetic */ void a(v vVar) {
        j a = r.a(vVar.g).a();
        Editor edit = vVar.f.edit();
        edit.putInt("pingcount", vVar.f.getInt("pingcount", 0) + 1);
        a.a().a(edit);
        try {
            n.a(vVar.g, a.c());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private boolean a(int i) {
        if (System.currentTimeMillis() <= Math.max(this.f.getLong("last_offer_wall_shown", 0), this.f.getLong("last_offer_time", 0)) + (((long) (86400 * i)) * 1000)) {
            return false;
        }
        Editor edit = this.f.edit();
        edit.putLong("last_offer_time", System.currentTimeMillis());
        a.a().a(edit);
        return true;
    }

    private synchronized void k() {
        if (this.b == null) {
            this.b = new w(this, "ping", ((long) Integer.parseInt(a.e.get("ping_interval", "86400"))) * 1000);
        }
        this.b.b(this.g);
    }

    private boolean l() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.g.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        } catch (Exception e) {
            return true;
        }
    }

    public final synchronized void a(Context context, boolean z) {
        Object obj = null;
        synchronized (this) {
            Context applicationContext = context.getApplicationContext();
            if (!a.b()) {
                try {
                    applicationContext.getPackageManager().getActivityInfo(new ComponentName(applicationContext, "com.appbrain.AppBrainActivity"), 0);
                    applicationContext.getPackageManager().getServiceInfo(new ComponentName(applicationContext, "com.appbrain.AppBrainService"), 0);
                    if (applicationContext.checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
                        throw new IllegalStateException("Add the INTERNET permission to your Android manifest!");
                    }
                    try {
                        if (l.class.getMethod("isPackageInstalled", new Class[]{String.class}).getName().contains("isPackage")) {
                            int i = 1;
                        }
                    } catch (NoSuchMethodException e) {
                    }
                    if (obj == null) {
                        System.err.println("AppLift SDK requires changes to your proguard config. Please check http://www.appbrain.com/info/sdk");
                        Toast.makeText(applicationContext, "AppLift SDK requires changes to your proguard config!", 1).show();
                    }
                    u.a(applicationContext);
                } catch (NameNotFoundException e2) {
                    throw new IllegalStateException("No AppBrainService defined in the manifest!");
                } catch (NameNotFoundException e3) {
                    throw new IllegalStateException("No AppBrainActivity defined in the manifest!");
                }
            }
            a(applicationContext);
            ac.a(applicationContext);
            if (z) {
                Editor edit = this.f.edit();
                edit.putInt("init_called", this.f.getInt("init_called", 0) + 1);
                a.a().a(edit);
                k();
            }
            try {
                if (Integer.parseInt(this.e.get("sdk_off", "0")) != 0) {
                    this.c.set(true);
                }
            } catch (Exception e4) {
            }
        }
    }

    public final synchronized boolean b() {
        return this.g != null;
    }

    public final boolean c() {
        return this.c.get();
    }

    final SharedPreferences d() {
        return this.f;
    }

    public final String e() {
        return this.e.get("adserver", "http://p.appbrain.com");
    }

    public final String f() {
        return this.e.get("pserver", "http://sdk.appbrain.com");
    }

    public final RemoteSettings g() {
        return this.e;
    }

    public final Context h() {
        return this.g;
    }

    public final void i() {
        Editor edit = this.f.edit();
        edit.putLong("last_offer_wall_shown", System.currentTimeMillis());
        a.a().b(edit);
    }

    public final RemoteSettings j() {
        return n.a(this.g, false);
    }

    public final synchronized boolean maybeShowInterstitial(Activity activity) {
        boolean z = true;
        synchronized (this) {
            a(activity, false);
            if (this.c.get() || !l()) {
                z = false;
            } else {
                int parseInt = Integer.parseInt(this.e.get("offerwall", "4"));
                if (parseInt <= 0 || !a(parseInt)) {
                    z = false;
                } else {
                    a.a((Context) activity, true, b.a());
                }
            }
        }
        return z;
    }

    public final synchronized boolean maybeShowOfferWall(Activity activity) {
        boolean z = false;
        synchronized (this) {
            a(activity, false);
            if (!this.c.get() && l()) {
                int parseInt = Integer.parseInt(this.e.get("offerwall", "4"));
                if (parseInt > 0) {
                    this.d++;
                    if (this.d >= 3) {
                        z = a(parseInt);
                        if (z) {
                            Builder builder = new Builder(activity);
                            builder.setMessage("Would you like to see some cool apps?");
                            builder.setPositiveButton("Yes", new aa(this, activity)).setNegativeButton("Not now", new ab(this));
                        }
                    }
                }
            }
        }
        return z;
    }

    public final void showDialog(Activity activity, String str, String str2, String str3, Runnable runnable) {
        a(activity, false);
        b a = b.a();
        Builder builder = new Builder(activity);
        builder.setIcon(17301659);
        if (str != null) {
            builder.setTitle(str);
        }
        if (str2 != null) {
            builder.setMessage(str2);
        }
        builder.setPositiveButton(str3, new y(this, runnable));
        if (!this.c.get()) {
            builder.setNegativeButton("More Apps", new z(this, activity, a));
        }
        builder.show();
    }

    public final synchronized boolean showInterstitial(Activity activity) {
        boolean z = false;
        synchronized (this) {
            a(activity, false);
            if (!this.c.get() && l()) {
                a.a((Context) activity, false, b.a());
                z = true;
            }
        }
        return z;
    }

    public final void showOfferWall(Context context) {
        a(context, false);
        if (!this.c.get()) {
            a.a(context, f.DIRECT);
        }
    }
}
