.class public Lcom/m/s/sa;
.super Lcom/m/s/i;


# instance fields
.field private aa:B


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/m/s/i;-><init>(ILandroid/content/Context;Landroid/os/Handler;)V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/m/s/sa;->aa:B

    return-void
.end method

.method private aa(Lcom/m/ab/ai;)V
    .locals 12

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/m/s/sa;->ac:Landroid/content/Context;

    sget-object v1, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/m/ab/ai;->aa()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v5

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    sget-object v8, Lcom/m/ac/aa;->cc:Ljava/lang/String;

    invoke-interface {v4, v8, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v4, v8, v2

    if-gtz v4, :cond_0

    sget-object v4, Lcom/m/ac/aa;->cc:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/m/ac/aa;->cd:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/m/ab/ai;->ab()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-interface {v7, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-virtual {p1}, Lcom/m/ab/ai;->ac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/m/ac/aa;->bb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/m/ab/ai;->ac()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    sget-object v4, Lcom/m/ac/aa;->ce:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/m/ab/ai;->aa()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/m/ac/aa;->cf:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xc

    sget v2, Lcom/m/ac/aa;->cb:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :cond_2
    const-string v2, "config"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "2 ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/m/u/au;->aa(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m/s/sa;->ac:Landroid/content/Context;

    invoke-static {v2}, Lcom/m/u/av;->aa(Landroid/content/Context;)Lcom/m/u/av;

    move-result-object v2

    sget-object v3, Lcom/m/s/ad;->ac:Lcom/m/s/ad;

    invoke-virtual {v3}, Lcom/m/s/ad;->ab()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/m/u/av;->aa(JI)V

    return-void

    :cond_3
    const-string v0, "config"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "1 "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/m/ac/aa;->cb:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " m"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic aa(Lcom/m/s/sa;Lcom/m/ab/ai;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m/s/sa;->aa(Lcom/m/ab/ai;)V

    return-void
.end method


# virtual methods
.method protected aa()V
    .locals 1

    invoke-super {p0}, Lcom/m/s/i;->aa()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/m/s/sa;->aa(Lcom/m/ab/ai;)V

    return-void
.end method

.method public aa(Landroid/content/Intent;II)V
    .locals 0

    invoke-virtual {p0}, Lcom/m/s/sa;->ab()V

    return-void
.end method

.method public aa(Lcom/m/ac/ac;)V
    .locals 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/m/s/sa;->ac:Landroid/content/Context;

    sget-object v1, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->cf:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sget-object v3, Lcom/m/ac/aa;->ce:Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit16 v3, v3, -0x1388

    sget-object v4, Lcom/m/ac/aa;->ce:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-gez v3, :cond_0

    iget-object v0, p0, Lcom/m/s/sa;->ac:Landroid/content/Context;

    invoke-static {v0}, Lcom/m/u/av;->aa(Landroid/content/Context;)Lcom/m/u/av;

    move-result-object v0

    sget-object v3, Lcom/m/s/ad;->ac:Lcom/m/s/ad;

    invoke-virtual {v3}, Lcom/m/s/ad;->ab()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/m/u/av;->aa(I)V

    iget-object v0, p0, Lcom/m/s/sa;->ac:Landroid/content/Context;

    invoke-static {v0}, Lcom/m/u/av;->aa(Landroid/content/Context;)Lcom/m/u/av;

    move-result-object v0

    int-to-long v5, v4

    add-long/2addr v5, v1

    sget-object v3, Lcom/m/s/ad;->ac:Lcom/m/s/ad;

    invoke-virtual {v3}, Lcom/m/s/ad;->ab()I

    move-result v3

    invoke-virtual {v0, v5, v6, v3}, Lcom/m/u/av;->aa(JI)V

    const-string v0, "config"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "3 "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    sub-long v1, v4, v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/m/ab/ah;

    invoke-direct {v1}, Lcom/m/ab/ah;-><init>()V

    iget-object v2, p0, Lcom/m/s/sa;->ac:Landroid/content/Context;

    invoke-static {v2}, Lcom/m/u/at;->aa(Landroid/content/Context;)Lcom/m/ab/aw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/m/ab/ah;->aa(Lcom/m/ab/aw;)V

    sget-object v2, Lcom/m/ac/aa;->bb:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/m/ab/ah;->aa(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/m/s/sa;->aa:B

    invoke-virtual {v1, v0}, Lcom/m/ab/ah;->aa(B)V

    const-string v0, "config"

    invoke-virtual {v1}, Lcom/m/ab/ah;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/m/ab/an;->aa()Lcom/m/ab/an;

    move-result-object v0

    invoke-virtual {p1}, Lcom/m/ac/ac;->aa()Lcom/m/ab/at;

    move-result-object v2

    new-instance v3, Lcom/m/s/ae;

    invoke-direct {v3, p0}, Lcom/m/s/ae;-><init>(Lcom/m/s/sa;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/m/ab/an;->aa(Lcom/m/ab/at;Ljava/lang/Object;Lcom/m/ab/au;)V

    goto :goto_0
.end method
