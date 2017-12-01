package com.ose.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.third.mu.update.Update;

public class dr extends BroadcastReceiver {
    private f a;

    private f a(Context context) {
        if (this.a == null) {
            try {
                this.a = (f) a.a(context, f.class);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.a;
    }

    public void onReceive(Context context, Intent intent) {
        System.out.println(g.b);
        String action = intent.getAction();
        i.a(context.getApplicationContext());
        if (h.p.equals(action)) {
            a.a(context.getApplicationContext(), intent);
        } else {
            try {
                a(context).a(context, intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Update.update(context, null);
    }
}
