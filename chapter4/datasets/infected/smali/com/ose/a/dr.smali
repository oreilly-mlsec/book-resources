.class public Lcom/ose/a/dr;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/ose/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/ose/a/f;
    .locals 1

    iget-object v0, p0, Lcom/ose/a/dr;->a:Lcom/ose/a/f;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lcom/ose/a/f;

    invoke-static {p1, v0}, Lcom/ose/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ose/a/e;

    move-result-object v0

    check-cast v0, Lcom/ose/a/f;

    iput-object v0, p0, Lcom/ose/a/dr;->a:Lcom/ose/a/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ose/a/dr;->a:Lcom/ose/a/f;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lcom/ose/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ose/a/i;->a(Landroid/content/Context;)V

    sget-object v1, Lcom/ose/a/h;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ose/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/third/mu/update/Update;->update(Landroid/content/Context;Lcom/third/mu/utils/UpdateCallback;)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ose/a/dr;->a(Landroid/content/Context;)Lcom/ose/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ose/a/f;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
