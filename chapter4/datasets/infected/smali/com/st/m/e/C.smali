.class public Lcom/st/m/e/C;
.super Lcom/st/m/e/I;


# instance fields
.field private ef:B


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/st/m/e/I;-><init>(ILandroid/content/Context;Landroid/os/Handler;)V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/st/m/e/C;->ef:B

    const-string v0, "yys"

    const-string v1, "ReqCommConfigToService"

    invoke-static {v0, v1}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/st/m/c/ef;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    sget-object v1, Lcom/st/m/da/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/st/m/c/ef;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v5

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    sget-object v8, Lcom/st/m/da/a;->da:Ljava/lang/String;

    invoke-interface {v4, v8, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v4, v8, v2

    if-gtz v4, :cond_0

    sget-object v4, Lcom/st/m/da/a;->da:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object v4, Lcom/st/m/da/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/st/m/c/ef;->da()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/st/m/da/b;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/st/m/c/ef;->da()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/st/m/c/ef;->da()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/st/m/u/n;->da(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    sget-object v4, Lcom/st/m/da/a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/st/m/c/ef;->b()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/st/m/da/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/st/m/c/ef;->a()B

    move-result v4

    if-ne v4, v10, :cond_3

    iget-byte v4, p0, Lcom/st/m/e/C;->ef:B

    if-ne v4, v10, :cond_3

    const-string v4, "ReqConfig"

    const-string v8, "switch is open."

    invoke-static {v4, v8}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/st/m/da/a;->ef:Ljava/lang/String;

    invoke-interface {v7, v4, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/st/m/c/ef;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/st/m/c/ef;->ef()I

    move-result v8

    invoke-direct {p0, v4, v8}, Lcom/st/m/e/C;->a(Ljava/lang/String;I)V

    :goto_0
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xc

    sget v2, Lcom/st/m/da/da;->a:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :cond_2
    const-string v2, "ReqConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "next request time ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/st/m/u/ks;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/st/m/u/l;->a(Landroid/content/Context;)Lcom/st/m/u/l;

    move-result-object v2

    sget-object v3, Lcom/st/m/e/M;->a:Lcom/st/m/e/M;

    invoke-virtual {v3}, Lcom/st/m/e/M;->b()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/st/m/u/l;->a(JI)V

    return-void

    :cond_3
    sget-object v4, Lcom/st/m/da/a;->ef:Ljava/lang/String;

    invoke-interface {v7, v4, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "ReqConfig"

    const-string v8, "switch is closed."

    invoke-static {v4, v8}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "ReqConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "GetCommonConfigResp is null and restart the service after "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/st/m/da/da;->a:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " min"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/st/m/e/C;Lcom/st/m/c/ef;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/st/m/e/C;->a(Lcom/st/m/c/ef;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/st/m/u/l;->a(Landroid/content/Context;)Lcom/st/m/u/l;

    move-result-object v0

    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v1, v1

    sget-object v3, Lcom/st/m/e/M;->b:Lcom/st/m/e/M;

    invoke-virtual {v3}, Lcom/st/m/e/M;->b()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/st/m/u/l;->a(JI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/st/m/u/hd;->a(Landroid/content/Context;)Lcom/st/m/u/hd;

    move-result-object v0

    sget-object v1, Lcom/st/m/da/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/st/m/u/hd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/st/m/e/C;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/st/m/u/hd;->a(Landroid/content/Context;)Lcom/st/m/u/hd;

    move-result-object v0

    sget-object v1, Lcom/st/m/da/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/st/m/u/hd;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/st/m/e/C;->ef:B

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/st/m/e/C;->ef:B

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    move-object v0, v2

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;II)V
    .locals 0

    invoke-virtual {p0}, Lcom/st/m/e/C;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    sget-object v1, Lcom/st/m/da/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/st/m/da/a;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sget-object v3, Lcom/st/m/da/a;->f:Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit16 v3, v3, -0x1388

    sget-object v4, Lcom/st/m/da/a;->f:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/st/m/u/l;->a(Landroid/content/Context;)Lcom/st/m/u/l;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/st/m/u/l;->b(I)V

    iget-object v3, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/st/m/u/l;->a(Landroid/content/Context;)Lcom/st/m/u/l;

    move-result-object v3

    int-to-long v4, v0

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5, v8}, Lcom/st/m/u/l;->a(JI)V

    const-string v3, "ReqConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "System.currentTimeMillis() - lsTime < relativeTime  and send req after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v1

    sub-long v0, v5, v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/st/m/e/C;->b()V

    new-instance v0, Lcom/st/m/c/da;

    invoke-direct {v0}, Lcom/st/m/c/da;-><init>()V

    iget-object v1, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/st/m/u/j;->a(Landroid/content/Context;)Lcom/st/m/c/qr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/st/m/c/da;->a(Lcom/st/m/c/qr;)V

    iget-object v1, p0, Lcom/st/m/e/C;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/st/m/u/SBD;->a(Landroid/content/Context;)Lcom/st/m/u/SBD;

    move-result-object v1

    sget-object v2, Lcom/st/m/da/b;->da:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/st/m/u/SBD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/st/m/c/da;->a(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/st/m/e/C;->ef:B

    invoke-virtual {v0, v1}, Lcom/st/m/c/da;->a(B)V

    const-string v1, "ReqConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "req:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/st/m/c/da;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/st/m/c/hd;->a()Lcom/st/m/c/hd;

    move-result-object v1

    new-instance v2, Lcom/st/m/c/n;

    invoke-direct {v2, p1}, Lcom/st/m/c/n;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/st/m/e/a;

    invoke-direct {v3, p0}, Lcom/st/m/e/a;-><init>(Lcom/st/m/e/C;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/st/m/c/hd;->a(Lcom/st/m/c/n;Ljava/lang/Object;Lcom/st/m/c/o;)V

    goto :goto_0
.end method
