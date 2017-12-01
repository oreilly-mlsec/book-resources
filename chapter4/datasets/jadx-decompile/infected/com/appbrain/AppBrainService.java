package com.appbrain;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.appbrain.a.k;
import com.appbrain.a.u;

public class AppBrainService extends IntentService {
    public AppBrainService() {
        super("AppBrain service");
    }

    private static void a(Context context, long j) {
        PendingIntent service = PendingIntent.getService(context, 0, new Intent(context, AppBrainService.class), 0);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        alarmManager.cancel(service);
        if (j != 0) {
            alarmManager.setInexactRepeating(1, System.currentTimeMillis() + Math.max(j / 4, 300000), j, service);
        }
    }

    public void onCreate() {
        super.onCreate();
        AppBrain.initApp(this);
    }

    protected void onHandleIntent(Intent intent) {
        Context applicationContext = getApplicationContext();
        if (intent.hasExtra("event")) {
            u.a(intent.getStringExtra("key"), intent.getStringExtra("event"));
        }
        if ("com.appbrain.CHECK".equals(intent.getAction())) {
            Context applicationContext2 = getApplicationContext();
            int a = k.a(applicationContext2);
            AlarmManager alarmManager = (AlarmManager) applicationContext2.getSystemService("alarm");
            Intent intent2 = new Intent(applicationContext2, AppBrainService.class);
            intent2.setAction("com.appbrain.CHECK");
            PendingIntent service = PendingIntent.getService(applicationContext2, 0, intent2, 0);
            long elapsedRealtime = SystemClock.elapsedRealtime() + (((long) a) * 1000);
            alarmManager.cancel(service);
            if (a != 0) {
                alarmManager.setRepeating(3, elapsedRealtime, ((long) a) * 1000, service);
            }
        }
        if (u.b(applicationContext)) {
            a(applicationContext, 0);
        } else {
            a(applicationContext, 1800000);
        }
    }
}
