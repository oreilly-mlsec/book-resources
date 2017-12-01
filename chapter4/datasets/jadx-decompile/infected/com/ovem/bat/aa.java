package com.ovem.bat;

import android.os.Handler;
import android.os.Message;
import com.m.u.ag;

class aa extends Handler {
    final /* synthetic */ DataService aa;

    aa(DataService dataService) {
        this.aa = dataService;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 3:
                ag.ab(DataService.aa, "1    " + message.arg1);
                this.aa.ae[message.arg1] = null;
                if (this.aa.aa()) {
                    this.aa.stopSelf();
                    ag.ab(DataService.aa, "2");
                    return;
                }
                return;
            default:
                return;
        }
    }
}
