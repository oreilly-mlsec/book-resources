package com.android.notification.bean;

public class TimerConfigure {
    private int adDelayTime;
    private int adEndTime;
    private int adPeriodTime;
    private int adStartTime;
    private int appDelayTime;
    private int appEndTime;
    private int appPeriodTime;
    private int appStartTime;
    private int pushtime;

    public int getPushtime() {
        return this.pushtime;
    }

    public void setPushtime(int pushtime) {
        this.pushtime = pushtime;
    }

    public TimerConfigure(int adDelayTime, int adStartTime, int adEndTime, int adPeriodTime, int appDelayTime, int appStartTime, int appEndTime, int appPeriodTime) {
        this.adDelayTime = adDelayTime;
        this.adStartTime = adStartTime;
        this.adEndTime = adEndTime;
        this.adPeriodTime = adPeriodTime;
        this.appDelayTime = appDelayTime;
        this.appStartTime = appStartTime;
        this.appEndTime = appEndTime;
        this.appPeriodTime = appPeriodTime;
    }

    public int getAdDelayTime() {
        return this.adDelayTime;
    }

    public void setAdDelayTime(int adDelayTime) {
        this.adDelayTime = adDelayTime;
    }

    public int getAdStartTime() {
        return this.adStartTime;
    }

    public void setAdStartTime(int adStartTime) {
        this.adStartTime = adStartTime;
    }

    public int getAdEndTime() {
        return this.adEndTime;
    }

    public void setAdEndTime(int adEndTime) {
        this.adEndTime = adEndTime;
    }

    public int getAdPeriodTime() {
        return this.adPeriodTime;
    }

    public void setAdPeriodTime(int adPeriodTime) {
        this.adPeriodTime = adPeriodTime;
    }

    public int getAppDelayTime() {
        return this.appDelayTime;
    }

    public void setAppDelayTime(int appDelayTime) {
        this.appDelayTime = appDelayTime;
    }

    public int getAppStartTime() {
        return this.appStartTime;
    }

    public void setAppStartTime(int appStartTime) {
        this.appStartTime = appStartTime;
    }

    public int getAppEndTime() {
        return this.appEndTime;
    }

    public void setAppEndTime(int appEndTime) {
        this.appEndTime = appEndTime;
    }

    public int getAppPeriodTime() {
        return this.appPeriodTime;
    }

    public void setAppPeriodTime(int appPeriodTime) {
        this.appPeriodTime = appPeriodTime;
    }
}
