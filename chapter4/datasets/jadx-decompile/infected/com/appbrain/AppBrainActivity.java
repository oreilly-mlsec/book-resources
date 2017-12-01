package com.appbrain;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import com.appbrain.a.a;

public class AppBrainActivity extends Activity {
    private b a;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = a.a(this);
        this.a.a();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return !this.a.a(i) ? super.onKeyDown(i, keyEvent) : true;
    }

    public void onStop() {
        super.onStop();
        this.a.b();
    }
}
