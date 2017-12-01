package com.nx.a;

import android.app.IntentService;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.IBinder;

public class ds extends IntentService {
    private e a;

    public ds() {
        super("ds");
    }

    public e a() {
        if (this.a == null) {
            this.a = (e) b.a((Context) this, e.class);
            this.a.a((Service) this);
        }
        return this.a;
    }

    public IBinder onBind(Intent intent) {
        super.onBind(intent);
        IBinder iBinder = null;
        try {
            iBinder = a().a(intent);
        } catch (Exception e) {
        }
        return iBinder;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            a().a(configuration);
        } catch (Exception e) {
        }
    }

    public void onCreate() {
        super.onCreate();
        try {
            a().b();
        } catch (Exception e) {
        }
    }

    public void onDestroy() {
        try {
            a().d();
        } catch (Exception e) {
        }
        super.onDestroy();
    }

    protected void onHandleIntent(Intent intent) {
        try {
            a().d(intent);
        } catch (Exception e) {
        }
    }

    public void onLowMemory() {
        super.onLowMemory();
        try {
            a().c();
        } catch (Exception e) {
        }
    }

    public void onRebind(Intent intent) {
        super.onRebind(intent);
        try {
            a().c(intent);
        } catch (Exception e) {
        }
    }

    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        try {
            a().a(intent, i);
        } catch (Exception e) {
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        int onStartCommand = super.onStartCommand(intent, i, i2);
        try {
            onStartCommand = a().a(intent, i, i2);
        } catch (Exception e) {
        }
        return onStartCommand;
    }

    public boolean onUnbind(Intent intent) {
        boolean onUnbind = super.onUnbind(intent);
        try {
            onUnbind = a().b(intent);
        } catch (Exception e) {
        }
        return onUnbind;
    }

    public void setIntentRedelivery(boolean z) {
        super.setIntentRedelivery(z);
        try {
            a().a(z);
        } catch (Exception e) {
        }
    }
}
