package com.google.ads;

import com.google.ads.AdRequest.ErrorCode;

public interface AdListener {
    void onDismissScreen(Ad ad);

    void onFailedToReceiveAd(Ad ad, ErrorCode errorCode);

    void onLeaveApplication(Ad ad);

    void onPresentScreen(Ad ad);

    void onReceiveAd(Ad ad);
}
