.class public final Lcom/appbrain/a/p;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/appbrain/a/p;->a:Ljava/lang/Integer;

    return-void
.end method

.method private static a(Lcom/appbrain/a/v;)I
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/appbrain/a/p;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/appbrain/a/v;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appbrain/a/v;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0, v2}, Lcmn/a;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/p;->a:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/appbrain/a/p;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/p;->a:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/p;->a:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static a(Lcom/appbrain/c/h;Ljava/lang/String;)Lcom/appbrain/b/d;
    .locals 3

    invoke-virtual {p0}, Lcom/appbrain/c/h;->J()Lcom/appbrain/c/p;

    move-result-object v1

    invoke-static {}, Lcom/appbrain/a/p;->a()Lcom/appbrain/e/i;

    move-result-object v2

    instance-of v0, v1, Lcom/appbrain/e/w;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/appbrain/e/w;

    invoke-virtual {v0, v2}, Lcom/appbrain/e/w;->a(Lcom/appbrain/e/i;)Lcom/appbrain/e/w;

    :goto_0
    invoke-static {}, Lcom/appbrain/b/c;->H()Lcom/appbrain/b/d;

    move-result-object v0

    invoke-interface {v1}, Lcom/appbrain/c/p;->g()Lcom/appbrain/c/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/appbrain/c/o;->K()[B

    move-result-object v1

    invoke-static {v1}, Lcom/appbrain/c/c;->a([B)Lcom/appbrain/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/b/d;->a(Lcom/appbrain/c/c;)Lcom/appbrain/b/d;

    invoke-virtual {v0, p1}, Lcom/appbrain/b/d;->a(Ljava/lang/String;)Lcom/appbrain/b/d;

    return-object v0

    :cond_0
    instance-of v0, v1, Lcom/appbrain/e/s;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/appbrain/e/s;

    invoke-virtual {v0, v2}, Lcom/appbrain/e/s;->a(Lcom/appbrain/e/i;)Lcom/appbrain/e/s;

    goto :goto_0

    :cond_1
    instance-of v0, v1, Lcom/appbrain/e/q;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/appbrain/e/q;

    invoke-virtual {v0, v2}, Lcom/appbrain/e/q;->a(Lcom/appbrain/e/i;)Lcom/appbrain/e/q;

    goto :goto_0

    :cond_2
    instance-of v0, v1, Lcom/appbrain/e/e;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/appbrain/e/e;

    invoke-virtual {v0, v2}, Lcom/appbrain/e/e;->a(Lcom/appbrain/e/i;)Lcom/appbrain/e/e;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown builder type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a()Lcom/appbrain/e/i;
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcmn/e;->a(Landroid/content/Context;)Lcmn/e;

    move-result-object v1

    invoke-static {}, Lcom/appbrain/e/h;->av()Lcom/appbrain/e/i;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appbrain/e/i;->a(J)Lcom/appbrain/e/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appbrain/e/i;->b(J)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->a(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->b(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->c(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->d(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->e(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->f(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->g(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->a(I)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->b(I)Lcom/appbrain/e/i;

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->h(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->i(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->j(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->k(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->n(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->l(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v1}, Lcmn/e;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->m(Ljava/lang/String;)Lcom/appbrain/e/i;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->c(I)Lcom/appbrain/e/i;

    invoke-virtual {v0}, Lcom/appbrain/a/v;->h()Landroid/content/Context;

    invoke-static {}, Lcom/appbrain/a/ac;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->o(Ljava/lang/String;)Lcom/appbrain/e/i;

    invoke-virtual {v0}, Lcom/appbrain/a/v;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/appbrain/ReferrerReceiver;->retrieve(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Lcom/appbrain/e/i;->p(Ljava/lang/String;)Lcom/appbrain/e/i;

    :cond_0
    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pingcount"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/appbrain/e/i;->d(I)Lcom/appbrain/e/i;

    const-string v4, "init_called"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/appbrain/e/i;->e(I)Lcom/appbrain/e/i;

    invoke-static {v0}, Lcom/appbrain/a/p;->a(Lcom/appbrain/a/v;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/appbrain/e/i;->f(I)Lcom/appbrain/e/i;

    iget v4, v1, Lcmn/e;->b:I

    invoke-virtual {v2, v4}, Lcom/appbrain/e/i;->g(I)Lcom/appbrain/e/i;

    iget v4, v1, Lcmn/e;->c:I

    invoke-virtual {v2, v4}, Lcom/appbrain/e/i;->h(I)Lcom/appbrain/e/i;

    iget v4, v1, Lcmn/e;->d:I

    invoke-virtual {v2, v4}, Lcom/appbrain/e/i;->i(I)Lcom/appbrain/e/i;

    :try_start_0
    invoke-virtual {v0}, Lcom/appbrain/a/v;->h()Landroid/content/Context;

    move-result-object v0

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/appbrain/e/i;->j(I)Lcom/appbrain/e/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "ow_imp"

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/appbrain/e/i;->k(I)Lcom/appbrain/e/i;

    const-string v0, "ow_click"

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/appbrain/e/i;->l(I)Lcom/appbrain/e/i;

    const-string v0, "ow_inst"

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/appbrain/e/i;->m(I)Lcom/appbrain/e/i;

    iget-object v0, v1, Lcmn/e;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/appbrain/e/i;->q(Ljava/lang/String;)Lcom/appbrain/e/i;

    iget v0, v1, Lcmn/e;->a:I

    invoke-virtual {v2, v0}, Lcom/appbrain/e/i;->n(I)Lcom/appbrain/e/i;

    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v2, v0}, Lcom/appbrain/e/i;->j(I)Lcom/appbrain/e/i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2, v5}, Lcom/appbrain/e/i;->j(I)Lcom/appbrain/e/i;

    goto :goto_0
.end method
