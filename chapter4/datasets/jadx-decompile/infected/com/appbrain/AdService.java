package com.appbrain;

import android.app.Activity;
import android.content.Context;

public interface AdService {
    boolean maybeShowInterstitial(Activity activity);

    boolean maybeShowOfferWall(Activity activity);

    void showDialog(Activity activity, String str, String str2, String str3, Runnable runnable);

    boolean showInterstitial(Activity activity);

    void showOfferWall(Context context);
}
