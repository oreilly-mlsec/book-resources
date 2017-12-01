.class public Lcom/android/notification/NewNotificationActivity;
.super Landroid/app/Activity;
.source "NewNotificationActivity.java"


# instance fields
.field private viewLayout:Lcom/android/view/ViewLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/notification/NewNotificationActivity;->viewLayout:Lcom/android/view/ViewLayout;

    .line 19
    return-void
.end method


# virtual methods
.method public MyExitDialog()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "home":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/notification/NewNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public moveAd()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 33
    iget-object v0, p0, Lcom/android/notification/NewNotificationActivity;->viewLayout:Lcom/android/view/ViewLayout;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/notification/NewNotificationActivity;->viewLayout:Lcom/android/view/ViewLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/view/ViewLayout;->setVisibility(I)V

    .line 37
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/notification/NewNotificationActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/android/notification/NewNotificationActivity;->onNotificationService()V

    .line 27
    return-void
.end method

.method public onNotificationService()V
    .locals 8

    .prologue
    .line 80
    const-string v4, "com.android.notification.MainService"

    .line 82
    .local v4, "nService":Ljava/lang/String;
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/notification/NewNotificationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    check-cast v2, Landroid/app/ActivityManager;

    .line 84
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 86
    .local v3, "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const-string v5, "com.android.notification.MainService"

    .line 85
    invoke-static {v3, v5}, Lcom/android/notification/util/AppUtil;->MyServiceOrNotStart(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 88
    .local v0, "IfServiceOn":Z
    const-string v5, "jwd"

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class:NewNotificationActivity  func:onNotificationService  text:IfServiceOn = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.android.notification.MainService"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/high16 v5, 0x8000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    const-string v5, "FLAG"

    const-string v6, "APP_START"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/notification/NewNotificationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onViewLayoutHorizontal()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    const/16 v1, 0x21c

    .line 71
    const/16 v2, 0x55

    .line 69
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Lcom/android/view/ViewLayout;

    invoke-virtual {p0}, Lcom/android/notification/NewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/view/ViewLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/notification/NewNotificationActivity;->viewLayout:Lcom/android/view/ViewLayout;

    .line 73
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 74
    iget-object v1, p0, Lcom/android/notification/NewNotificationActivity;->viewLayout:Lcom/android/view/ViewLayout;

    invoke-virtual {p0, v1, v0}, Lcom/android/notification/NewNotificationActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method public onViewLayoutVertical()V
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Lcom/android/view/ViewLayout;

    invoke-virtual {p0}, Lcom/android/notification/NewNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/view/ViewLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/notification/NewNotificationActivity;->viewLayout:Lcom/android/view/ViewLayout;

    .line 64
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    iget-object v1, p0, Lcom/android/notification/NewNotificationActivity;->viewLayout:Lcom/android/view/ViewLayout;

    invoke-virtual {p0, v1, v0}, Lcom/android/notification/NewNotificationActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method

.method public showAd()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/notification/NewNotificationActivity;->viewLayout:Lcom/android/view/ViewLayout;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/notification/NewNotificationActivity;->onViewLayoutHorizontal()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/notification/NewNotificationActivity;->viewLayout:Lcom/android/view/ViewLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/view/ViewLayout;->setVisibility(I)V

    goto :goto_0
.end method
