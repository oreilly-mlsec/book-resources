package com.nx.a;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.IBinder;

public class s extends Service {
    private i a;

    public i a() {
        if (this.a == null) {
            this.a = (i) b.a((Context) this, i.class);
            this.a.a((Service) this);
        }
        return this.a;
    }

    public IBinder onBind(Intent intent) {
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
}
