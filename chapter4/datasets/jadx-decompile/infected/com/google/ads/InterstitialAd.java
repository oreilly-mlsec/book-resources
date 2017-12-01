package com.google.ads;

import android.app.Activity;
import com.google.ads.util.a;

public class InterstitialAd implements Ad {
    private d a;

    public InterstitialAd(Activity activity, String adUnitId) {
        this(activity, adUnitId, false);
    }

    public InterstitialAd(Activity activity, String adUnitId, boolean shortTimeout) {
        this.a = new d(activity, this, null, adUnitId, shortTimeout);
    }

    public boolean isReady() {
        return this.a.o();
    }

    public void loadAd(AdRequest adRequest) {
        this.a.a(adRequest);
    }

    public void show() {
        if (isReady()) {
            this.a.y();
            this.a.v();
            AdActivity.launchAdActivity(this.a, new e("interstitial"));
            return;
        }
        a.c("Cannot show interstitial because it is not loaded and ready.");
    }

    public void setAdListener(AdListener adListener) {
        this.a.a(adListener);
    }

    public void stopLoading() {
        this.a.z();
    }
}
