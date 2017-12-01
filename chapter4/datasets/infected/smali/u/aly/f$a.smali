.class public Lu/aly/f$a;
.super Ljava/lang/Object;
.source "ImprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput v0, p0, Lu/aly/f$a;->a:I

    .line 265
    iput v0, p0, Lu/aly/f$a;->b:I

    .line 266
    iput v0, p0, Lu/aly/f$a;->c:I

    .line 267
    iput v0, p0, Lu/aly/f$a;->d:I

    .line 268
    iput v0, p0, Lu/aly/f$a;->e:I

    .line 269
    iput-object v1, p0, Lu/aly/f$a;->f:Ljava/lang/String;

    .line 270
    iput v0, p0, Lu/aly/f$a;->g:I

    .line 271
    iput-object v1, p0, Lu/aly/f$a;->h:Ljava/lang/String;

    .line 272
    iput v0, p0, Lu/aly/f$a;->i:I

    .line 273
    iput v0, p0, Lu/aly/f$a;->j:I

    .line 276
    return-void
.end method

.method constructor <init>(Lu/aly/bc;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput v0, p0, Lu/aly/f$a;->a:I

    .line 265
    iput v0, p0, Lu/aly/f$a;->b:I

    .line 266
    iput v0, p0, Lu/aly/f$a;->c:I

    .line 267
    iput v0, p0, Lu/aly/f$a;->d:I

    .line 268
    iput v0, p0, Lu/aly/f$a;->e:I

    .line 269
    iput-object v1, p0, Lu/aly/f$a;->f:Ljava/lang/String;

    .line 270
    iput v0, p0, Lu/aly/f$a;->g:I

    .line 271
    iput-object v1, p0, Lu/aly/f$a;->h:Ljava/lang/String;

    .line 272
    iput v0, p0, Lu/aly/f$a;->i:I

    .line 273
    iput v0, p0, Lu/aly/f$a;->j:I

    .line 279
    invoke-virtual {p0, p1}, Lu/aly/f$a;->a(Lu/aly/bc;)V

    .line 280
    return-void
.end method

.method private a(Lu/aly/bc;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 429
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lu/aly/bc;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 444
    :goto_0
    return v0

    .line 433
    :cond_1
    invoke-virtual {p1}, Lu/aly/bc;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bd;

    .line 435
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 436
    goto :goto_0

    .line 440
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    move v0, v1

    .line 444
    goto :goto_0
.end method

.method private b(Lu/aly/bc;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 448
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lu/aly/bc;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 458
    :goto_0
    return-object v0

    .line 452
    :cond_1
    invoke-virtual {p1}, Lu/aly/bc;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bd;

    .line 454
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 455
    goto :goto_0

    .line 458
    :cond_3
    invoke-virtual {v0}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 306
    iget v0, p0, Lu/aly/f$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return p1

    .line 310
    :cond_1
    iget v0, p0, Lu/aly/f$a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget v0, p0, Lu/aly/f$a;->a:I

    if-ltz v0, :cond_0

    .line 314
    iget p1, p0, Lu/aly/f$a;->a:I

    goto :goto_0
.end method

.method public a(J)J
    .locals 4

    .prologue
    .line 417
    iget v0, p0, Lu/aly/f$a;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-wide p1

    .line 421
    :cond_1
    iget v0, p0, Lu/aly/f$a;->j:I

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    .line 425
    const-wide/32 v0, 0x36ee80

    iget v2, p0, Lu/aly/f$a;->j:I

    int-to-long v2, v2

    mul-long p1, v0, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lu/aly/f$a;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/f$a;->f:Ljava/lang/String;

    invoke-static {v0}, Lu/aly/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lu/aly/f$a;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lu/aly/bc;)V
    .locals 1

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v0, "defcon"

    invoke-direct {p0, p1, v0}, Lu/aly/f$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/f$a;->a:I

    .line 288
    const-string v0, "latent"

    invoke-direct {p0, p1, v0}, Lu/aly/f$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/f$a;->b:I

    .line 289
    const-string v0, "codex"

    invoke-direct {p0, p1, v0}, Lu/aly/f$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/f$a;->c:I

    .line 290
    const-string v0, "report_policy"

    invoke-direct {p0, p1, v0}, Lu/aly/f$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/f$a;->d:I

    .line 291
    const-string v0, "report_interval"

    invoke-direct {p0, p1, v0}, Lu/aly/f$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/f$a;->e:I

    .line 292
    const-string v0, "client_test"

    invoke-direct {p0, p1, v0}, Lu/aly/f$a;->b(Lu/aly/bc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/f$a;->f:Ljava/lang/String;

    .line 293
    const-string v0, "test_report_interval"

    invoke-direct {p0, p1, v0}, Lu/aly/f$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/f$a;->g:I

    .line 294
    const-string v0, "umid"

    invoke-direct {p0, p1, v0}, Lu/aly/f$a;->b(Lu/aly/bc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/f$a;->h:Ljava/lang/String;

    .line 295
    const-string v0, "integrated_test"

    invoke-direct {p0, p1, v0}, Lu/aly/f$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/f$a;->i:I

    .line 296
    const-string v0, "latent_hours"

    invoke-direct {p0, p1, v0}, Lu/aly/f$a;->a(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/f$a;->j:I

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 399
    iget v0, p0, Lu/aly/f$a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)[I
    .locals 6

    .prologue
    const/16 v5, 0x5a

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 359
    iget v0, p0, Lu/aly/f$a;->d:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lu/aly/f$a;->d:I

    invoke-static {v0}, Lcom/umeng/analytics/ReportPolicy;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    new-array v0, v4, [I

    aput p1, v0, v2

    aput p2, v0, v3

    .line 367
    :goto_0
    return-object v0

    .line 363
    :cond_1
    iget v0, p0, Lu/aly/f$a;->e:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lu/aly/f$a;->e:I

    if-lt v0, v5, :cond_2

    iget v0, p0, Lu/aly/f$a;->e:I

    const v1, 0x15180

    if-le v0, v1, :cond_3

    .line 364
    :cond_2
    iput v5, p0, Lu/aly/f$a;->e:I

    .line 367
    :cond_3
    new-array v0, v4, [I

    iget v1, p0, Lu/aly/f$a;->d:I

    aput v1, v0, v2

    iget v1, p0, Lu/aly/f$a;->e:I

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, v0, v3

    goto :goto_0
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lu/aly/f$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return p1

    .line 329
    :cond_1
    iget v0, p0, Lu/aly/f$a;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lu/aly/f$a;->b:I

    const/16 v1, 0x708

    if-gt v0, v1, :cond_0

    .line 333
    iget v0, p0, Lu/aly/f$a;->b:I

    mul-int/lit16 p1, v0, 0x3e8

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lu/aly/f$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 407
    iget v1, p0, Lu/aly/f$a;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 2

    .prologue
    .line 343
    iget v0, p0, Lu/aly/f$a;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lu/aly/f$a;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lu/aly/f$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 344
    :cond_0
    iget p1, p0, Lu/aly/f$a;->c:I

    .line 347
    :cond_1
    return p1
.end method

.method public d(I)I
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Lu/aly/f$a;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lu/aly/f$a;->g:I

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_0

    iget v0, p0, Lu/aly/f$a;->g:I

    const v1, 0x15180

    if-le v0, v1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lu/aly/f$a;->g:I

    mul-int/lit16 p1, v0, 0x3e8

    goto :goto_0
.end method
