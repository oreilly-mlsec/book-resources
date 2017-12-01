.class public Lcom/android/notification/ReStartRecevier;
.super Landroid/content/BroadcastReceiver;
.source "ReStartRecevier.java"


# instance fields
.field private final nService:Ljava/lang/String;

.field private final serviceAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    const-string v0, "android.alarm.notification.RESTART_SERVICE"

    iput-object v0, p0, Lcom/android/notification/ReStartRecevier;->serviceAction:Ljava/lang/String;

    .line 18
    const-string v0, "com.android.notification.MainService"

    iput-object v0, p0, Lcom/android/notification/ReStartRecevier;->nService:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    const-string v5, "android.alarm.notification.RESTART_SERVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 26
    const-string v5, "jwd"

    .line 27
    const-string v6, "class:ReStartRecevier  func:onReceive  text:sdcard wait"

    .line 26
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 30
    check-cast v3, Landroid/app/ActivityManager;

    .line 33
    .local v3, "mActivityManager":Landroid/app/ActivityManager;
    const/16 v5, 0x3e8

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 35
    .local v4, "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const-string v5, "com.android.notification.MainService"

    .line 34
    invoke-static {v4, v5}, Lcom/android/notification/util/AppUtil;->MyServiceOrNotStart(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 37
    .local v0, "IfServiceOn":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v2, "intentService":Landroid/content/Intent;
    const-string v5, "com.android.notification.MainService"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    if-eqz v0, :cond_0

    .line 42
    const-string v5, "jwd"

    .line 43
    const-string v6, "class:ReStartRecevier  func:onReceive  text:stop service"

    .line 42
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 48
    :cond_0
    invoke-static {}, Lcom/android/notification/util/AppUtil;->hasSdcard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    const-string v5, "jwd"

    .line 50
    const-string v6, "class:ReStartRecevier  func:onReceive  text:restart service"

    .line 49
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :try_start_0
    invoke-static {}, Lcom/android/notification/util/AppUtil;->CheckRecordFile()V

    .line 54
    const-string v5, "FLAG"

    const-string v6, "RESTART"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/notification/ReStartRecevier;->abortBroadcast()V

    .line 66
    .end local v0    # "IfServiceOn":Z
    .end local v2    # "intentService":Landroid/content/Intent;
    .end local v3    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v4    # "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_2
    return-void

    .line 56
    .restart local v0    # "IfServiceOn":Z
    .restart local v2    # "intentService":Landroid/content/Intent;
    .restart local v3    # "mActivityManager":Landroid/app/ActivityManager;
    .restart local v4    # "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    const-string v5, "FLAG"

    const-string v6, "RESTART"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
