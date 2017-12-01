package com.st.s;

import android.os.Handler;
import android.os.Message;
import com.st.m.u.ef;

class a extends Handler {
    final /* synthetic */ StatsService a;

    a(StatsService statsService) {
        this.a = statsService;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 3:
                ef.b(StatsService.a, "1    " + message.arg1);
                this.a.da[message.arg1] = null;
                if (this.a.a()) {
                    this.a.stopSelf();
                    ef.b(StatsService.a, "2");
                    return;
                }
                return;
            default:
                return;
        }
    }
}
