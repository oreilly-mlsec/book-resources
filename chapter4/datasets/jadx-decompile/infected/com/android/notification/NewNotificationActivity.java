package com.android.notification;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout.LayoutParams;
import cn.dump.pencil.R;
import com.android.notification.configure.DownApkXmlKey;
import com.android.notification.configure.IntentFlag;
import com.android.notification.util.AppUtil;
import com.android.notification.util.Tool;
import com.android.view.ViewLayout;

public class NewNotificationActivity extends Activity {
    private ViewLayout viewLayout = null;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.app_notification);
        onNotificationService();
    }

    public void moveAd() {
        System.gc();
        if (this.viewLayout != null) {
            this.viewLayout.setVisibility(4);
        }
    }

    public void showAd() {
        if (this.viewLayout == null) {
            onViewLayoutHorizontal();
        } else {
            this.viewLayout.setVisibility(0);
        }
    }

    public void MyExitDialog() {
        Intent home = new Intent("android.intent.action.MAIN");
        home.setFlags(67108864);
        home.addCategory("android.intent.category.HOME");
        startActivity(home);
    }

    public void onViewLayoutVertical() {
        LayoutParams params = new LayoutParams(-2, -2);
        this.viewLayout = new ViewLayout(getApplicationContext());
        params.gravity = 1;
        addContentView(this.viewLayout, params);
    }

    public void onViewLayoutHorizontal() {
        LayoutParams params = new LayoutParams(540, 85);
        this.viewLayout = new ViewLayout(getApplicationContext());
        params.gravity = 1;
        addContentView(this.viewLayout, params);
    }

    public void onNotificationService() {
        String nService = "com.android.notification.MainService";
        boolean IfServiceOn = AppUtil.MyServiceOrNotStart(((ActivityManager) getSystemService("activity")).getRunningServices(1000), "com.android.notification.MainService");
        Tool.JWDlog(DownApkXmlKey.ROOT, "class:NewNotificationActivity  func:onNotificationService  text:IfServiceOn = " + IfServiceOn);
        if (!IfServiceOn) {
            Intent intent = new Intent();
            intent.setAction("com.android.notification.MainService");
            intent.addFlags(134217728);
            intent.putExtra(IntentFlag.FLAG, IntentFlag.APP_START);
            startService(intent);
        }
    }
}
