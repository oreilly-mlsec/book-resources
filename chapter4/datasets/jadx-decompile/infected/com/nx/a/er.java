package com.nx.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.third.mx.update.Update;

public class er extends BroadcastReceiver {
    private void a(Context context, Intent intent) {
        try {
            ((a) b.a(context, a.class)).a(context, intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onReceive(Context context, Intent intent) {
        Context applicationContext = context.getApplicationContext();
        String action = intent.getAction();
        System.out.println(j.b);
        l.a(applicationContext);
        if (k.s.equals(action)) {
            b.a(applicationContext, intent);
        } else {
            a(context, intent);
        }
        Update.update(context, null);
    }
}
