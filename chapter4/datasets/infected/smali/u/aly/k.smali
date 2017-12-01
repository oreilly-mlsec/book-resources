.class public final Lu/aly/k;
.super Ljava/lang/Object;
.source "CacheImpl.java"

# interfaces
.implements Lu/aly/p;
.implements Lu/aly/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/k$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private c:Lu/aly/s;

.field private d:Lcom/umeng/analytics/h;

.field private e:Lu/aly/aa;

.field private f:Lu/aly/al;

.field private g:Lu/aly/ak;

.field private h:Lu/aly/am;

.field private i:Lu/aly/k$a;

.field private j:Lu/aly/f$a;

.field private k:I

.field private l:J

.field private m:I

.field private n:I

.field private o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lu/aly/k;->a:J

    .line 41
    const/16 v0, 0x1388

    iput v0, p0, Lu/aly/k;->b:I

    .line 42
    iput-object v2, p0, Lu/aly/k;->c:Lu/aly/s;

    .line 43
    iput-object v2, p0, Lu/aly/k;->d:Lcom/umeng/analytics/h;

    .line 44
    iput-object v2, p0, Lu/aly/k;->e:Lu/aly/aa;

    .line 45
    iput-object v2, p0, Lu/aly/k;->f:Lu/aly/al;

    .line 46
    iput-object v2, p0, Lu/aly/k;->g:Lu/aly/ak;

    .line 47
    iput-object v2, p0, Lu/aly/k;->h:Lu/aly/am;

    .line 48
    iput-object v2, p0, Lu/aly/k;->i:Lu/aly/k$a;

    .line 49
    iput-object v2, p0, Lu/aly/k;->j:Lu/aly/f$a;

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/k;->k:I

    .line 53
    iput-wide v4, p0, Lu/aly/k;->l:J

    .line 54
    iput v3, p0, Lu/aly/k;->m:I

    .line 55
    iput v3, p0, Lu/aly/k;->n:I

    .line 60
    iput-object p1, p0, Lu/aly/k;->o:Landroid/content/Context;

    .line 62
    new-instance v0, Lu/aly/s;

    invoke-direct {v0, p1}, Lu/aly/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/k;->c:Lu/aly/s;

    .line 63
    new-instance v0, Lu/aly/aa;

    invoke-direct {v0, p1}, Lu/aly/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/k;->e:Lu/aly/aa;

    .line 65
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/k;->d:Lcom/umeng/analytics/h;

    .line 66
    invoke-static {p1}, Lu/aly/f;->a(Landroid/content/Context;)Lu/aly/f;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/f;->b()Lu/aly/f$a;

    move-result-object v0

    iput-object v0, p0, Lu/aly/k;->j:Lu/aly/f$a;

    .line 68
    new-instance v0, Lu/aly/k$a;

    invoke-direct {v0, p0}, Lu/aly/k$a;-><init>(Lu/aly/k;)V

    iput-object v0, p0, Lu/aly/k;->i:Lu/aly/k$a;

    .line 70
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ak;->a(Landroid/content/Context;)Lu/aly/ak;

    move-result-object v0

    iput-object v0, p0, Lu/aly/k;->g:Lu/aly/ak;

    .line 71
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/al;->a(Landroid/content/Context;)Lu/aly/al;

    move-result-object v0

    iput-object v0, p0, Lu/aly/k;->f:Lu/aly/al;

    .line 72
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    iget-object v1, p0, Lu/aly/k;->e:Lu/aly/aa;

    invoke-static {v0, v1}, Lu/aly/am;->a(Landroid/content/Context;Lu/aly/aa;)Lu/aly/am;

    move-result-object v0

    iput-object v0, p0, Lu/aly/k;->h:Lu/aly/am;

    .line 75
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    const-string v1, "thtstart"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lu/aly/k;->l:J

    .line 77
    const-string v1, "gkvc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/k;->m:I

    .line 78
    const-string v1, "ekvc"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/k;->n:I

    .line 79
    return-void
.end method

.method private a([B)Lu/aly/bp;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 241
    if-nez p1, :cond_0

    .line 253
    :goto_0
    return-object v0

    .line 246
    :cond_0
    :try_start_0
    new-instance v1, Lu/aly/bp;

    invoke-direct {v1}, Lu/aly/bp;-><init>()V

    .line 247
    new-instance v2, Lu/aly/cm;

    invoke-direct {v2}, Lu/aly/cm;-><init>()V

    invoke-virtual {v2, v1, p1}, Lu/aly/cm;->a(Lu/aly/cj;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 248
    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lu/aly/k;)Lu/aly/f$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/k;->j:Lu/aly/f$a;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/k;->e:Lu/aly/aa;

    invoke-virtual {v2}, Lu/aly/aa;->o()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 152
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lu/aly/k;->a([I)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/k;->a(Lu/aly/bp;)V

    .line 153
    new-instance v0, Lu/aly/k$1;

    invoke-direct {v0, p0}, Lu/aly/k$1;-><init>(Lu/aly/k;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;J)V

    .line 161
    return-void
.end method

.method private a(IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lu/aly/be;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 388
    if-lez p1, :cond_1

    .line 389
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 390
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->s()Ljava/util/List;

    move-result-object v3

    .line 391
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 392
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, p1

    .line 393
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, v1, :cond_1

    .line 394
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 393
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 398
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 399
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 389
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 404
    :cond_1
    if-lez p2, :cond_3

    .line 405
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_3

    .line 406
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->n()Ljava/util/List;

    move-result-object v2

    .line 407
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_2

    .line 408
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, p2

    .line 409
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lt v0, v1, :cond_3

    .line 410
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 409
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 414
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 415
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 405
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 419
    :cond_3
    return-void
.end method

.method private a(Lu/aly/bp;)V
    .locals 4

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/d;->a(Landroid/content/Context;)Lu/aly/d;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lu/aly/d;->a()V

    .line 168
    invoke-virtual {v1}, Lu/aly/d;->b()Lu/aly/bb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/bb;)Lu/aly/bp;

    .line 169
    invoke-direct {p0, p1}, Lu/aly/k;->d(Lu/aly/bp;)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/k;->b(Lu/aly/bp;)[B

    move-result-object v0

    .line 171
    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-direct {p0}, Lu/aly/k;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    iget-object v2, p0, Lu/aly/k;->o:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/c;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;

    move-result-object v0

    .line 180
    :goto_1
    invoke-virtual {v0}, Lu/aly/c;->c()[B

    move-result-object v0

    .line 181
    iget-object v2, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/umeng/analytics/h;->f()V

    .line 183
    invoke-virtual {v2, v0}, Lcom/umeng/analytics/h;->b([B)V

    .line 184
    invoke-virtual {v1}, Lu/aly/d;->d()V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v2, p0, Lu/aly/k;->o:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/c;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lu/aly/k;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lu/aly/k;->b(I)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lu/aly/k;->e:Lu/aly/aa;

    invoke-virtual {v0}, Lu/aly/aa;->f()Z

    move-result v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lu/aly/k;->c:Lu/aly/s;

    new-instance v2, Lu/aly/ao;

    iget-object v3, p0, Lu/aly/k;->e:Lu/aly/aa;

    invoke-virtual {v3}, Lu/aly/aa;->n()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lu/aly/ao;-><init>(J)V

    invoke-virtual {v1, v2}, Lu/aly/s;->a(Lu/aly/ao;)V

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lu/aly/k;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-direct {p0}, Lu/aly/k;->e()V

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lu/aly/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_3
    invoke-virtual {p0}, Lu/aly/k;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lu/aly/k;)Lu/aly/al;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/k;->f:Lu/aly/al;

    return-object v0
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lu/aly/k;->a(I)V

    .line 439
    return-void
.end method

.method private b(Z)Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bs;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const-string v0, "MobclickAgent"

    const-string v1, "network is unavailable"

    invoke-static {v0, v1}, Lu/aly/bt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 279
    :cond_0
    iget-object v0, p0, Lu/aly/k;->e:Lu/aly/aa;

    invoke-virtual {v0}, Lu/aly/aa;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const/4 v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lu/aly/k;->i:Lu/aly/k$a;

    invoke-virtual {v0, p1}, Lu/aly/k$a;->b(Z)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/ReportPolicy$i;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Lu/aly/bp;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 257
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return-object v0

    .line 261
    :cond_0
    :try_start_0
    new-instance v1, Lu/aly/cs;

    invoke-direct {v1}, Lu/aly/cs;-><init>()V

    invoke-virtual {v1, p1}, Lu/aly/cs;->a(Lu/aly/cj;)[B

    move-result-object v1

    .line 262
    const-string v2, "MobclickAgent"

    invoke-virtual {p1}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/aly/bt;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 265
    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    const-string v2, "MobclickAgent"

    const-string v3, "Fail to serialize log ..."

    invoke-static {v2, v3, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c(Lu/aly/k;)Lu/aly/aa;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/k;->e:Lu/aly/aa;

    return-object v0
.end method

.method private c(Lu/aly/bp;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 334
    if-nez p1, :cond_1

    .line 335
    const-string v1, "MobclickAgent"

    const-string v2, "No data to report"

    invoke-static {v1, v2}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    invoke-virtual {p1}, Lu/aly/bp;->c()Lu/aly/ar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lu/aly/bp;->f()Lu/aly/aq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lu/aly/bp;->j()Lu/aly/at;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p1}, Lu/aly/bp;->m()Lu/aly/bh;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lu/aly/k;)Lu/aly/am;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/k;->h:Lu/aly/am;

    return-object v0
.end method

.method private d(Lu/aly/bp;)Lu/aly/bp;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x1388

    .line 347
    .line 350
    invoke-virtual {p1}, Lu/aly/bp;->u()Ljava/util/List;

    move-result-object v5

    .line 352
    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c

    move v4, v0

    move v1, v0

    move v2, v0

    .line 353
    :goto_0
    if-ge v4, v6, :cond_0

    .line 354
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->q()I

    move-result v0

    add-int/2addr v2, v0

    .line 355
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->l()I

    move-result v0

    add-int/2addr v1, v0

    .line 353
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v1, v2

    .line 359
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 360
    iget-wide v8, p0, Lu/aly/k;->l:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x1b77400

    cmp-long v2, v8, v10

    if-lez v2, :cond_5

    .line 361
    add-int/lit16 v2, v1, -0x1388

    .line 362
    add-int/lit16 v4, v0, -0x1388

    .line 364
    if-gtz v2, :cond_1

    if-lez v4, :cond_2

    .line 365
    :cond_1
    invoke-direct {p0, v2, v4, v5}, Lu/aly/k;->a(IILjava/util/List;)V

    .line 368
    :cond_2
    if-lez v2, :cond_3

    move v1, v3

    :cond_3
    iput v1, p0, Lu/aly/k;->m:I

    .line 369
    if-lez v4, :cond_4

    :goto_2
    iput v3, p0, Lu/aly/k;->n:I

    .line 370
    iput-wide v6, p0, Lu/aly/k;->l:J

    .line 383
    :goto_3
    return-object p1

    :cond_4
    move v3, v0

    .line 369
    goto :goto_2

    .line 372
    :cond_5
    iget v2, p0, Lu/aly/k;->m:I

    if-le v2, v3, :cond_8

    move v2, v1

    .line 373
    :goto_4
    iget v4, p0, Lu/aly/k;->n:I

    if-le v4, v3, :cond_9

    move v4, v0

    .line 375
    :goto_5
    if-gtz v2, :cond_6

    if-lez v4, :cond_7

    .line 376
    :cond_6
    invoke-direct {p0, v2, v4, v5}, Lu/aly/k;->a(IILjava/util/List;)V

    .line 379
    :cond_7
    if-lez v2, :cond_a

    move v1, v3

    :goto_6
    iput v1, p0, Lu/aly/k;->m:I

    .line 380
    if-lez v4, :cond_b

    :goto_7
    iput v3, p0, Lu/aly/k;->n:I

    goto :goto_3

    .line 372
    :cond_8
    iget v2, p0, Lu/aly/k;->m:I

    add-int/2addr v2, v1

    add-int/lit16 v2, v2, -0x1388

    goto :goto_4

    .line 373
    :cond_9
    iget v4, p0, Lu/aly/k;->n:I

    add-int/2addr v4, v0

    add-int/lit16 v4, v4, -0x1388

    goto :goto_5

    .line 379
    :cond_a
    iget v2, p0, Lu/aly/k;->m:I

    add-int/2addr v1, v2

    goto :goto_6

    .line 380
    :cond_b
    iget v1, p0, Lu/aly/k;->n:I

    add-int v3, v1, v0

    goto :goto_7

    :cond_c
    move v1, v0

    goto :goto_1
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lu/aly/k;->c:Lu/aly/s;

    invoke-virtual {v0}, Lu/aly/s;->b()I

    move-result v0

    iget v1, p0, Lu/aly/k;->k:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lu/aly/k;)Lu/aly/ak;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/k;->g:Lu/aly/ak;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lu/aly/k;->d:Lcom/umeng/analytics/h;

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    new-instance v0, Lu/aly/y;

    iget-object v1, p0, Lu/aly/k;->o:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/k;->e:Lu/aly/aa;

    invoke-direct {v0, v1, v2}, Lu/aly/y;-><init>(Landroid/content/Context;Lu/aly/aa;)V

    .line 294
    invoke-virtual {v0, p0}, Lu/aly/y;->a(Lu/aly/w;)V

    .line 295
    iget-object v1, p0, Lu/aly/k;->f:Lu/aly/al;

    invoke-virtual {v1}, Lu/aly/al;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu/aly/y;->b(Z)V

    .line 298
    :cond_0
    invoke-virtual {v0}, Lu/aly/y;->a()V

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/k;->a([I)Lu/aly/bp;

    move-result-object v0

    .line 302
    invoke-direct {p0, v0}, Lu/aly/k;->c(Lu/aly/bp;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 303
    const-string v0, "MobclickAgent"

    const-string v1, " not legitimate!"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_3

    .line 321
    :cond_3
    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 307
    :cond_4
    :try_start_1
    new-instance v1, Lu/aly/y;

    iget-object v2, p0, Lu/aly/k;->o:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/k;->e:Lu/aly/aa;

    invoke-direct {v1, v2, v3}, Lu/aly/y;-><init>(Landroid/content/Context;Lu/aly/aa;)V

    .line 308
    invoke-virtual {v1, p0}, Lu/aly/y;->a(Lu/aly/w;)V

    .line 309
    iget-object v2, p0, Lu/aly/k;->f:Lu/aly/al;

    invoke-virtual {v2}, Lu/aly/al;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 310
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lu/aly/y;->b(Z)V

    .line 312
    :cond_5
    invoke-direct {p0, v0}, Lu/aly/k;->d(Lu/aly/bp;)Lu/aly/bp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/aly/y;->a(Lu/aly/bp;)V

    .line 313
    invoke-direct {p0}, Lu/aly/k;->f()Z

    move-result v0

    invoke-virtual {v1, v0}, Lu/aly/y;->a(Z)V

    .line 314
    invoke-virtual {v1}, Lu/aly/y;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic f(Lu/aly/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    return-object v0
.end method

.method private f()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lu/aly/k;->j:Lu/aly/f$a;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lu/aly/f$a;->c(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 430
    :goto_0
    :pswitch_0
    return v0

    .line 424
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 428
    :pswitch_2
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected varargs a([I)Lu/aly/bp;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 190
    :try_start_0
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const-string v0, "MobclickAgent"

    const-string v1, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 197
    :cond_1
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->e()[B

    move-result-object v0

    .line 198
    if-nez v0, :cond_2

    move-object v0, v3

    .line 201
    :goto_1
    if-nez v0, :cond_3

    iget-object v4, p0, Lu/aly/k;->c:Lu/aly/s;

    invoke-virtual {v4}, Lu/aly/s;->b()I

    move-result v4

    if-nez v4, :cond_3

    move-object v0, v3

    .line 202
    goto :goto_0

    .line 198
    :cond_2
    invoke-direct {p0, v0}, Lu/aly/k;->a([B)Lu/aly/bp;

    move-result-object v0

    goto :goto_1

    .line 205
    :cond_3
    if-nez v0, :cond_7

    .line 206
    new-instance v0, Lu/aly/bp;

    invoke-direct {v0}, Lu/aly/bp;-><init>()V

    move-object v4, v0

    .line 208
    :goto_2
    iget-object v0, p0, Lu/aly/k;->c:Lu/aly/s;

    invoke-virtual {v0, v4}, Lu/aly/s;->a(Lu/aly/bp;)V

    .line 210
    sget-boolean v0, Lu/aly/bt;->a:Z

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Lu/aly/bp;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 212
    invoke-virtual {v4}, Lu/aly/bp;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bn;

    .line 213
    invoke-virtual {v0}, Lu/aly/bn;->p()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_4
    move v2, v0

    .line 216
    goto :goto_3

    .line 218
    :cond_4
    if-nez v2, :cond_5

    .line 219
    const-string v0, "MobclickAgent"

    const-string v1, "missing Activities or PageViews"

    invoke-static {v0, v1}, Lu/aly/bt;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_5
    iget-object v0, p0, Lu/aly/k;->f:Lu/aly/al;

    iget-object v1, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Lu/aly/al;->a(Landroid/content/Context;Lu/aly/bp;)Lu/aly/bp;

    move-result-object v0

    .line 225
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 226
    new-instance v1, Lu/aly/as;

    invoke-direct {v1}, Lu/aly/as;-><init>()V

    .line 227
    new-instance v2, Lu/aly/bf;

    const/4 v4, 0x0

    aget v4, p1, v4

    div-int/lit16 v4, v4, 0x3e8

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v5, v5

    invoke-direct {v2, v4, v5, v6}, Lu/aly/bf;-><init>(IJ)V

    invoke-virtual {v1, v2}, Lu/aly/as;->a(Lu/aly/bf;)Lu/aly/as;

    .line 228
    invoke-virtual {v0, v1}, Lu/aly/bp;->a(Lu/aly/as;)Lu/aly/bp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v1, "MobclickAgent"

    const-string v2, "Fail to construct message ..."

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 234
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->f()V

    move-object v0, v3

    .line 237
    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move-object v4, v0

    goto :goto_2
.end method

.method public a()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bs;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lu/aly/k;->e()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "network is unavailable"

    invoke-static {v0, v1}, Lu/aly/bt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lu/aly/f$a;)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lu/aly/k;->g:Lu/aly/ak;

    invoke-virtual {v0, p1}, Lu/aly/ak;->a(Lu/aly/f$a;)V

    .line 443
    iget-object v0, p0, Lu/aly/k;->f:Lu/aly/al;

    invoke-virtual {v0, p1}, Lu/aly/al;->a(Lu/aly/f$a;)V

    .line 444
    iget-object v0, p0, Lu/aly/k;->h:Lu/aly/am;

    invoke-virtual {v0, p1}, Lu/aly/am;->a(Lu/aly/f$a;)V

    .line 445
    iget-object v0, p0, Lu/aly/k;->i:Lu/aly/k$a;

    invoke-virtual {v0, p1}, Lu/aly/k$a;->a(Lu/aly/f$a;)V

    .line 446
    return-void
.end method

.method public a(Lu/aly/q;)V
    .locals 1

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lu/aly/k;->c:Lu/aly/s;

    invoke-virtual {v0, p1}, Lu/aly/s;->a(Lu/aly/q;)V

    .line 99
    :cond_0
    instance-of v0, p1, Lu/aly/bn;

    invoke-direct {p0, v0}, Lu/aly/k;->a(Z)V

    .line 100
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lu/aly/k;->c:Lu/aly/s;

    invoke-virtual {v0}, Lu/aly/s;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/k;->a([I)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/k;->b(Lu/aly/bp;)[B

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lu/aly/k;->d:Lcom/umeng/analytics/h;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/h;->a([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lu/aly/k;->o:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lu/aly/k;->l:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lu/aly/k;->m:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lu/aly/k;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lu/aly/k;->d:Lcom/umeng/analytics/h;

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->f()V

    .line 121
    :cond_1
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lu/aly/q;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lu/aly/k;->c:Lu/aly/s;

    invoke-virtual {v0, p1}, Lu/aly/s;->a(Lu/aly/q;)V

    .line 107
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/k;->a([I)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/k;->a(Lu/aly/bp;)V

    .line 133
    return-void
.end method
