.class public Lcom/nx/a/er;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    const-class v0, Lcom/nx/a/a;

    invoke-static {p1, v0}, Lcom/nx/a/b;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/nx/a/h;

    move-result-object v0

    check-cast v0, Lcom/nx/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/nx/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Lcom/nx/a/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nx/a/l;->a(Landroid/content/Context;)V

    sget-object v2, Lcom/nx/a/k;->s:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p2}, Lcom/nx/a/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/third/mx/update/Update;->update(Landroid/content/Context;Lcom/third/mx/utils/UpdateCallback;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nx/a/er;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
