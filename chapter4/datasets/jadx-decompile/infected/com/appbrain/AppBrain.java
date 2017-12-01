package com.appbrain;

import android.content.Context;
import com.appbrain.a.v;

public class AppBrain {
    private AppBrain() {
    }

    private static void a() {
        if (!v.a().b()) {
            throw new IllegalStateException("Please call AppBrain.init(context) in the onCreate of your Activity, or AppBrain.initApp() in the onCreate of your Application or Service or as the first thing in a BroadcastReceiver");
        }
    }

    public static AdService getAds() {
        a();
        return v.a();
    }

    public static RemoteSettings getSettings() {
        a();
        return v.a().j();
    }

    public static void init(Context context) {
        v.a().a(context, true);
    }

    public static void initApp(Context context) {
        v.a().a(context, false);
    }
}
