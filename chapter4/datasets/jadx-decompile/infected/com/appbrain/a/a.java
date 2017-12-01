package com.appbrain.a;

import android.content.Context;
import android.content.Intent;
import com.appbrain.AppBrainActivity;
import com.appbrain.e.f;

public class a {
    public static com.appbrain.a a(AppBrainActivity appBrainActivity) {
        String string = appBrainActivity.getIntent().getExtras().getString("activity");
        return "interstitial".equals(string) ? new c(appBrainActivity) : "offerwall".equals(string) ? new h(appBrainActivity) : new com.appbrain.a();
    }

    static void a(Context context, f fVar) {
        a(context, fVar, b.a());
    }

    static void a(Context context, f fVar, b bVar) {
        Intent intent = new Intent(context, AppBrainActivity.class);
        intent.putExtra("activity", "offerwall");
        intent.putExtra("src", fVar.a());
        if (bVar != null) {
            bVar.b(intent);
        }
        context.startActivity(intent);
    }

    static void a(Context context, boolean z, b bVar) {
        Intent intent = new Intent(context, AppBrainActivity.class);
        intent.putExtra("activity", "interstitial");
        intent.putExtra("maybe", z);
        if (bVar != null) {
            bVar.b(intent);
        }
        context.startActivity(intent);
    }
}
