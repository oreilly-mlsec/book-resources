package com.google.ads;

public interface Ad {
    boolean isReady();

    void loadAd(AdRequest adRequest);

    void setAdListener(AdListener adListener);

    void stopLoading();
}
