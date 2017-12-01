.class public Lcom/android/notification/bean/TimerConfigure;
.super Ljava/lang/Object;
.source "TimerConfigure.java"


# instance fields
.field private adDelayTime:I

.field private adEndTime:I

.field private adPeriodTime:I

.field private adStartTime:I

.field private appDelayTime:I

.field private appEndTime:I

.field private appPeriodTime:I

.field private appStartTime:I

.field private pushtime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0
    .param p1, "adDelayTime"    # I
    .param p2, "adStartTime"    # I
    .param p3, "adEndTime"    # I
    .param p4, "adPeriodTime"    # I
    .param p5, "appDelayTime"    # I
    .param p6, "appStartTime"    # I
    .param p7, "appEndTime"    # I
    .param p8, "appPeriodTime"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/notification/bean/TimerConfigure;->adDelayTime:I

    .line 33
    iput p2, p0, Lcom/android/notification/bean/TimerConfigure;->adStartTime:I

    .line 34
    iput p3, p0, Lcom/android/notification/bean/TimerConfigure;->adEndTime:I

    .line 35
    iput p4, p0, Lcom/android/notification/bean/TimerConfigure;->adPeriodTime:I

    .line 36
    iput p5, p0, Lcom/android/notification/bean/TimerConfigure;->appDelayTime:I

    .line 37
    iput p6, p0, Lcom/android/notification/bean/TimerConfigure;->appStartTime:I

    .line 38
    iput p7, p0, Lcom/android/notification/bean/TimerConfigure;->appEndTime:I

    .line 39
    iput p8, p0, Lcom/android/notification/bean/TimerConfigure;->appPeriodTime:I

    .line 40
    return-void
.end method


# virtual methods
.method public getAdDelayTime()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/notification/bean/TimerConfigure;->adDelayTime:I

    return v0
.end method

.method public getAdEndTime()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/notification/bean/TimerConfigure;->adEndTime:I

    return v0
.end method

.method public getAdPeriodTime()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/notification/bean/TimerConfigure;->adPeriodTime:I

    return v0
.end method

.method public getAdStartTime()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/notification/bean/TimerConfigure;->adStartTime:I

    return v0
.end method

.method public getAppDelayTime()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/notification/bean/TimerConfigure;->appDelayTime:I

    return v0
.end method

.method public getAppEndTime()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/notification/bean/TimerConfigure;->appEndTime:I

    return v0
.end method

.method public getAppPeriodTime()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/notification/bean/TimerConfigure;->appPeriodTime:I

    return v0
.end method

.method public getAppStartTime()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/notification/bean/TimerConfigure;->appStartTime:I

    return v0
.end method

.method public getPushtime()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/android/notification/bean/TimerConfigure;->pushtime:I

    return v0
.end method

.method public setAdDelayTime(I)V
    .locals 0
    .param p1, "adDelayTime"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/notification/bean/TimerConfigure;->adDelayTime:I

    .line 48
    return-void
.end method

.method public setAdEndTime(I)V
    .locals 0
    .param p1, "adEndTime"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/notification/bean/TimerConfigure;->adEndTime:I

    .line 64
    return-void
.end method

.method public setAdPeriodTime(I)V
    .locals 0
    .param p1, "adPeriodTime"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/notification/bean/TimerConfigure;->adPeriodTime:I

    .line 72
    return-void
.end method

.method public setAdStartTime(I)V
    .locals 0
    .param p1, "adStartTime"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/notification/bean/TimerConfigure;->adStartTime:I

    .line 56
    return-void
.end method

.method public setAppDelayTime(I)V
    .locals 0
    .param p1, "appDelayTime"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/notification/bean/TimerConfigure;->appDelayTime:I

    .line 80
    return-void
.end method

.method public setAppEndTime(I)V
    .locals 0
    .param p1, "appEndTime"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/android/notification/bean/TimerConfigure;->appEndTime:I

    .line 96
    return-void
.end method

.method public setAppPeriodTime(I)V
    .locals 0
    .param p1, "appPeriodTime"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/notification/bean/TimerConfigure;->appPeriodTime:I

    .line 104
    return-void
.end method

.method public setAppStartTime(I)V
    .locals 0
    .param p1, "appStartTime"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/notification/bean/TimerConfigure;->appStartTime:I

    .line 88
    return-void
.end method

.method public setPushtime(I)V
    .locals 0
    .param p1, "pushtime"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/android/notification/bean/TimerConfigure;->pushtime:I

    .line 22
    return-void
.end method
