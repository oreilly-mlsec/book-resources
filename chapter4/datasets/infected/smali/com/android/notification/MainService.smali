.class public Lcom/android/notification/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# static fields
.field private static final servicesClassName:Ljava/lang/String; = "com.android.notification.MainService"


# instance fields
.field private final adAction:Ljava/lang/String;

.field private adAlarm:Landroid/app/AlarmManager;

.field private adAlarmIntent:Landroid/app/PendingIntent;

.field private final serviceAction:Ljava/lang/String;

.field private serviceAlarm:Landroid/app/AlarmManager;

.field private serviceAlarmIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    const-string v0, "android.alarm.notification.AD_pencilsketch"

    iput-object v0, p0, Lcom/android/notification/MainService;->adAction:Ljava/lang/String;

    .line 19
    const-string v0, "android.alarm.notification.RESTART_SERVICE"

    iput-object v0, p0, Lcom/android/notification/MainService;->serviceAction:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private onPreRegistrationUser(Ljava/lang/String;)V
    .locals 4
    .param p1, "webstatus"    # Ljava/lang/String;

    .prologue
    .line 127
    :try_start_0
    const-string v2, "NONET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-static {}, Lcom/android/notification/util/AppUtil;->RegistrationUser()V

    .line 131
    :cond_0
    invoke-static {}, Lcom/android/notification/util/AppUtil;->getTimerconfig()Lcom/android/notification/bean/TimerConfigure;

    move-result-object v1

    .line 132
    .local v1, "timerconfig":Lcom/android/notification/bean/TimerConfigure;
    invoke-virtual {v1}, Lcom/android/notification/bean/TimerConfigure;->getAdPeriodTime()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/notification/MainService;->onStartAdAlarm(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 134
    .end local v1    # "timerconfig":Lcom/android/notification/bean/TimerConfigure;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const-string v2, "jwd"

    .line 139
    const-string v3, "class:MainService  func:onPreRegistrationUser  text:message:"

    .line 137
    invoke-static {v2, v3, v0}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    invoke-static {}, Lcom/android/notification/util/AppUtil;->getTimerconfig()Lcom/android/notification/bean/TimerConfigure;

    move-result-object v1

    .line 143
    .restart local v1    # "timerconfig":Lcom/android/notification/bean/TimerConfigure;
    invoke-virtual {v1}, Lcom/android/notification/bean/TimerConfigure;->getAdPeriodTime()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/notification/MainService;->onStartAdAlarm(I)V

    goto :goto_0
.end method

.method private onPreUpDateTimerConfigfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "webstatus"    # Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    const-string v1, "NONET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-static {}, Lcom/android/notification/util/AppUtil;->UpDateTimerConfigfile()V

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/notification/MainService;->onPreRegistrationUser(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    const-string v1, "jwd"

    .line 162
    const-string v2, "class:MainService  func:onPreUpDateTimerConfigfile  text:message:"

    .line 160
    invoke-static {v1, v2, v0}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/android/notification/MainService;->onPreRegistrationUser(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onReStartServiceAlarm(I)V
    .locals 8
    .param p1, "interval"    # I

    .prologue
    const/4 v7, 0x0

    .line 198
    const-string v2, "jwd"

    .line 199
    const-string v3, "class:MainService func:onReStartServiceAlarm  text:onReStartServiceAlarm"

    .line 198
    invoke-static {v2, v3}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/notification/MainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 202
    .local v1, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 201
    iput-object v2, p0, Lcom/android/notification/MainService;->serviceAlarm:Landroid/app/AlarmManager;

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.alarm.notification.RESTART_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "actionIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    .line 204
    invoke-static {v1, v7, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/notification/MainService;->serviceAlarmIntent:Landroid/app/PendingIntent;

    .line 207
    iget-object v2, p0, Lcom/android/notification/MainService;->serviceAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 208
    int-to-long v5, p1

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/notification/MainService;->serviceAlarmIntent:Landroid/app/PendingIntent;

    .line 207
    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 209
    return-void
.end method

.method private onStartAdAlarm(I)V
    .locals 9
    .param p1, "interval"    # I

    .prologue
    const/4 v1, 0x0

    .line 177
    const-string v0, "jwd"

    .line 178
    const-string v2, "class:MainService  func:onStartAdAlarm  text:onStartAdAlarm"

    .line 177
    invoke-static {v0, v2}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/notification/MainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 181
    .local v8, "context":Landroid/content/Context;
    const-string v0, "alarm"

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 180
    iput-object v0, p0, Lcom/android/notification/MainService;->adAlarm:Landroid/app/AlarmManager;

    .line 182
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.alarm.notification.AD_pencilsketch"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v7, "actionIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    .line 183
    invoke-static {v8, v1, v7, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/notification/MainService;->adAlarmIntent:Landroid/app/PendingIntent;

    .line 186
    iget-object v0, p0, Lcom/android/notification/MainService;->adAlarm:Landroid/app/AlarmManager;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    int-to-long v4, p1

    iget-object v6, p0, Lcom/android/notification/MainService;->adAlarmIntent:Landroid/app/PendingIntent;

    .line 186
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    const-string v0, "jwd"

    const-string v1, "class:MainService  func:onBind  text:onBind"

    invoke-static {v0, v1}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    const-string v0, "jwd"

    const-string v1, "class:MainService  func:onCreate  text:onCreate"

    invoke-static {v0, v1}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 109
    const-string v0, "jwd"

    const-string v1, "class:MainService  func:onDestroy  text:onDestroy"

    invoke-static {v0, v1}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/notification/MainService;->adAlarm:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/notification/MainService;->adAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "jwd"

    .line 113
    const-string v1, "class:MainService  func:onDestroy  text:stop push alarm"

    .line 112
    invoke-static {v0, v1}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/notification/MainService;->adAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/notification/MainService;->adAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/notification/MainService;->serviceAlarm:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/notification/MainService;->serviceAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "jwd"

    .line 119
    const-string v1, "class:MainService  func:onDestroy  text:stop reStartService alarm"

    .line 118
    invoke-static {v0, v1}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/notification/MainService;->serviceAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/notification/MainService;->serviceAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 122
    :cond_1
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startid"    # I

    .prologue
    .line 44
    const-string v4, "jwd"

    const-string v5, "class:MainService  func:onStart  text:onStart"

    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p1, :cond_7

    .line 47
    const-string v4, "FLAG"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "flag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 50
    const-string v4, "jwd"

    .line 51
    const-string v5, "class:MainService  func:onStart  text:stop service as intent flag is null"

    .line 50
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v1, "intentService":Landroid/content/Intent;
    const-string v4, "com.android.notification.MainService"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/notification/MainService;->stopService(Landroid/content/Intent;)Z

    .line 103
    .end local v0    # "flag":Ljava/lang/String;
    .end local v1    # "intentService":Landroid/content/Intent;
    :goto_0
    return-void

    .line 56
    .restart local v0    # "flag":Ljava/lang/String;
    :cond_0
    const-string v4, "BOOT_START"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    const-string v4, "jwd"

    .line 58
    const-string v5, "class:MainService  func:onStart  text:wait 5 mins to start service"

    .line 57
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const v4, 0x493e0

    invoke-direct {p0, v4}, Lcom/android/notification/MainService;->onReStartServiceAlarm(I)V

    goto :goto_0

    .line 60
    :cond_1
    const-string v4, "APP_START"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    const-string v4, "jwd"

    .line 62
    const-string v5, "class:MainService  func:onStart  text:wait 1 mins to start service"

    .line 61
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const v4, 0xea60

    invoke-direct {p0, v4}, Lcom/android/notification/MainService;->onReStartServiceAlarm(I)V

    goto :goto_0

    .line 64
    :cond_2
    const-string v4, "RESTART"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 65
    const-string v4, "TIMER_RESTART"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 67
    :cond_3
    const-string v4, "jwd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "class:MainService  func:onStart  text:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/notification/MainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/notification/util/AppUtil;->Checkconfigfile(Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/notification/MainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 73
    invoke-static {v4, p1}, Lcom/android/notification/util/AppUtil;->getWebStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "webstatus":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 77
    const-string v4, "NONET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 78
    :cond_4
    invoke-static {}, Lcom/android/notification/util/AppUtil;->getTimerconfig()Lcom/android/notification/bean/TimerConfigure;

    move-result-object v2

    .line 79
    .local v2, "timerconfig":Lcom/android/notification/bean/TimerConfigure;
    invoke-virtual {v2}, Lcom/android/notification/bean/TimerConfigure;->getAdPeriodTime()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    invoke-direct {p0, v4}, Lcom/android/notification/MainService;->onStartAdAlarm(I)V

    goto :goto_0

    .line 84
    .end local v2    # "timerconfig":Lcom/android/notification/bean/TimerConfigure;
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/notification/MainService;->onPreUpDateTimerConfigfile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    .end local v3    # "webstatus":Ljava/lang/String;
    :cond_6
    const-string v4, "jwd"

    .line 88
    const-string v5, "class:MainService  func:onStart  text:stop service as intent flag error"

    .line 87
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    .restart local v1    # "intentService":Landroid/content/Intent;
    const-string v4, "com.android.notification.MainService"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/notification/MainService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 96
    .end local v0    # "flag":Ljava/lang/String;
    .end local v1    # "intentService":Landroid/content/Intent;
    :cond_7
    const-string v4, "jwd"

    .line 97
    const-string v5, "class:MainService  func:onStart  text:stop service as intent is null"

    .line 96
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 100
    .restart local v1    # "intentService":Landroid/content/Intent;
    const-string v4, "com.android.notification.MainService"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/notification/MainService;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method
