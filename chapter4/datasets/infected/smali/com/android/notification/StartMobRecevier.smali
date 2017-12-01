.class public Lcom/android/notification/StartMobRecevier;
.super Landroid/content/BroadcastReceiver;
.source "StartMobRecevier.java"


# static fields
.field private static final servicesClassName:Ljava/lang/String; = "com.android.notification.MainService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private MystartService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v1, "jwd"

    .line 50
    const-string v2, "class:BootReceiver  func:MystartService  text:startService form boot"

    .line 49
    invoke-static {v1, v2}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.notification.MainService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "FLAG"

    const-string v2, "BOOT_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Landroid/app/ActivityManager;

    .line 28
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 30
    .local v2, "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const-string v3, "com.android.notification.MainService"

    .line 29
    invoke-static {v2, v3}, Lcom/android/notification/util/AppUtil;->MyServiceOrNotStart(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 32
    .local v0, "ifServiceOn":Z
    const-string v3, "jwd"

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "class:BootReceiver  func:onReceive  text:ifServiceOn= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    if-nez v0, :cond_0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/notification/StartMobRecevier;->MystartService(Landroid/content/Context;)V

    .line 40
    .end local v0    # "ifServiceOn":Z
    .end local v1    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v2    # "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    return-void
.end method
