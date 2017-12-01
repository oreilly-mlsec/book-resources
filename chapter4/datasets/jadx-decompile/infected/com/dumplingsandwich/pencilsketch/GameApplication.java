package com.dumplingsandwich.pencilsketch;

import android.app.Application;
import com.m.m.b;

public class GameApplication extends Application {
    public void onCreate() {
        super.onCreate();
        b.a_ID = "pencilsketchen";
        b.c_ID = "pencilsketchen03";
        b.p_ID = "p1015";
        b.getInstance(this).init();
    }
}
