.class public abstract Lcom/m/s/i;
.super Ljava/lang/Object;


# instance fields
.field protected ac:Landroid/content/Context;

.field protected ad:I

.field protected ae:Landroid/os/Handler;

.field protected af:Z

.field protected ag:Lcom/m/u/am$aa;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m/s/i;->af:Z

    new-instance v0, Lcom/m/s/ac;

    invoke-direct {v0, p0}, Lcom/m/s/ac;-><init>(Lcom/m/s/i;)V

    iput-object v0, p0, Lcom/m/s/i;->ag:Lcom/m/u/am$aa;

    iput-object p2, p0, Lcom/m/s/i;->ac:Landroid/content/Context;

    iput p1, p0, Lcom/m/s/i;->ad:I

    iput-object p3, p0, Lcom/m/s/i;->ae:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected aa()V
    .locals 3

    const/16 v0, 0x2710

    sget-object v1, Lcom/m/ac/aa;->ca:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract aa(Landroid/content/Intent;II)V
.end method

.method public abstract aa(Lcom/m/ac/ac;)V
.end method

.method protected ab()V
    .locals 7

    iget-object v0, p0, Lcom/m/s/i;->ac:Landroid/content/Context;

    sget-object v1, Lcom/m/ac/aa;->aq:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->ai:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sget-object v3, Lcom/m/ac/aa;->au:Ljava/lang/String;

    const-wide/32 v4, 0x5265c00

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    sget-object v1, Lcom/m/ac/aa;->aj:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m/ac/aa;->ak:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/m/ac/aa;->al:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/m/s/i;->ac:Landroid/content/Context;

    invoke-static {v0}, Lcom/m/u/am;->aa(Landroid/content/Context;)Lcom/m/u/am;

    move-result-object v0

    iget-object v1, p0, Lcom/m/s/i;->ag:Lcom/m/u/am$aa;

    invoke-virtual {v0, v1}, Lcom/m/u/am;->aa(Lcom/m/u/am$aa;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/m/ac/ac;->ad()Lcom/m/ac/ac;

    move-result-object v3

    new-instance v4, Lcom/m/ab/at;

    invoke-direct {v4, v1}, Lcom/m/ab/at;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/m/ac/ac;->aa(Lcom/m/ab/at;)V

    new-instance v1, Lcom/m/ab/at;

    invoke-direct {v1, v2}, Lcom/m/ab/at;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/m/ac/ac;->ab(Lcom/m/ab/at;)V

    new-instance v1, Lcom/m/ab/at;

    invoke-direct {v1, v0}, Lcom/m/ab/at;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/m/ac/ac;->ac(Lcom/m/ab/at;)V

    invoke-virtual {p0, v3}, Lcom/m/s/i;->aa(Lcom/m/ac/ac;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/m/s/i;->ac:Landroid/content/Context;

    invoke-static {v0}, Lcom/m/u/am;->aa(Landroid/content/Context;)Lcom/m/u/am;

    move-result-object v0

    iget-object v1, p0, Lcom/m/s/i;->ag:Lcom/m/u/am$aa;

    invoke-virtual {v0, v1}, Lcom/m/u/am;->aa(Lcom/m/u/am$aa;)V

    goto :goto_0
.end method

.method public ac()V
    .locals 2

    iget-boolean v0, p0, Lcom/m/s/i;->af:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/m/s/i;->ad:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/m/s/i;->ae:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
