package com.m.s;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Handler;
import com.m.u.ac;
import com.m.u.ae;
import com.m.u.ag;
import com.m.u.ah;
import com.m.u.av;

public class s extends i {
    public static final String aa = ae.aa(ac.ed);

    public class aa extends AsyncTask<Void, Void, Void> {
        final /* synthetic */ s aa;

        public aa(s sVar) {
            this.aa = sVar;
        }

        protected Void aa(Void... voidArr) {
            if (com.m.u.aa.aa(this.aa.ac)) {
                this.aa.af();
            } else {
                c.aa(this.aa.ac);
                this.aa.ad();
                this.aa.ae();
            }
            return null;
        }

        protected /* synthetic */ Object doInBackground(Object... objArr) {
            return aa((Void[]) objArr);
        }
    }

    public s(int i, Context context, Handler handler) {
        super(i, context, handler);
    }

    private void ad() {
        Intent intent = new Intent();
        intent.setClassName(this.ac, System.getProperty(com.m.ac.aa.bc));
        intent.putExtra(com.m.ac.aa.bv, 0);
        intent.putExtra(com.m.ac.aa.bs, -1);
        this.ac.startService(intent);
    }

    private void ae() {
        long j = 0;
        long currentTimeMillis = System.currentTimeMillis() - this.ac.getSharedPreferences(com.m.ac.aa.ap, 0).getLong(com.m.ac.aa.as, 0);
        if (!ah.aa().ac()) {
            j = 1440;
        }
        if (currentTimeMillis > (j * 60) * 1000) {
            av.aa(this.ac).aa(System.currentTimeMillis() + 30000, ad.CHECK_UPDATE_SERVICE.ab(), null);
            return;
        }
        ag.ab(aa, new StringBuilder(String.valueOf(2)).toString());
    }

    private void af() {
        av.aa(this.ac).aa(System.currentTimeMillis() + 1000, ad.CONFIG_INIT_SERVICE.ab(), null);
    }

    public void aa(Intent intent, int i, int i2) {
        ag.ab(aa, new StringBuilder(String.valueOf(1)).toString());
        new aa(this).execute(new Void[0]);
    }

    public void aa(com.m.ac.ac acVar) {
    }
}
