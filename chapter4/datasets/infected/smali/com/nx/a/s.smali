.class public Lcom/nx/a/s;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/nx/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/nx/a/i;
    .locals 1

    iget-object v0, p0, Lcom/nx/a/s;->a:Lcom/nx/a/i;

    if-nez v0, :cond_0

    const-class v0, Lcom/nx/a/i;

    invoke-static {p0, v0}, Lcom/nx/a/b;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/nx/a/h;

    move-result-object v0

    check-cast v0, Lcom/nx/a/i;

    iput-object v0, p0, Lcom/nx/a/s;->a:Lcom/nx/a/i;

    iget-object v0, p0, Lcom/nx/a/s;->a:Lcom/nx/a/i;

    invoke-virtual {v0, p0}, Lcom/nx/a/i;->a(Landroid/app/Service;)V

    :cond_0
    iget-object v0, p0, Lcom/nx/a/s;->a:Lcom/nx/a/i;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/s;->a()Lcom/nx/a/i;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nx/a/i;->a(Landroid/content/Intent;)Landroid/os/IBinder;
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

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/s;->a()Lcom/nx/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nx/a/i;->a(Landroid/content/res/Configuration;)V
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

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/s;->a()Lcom/nx/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nx/a/i;->b()V
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
    invoke-virtual {p0}, Lcom/nx/a/s;->a()Lcom/nx/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nx/a/i;->d()V
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

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/s;->a()Lcom/nx/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nx/a/i;->c()V
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

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/s;->a()Lcom/nx/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nx/a/i;->c(Landroid/content/Intent;)V
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

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/s;->a()Lcom/nx/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nx/a/i;->a(Landroid/content/Intent;I)V
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

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/s;->a()Lcom/nx/a/i;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/nx/a/i;->a(Landroid/content/Intent;II)I
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

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lcom/nx/a/s;->a()Lcom/nx/a/i;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nx/a/i;->b(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
