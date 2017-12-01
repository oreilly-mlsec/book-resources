.class public Lcom/nx/a/ds;
.super Landroid/app/IntentService;


# instance fields
.field private a:Lcom/nx/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ds"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/nx/a/e;
    .locals 1

    iget-object v0, p0, Lcom/nx/a/ds;->a:Lcom/nx/a/e;

    if-nez v0, :cond_0

    const-class v0, Lcom/nx/a/e;

    invoke-static {p0, v0}, Lcom/nx/a/b;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/nx/a/h;

    move-result-object v0

    check-cast v0, Lcom/nx/a/e;

    iput-object v0, p0, Lcom/nx/a/ds;->a:Lcom/nx/a/e;

    iget-object v0, p0, Lcom/nx/a/ds;->a:Lcom/nx/a/e;

    invoke-virtual {v0, p0}, Lcom/nx/a/e;->a(Landroid/app/Service;)V

    :cond_0
    iget-object v0, p0, Lcom/nx/a/ds;->a:Lcom/nx/a/e;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-super {p0, p1}, Landroid/app/IntentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nx/a/e;->a(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/IntentService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nx/a/e;->a(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nx/a/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nx/a/e;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nx/a/e;->d(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onLowMemory()V

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nx/a/e;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/IntentService;->onRebind(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nx/a/e;->c(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nx/a/e;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/nx/a/e;->a(Landroid/content/Intent;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/IntentService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nx/a/e;->b(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setIntentRedelivery(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/ds;->a()Lcom/nx/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nx/a/e;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
