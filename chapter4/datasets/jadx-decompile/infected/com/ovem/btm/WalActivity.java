package com.ovem.btm;

import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.m.u.aa;
import com.m.u.ac;
import com.m.u.ae;
import com.m.u.aq;
import com.m.u.as;
import com.m.u.b;

public class WalActivity extends b {
    public AssetManager getAssets() {
        return this.ae == null ? super.getAssets() : this.ae;
    }

    public Resources getResources() {
        return this.af == null ? super.getResources() : this.af;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        as.aa(this.ah, this.ag, ae.aa(ac.by), i, i2, intent);
        super.onActivityResult(i, i2, intent);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (aa.aa(this)) {
            finish();
            return;
        }
        aq.aa();
        View linearLayout = new LinearLayout(this);
        setContentView(linearLayout);
        linearLayout.setBackgroundColor(0);
        this.ad = getIntent().getStringExtra(ac);
        if (this.ad != null) {
            ab(this.ad);
        }
    }

    protected void onDestroy() {
        as.aa(this.ah, this.ag, ae.aa(ac.ce));
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean aa = as.aa(this.ah, this.ag, ae.aa(ac.bx), i, keyEvent);
        return aa ? aa : super.onKeyDown(i, keyEvent);
    }

    protected void onPause() {
        as.aa(this.ah, this.ag, ae.aa(ac.cc));
        super.onPause();
    }

    protected void onRestart() {
        super.onRestart();
        as.aa(this.ah, this.ag, ae.aa(ac.ca));
    }

    protected void onResume() {
        super.onResume();
        as.aa(this.ah, this.ag, ae.aa(ac.cb));
    }

    protected void onStart() {
        super.onStart();
        as.aa(this.ah, this.ag, ae.aa(ac.bz));
    }

    protected void onStop() {
        as.aa(this.ah, this.ag, ae.aa(ac.cd));
        super.onStop();
    }
}
