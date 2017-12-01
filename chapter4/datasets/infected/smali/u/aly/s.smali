.class public Lu/aly/s;
.super Ljava/lang/Object;
.source "MemoCache.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/q;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lu/aly/ao;

.field private c:Lu/aly/aq;

.field private d:Lu/aly/at;

.field private e:Lu/aly/bh;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/s;->a:Ljava/util/List;

    .line 34
    iput-object v1, p0, Lu/aly/s;->b:Lu/aly/ao;

    .line 35
    iput-object v1, p0, Lu/aly/s;->c:Lu/aly/aq;

    .line 36
    iput-object v1, p0, Lu/aly/s;->d:Lu/aly/at;

    .line 37
    iput-object v1, p0, Lu/aly/s;->e:Lu/aly/bh;

    .line 39
    iput-object v1, p0, Lu/aly/s;->f:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lu/aly/s;->f:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 178
    :try_start_0
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->a(Ljava/lang/String;)Lu/aly/aq;

    .line 179
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->e(Ljava/lang/String;)Lu/aly/aq;

    .line 181
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/aq;->f(Ljava/lang/String;)Lu/aly/aq;

    .line 183
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/aq;->g(Ljava/lang/String;)Lu/aly/aq;

    .line 186
    :cond_0
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    invoke-static {p1}, Lu/aly/bs;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->c(Ljava/lang/String;)Lu/aly/aq;

    .line 187
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    sget-object v1, Lu/aly/bm;->a:Lu/aly/bm;

    invoke-virtual {v0, v1}, Lu/aly/aq;->a(Lu/aly/bm;)Lu/aly/aq;

    .line 188
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    const-string v1, "5.6.1"

    invoke-virtual {v0, v1}, Lu/aly/aq;->d(Ljava/lang/String;)Lu/aly/aq;

    .line 189
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    invoke-static {p1}, Lu/aly/bs;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->b(Ljava/lang/String;)Lu/aly/aq;

    .line 190
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    invoke-static {p1}, Lu/aly/bs;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->a(I)Lu/aly/aq;

    .line 192
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    sget v1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    invoke-virtual {v0, v1}, Lu/aly/aq;->c(I)Lu/aly/aq;

    .line 193
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->d(Ljava/lang/String;)Lu/aly/aq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    invoke-static {}, Lu/aly/bs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/at;->f(Ljava/lang/String;)Lu/aly/at;

    .line 202
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    invoke-static {p1}, Lu/aly/bs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/at;->a(Ljava/lang/String;)Lu/aly/at;

    .line 203
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    invoke-static {p1}, Lu/aly/bs;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/at;->b(Ljava/lang/String;)Lu/aly/at;

    .line 204
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    invoke-static {p1}, Lu/aly/bs;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/at;->c(Ljava/lang/String;)Lu/aly/at;

    .line 205
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->e(Ljava/lang/String;)Lu/aly/at;

    .line 206
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lu/aly/at;->g(Ljava/lang/String;)Lu/aly/at;

    .line 207
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->h(Ljava/lang/String;)Lu/aly/at;

    .line 209
    invoke-static {p1}, Lu/aly/bs;->r(Landroid/content/Context;)[I

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lu/aly/s;->d:Lu/aly/at;

    new-instance v2, Lu/aly/bk;

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-direct {v2, v3, v0}, Lu/aly/bk;-><init>(II)V

    invoke-virtual {v1, v2}, Lu/aly/at;->a(Lu/aly/bk;)Lu/aly/at;

    .line 215
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 219
    :cond_1
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->i(Ljava/lang/String;)Lu/aly/at;

    .line 220
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->j(Ljava/lang/String;)Lu/aly/at;

    .line 221
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    sget-wide v1, Landroid/os/Build;->TIME:J

    invoke-virtual {v0, v1, v2}, Lu/aly/at;->a(J)Lu/aly/at;

    .line 222
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->k(Ljava/lang/String;)Lu/aly/at;

    .line 223
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->l(Ljava/lang/String;)Lu/aly/at;

    .line 224
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->m(Ljava/lang/String;)Lu/aly/at;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 232
    :try_start_0
    invoke-static {p1}, Lu/aly/bs;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "Wi-Fi"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lu/aly/s;->e:Lu/aly/bh;

    sget-object v2, Lu/aly/an;->c:Lu/aly/an;

    invoke-virtual {v1, v2}, Lu/aly/bh;->a(Lu/aly/an;)Lu/aly/bh;

    .line 242
    :goto_0
    const-string v1, ""

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lu/aly/s;->e:Lu/aly/bh;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lu/aly/bh;->e(Ljava/lang/String;)Lu/aly/bh;

    .line 246
    :cond_0
    iget-object v0, p0, Lu/aly/s;->e:Lu/aly/bh;

    invoke-static {p1}, Lu/aly/bs;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bh;->c(Ljava/lang/String;)Lu/aly/bh;

    .line 248
    invoke-static {p1}, Lu/aly/bs;->n(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lu/aly/s;->e:Lu/aly/bh;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lu/aly/bh;->b(Ljava/lang/String;)Lu/aly/bh;

    .line 251
    iget-object v1, p0, Lu/aly/s;->e:Lu/aly/bh;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lu/aly/bh;->a(Ljava/lang/String;)Lu/aly/bh;

    .line 252
    iget-object v0, p0, Lu/aly/s;->e:Lu/aly/bh;

    invoke-static {p1}, Lu/aly/bs;->m(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lu/aly/bh;->a(I)Lu/aly/bh;

    .line 256
    :goto_1
    return-void

    .line 236
    :cond_1
    const-string v1, "2G/3G"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lu/aly/s;->e:Lu/aly/bh;

    sget-object v2, Lu/aly/an;->b:Lu/aly/an;

    invoke-virtual {v1, v2}, Lu/aly/bh;->a(Lu/aly/an;)Lu/aly/bh;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 239
    :cond_2
    :try_start_1
    iget-object v1, p0, Lu/aly/s;->e:Lu/aly/bh;

    sget-object v2, Lu/aly/an;->a:Lu/aly/an;

    invoke-virtual {v1, v2}, Lu/aly/bh;->a(Lu/aly/an;)Lu/aly/bh;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lu/aly/s;->f:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized a(Lu/aly/ao;)V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lu/aly/s;->b:Lu/aly/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lu/aly/bp;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lu/aly/s;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/z;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 77
    :cond_0
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lu/aly/s;->b:Lu/aly/ao;

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lu/aly/aa;

    iget-object v2, p0, Lu/aly/s;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Lu/aly/aa;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v0}, Lu/aly/aa;->f()Z

    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lu/aly/s;->b:Lu/aly/ao;

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/ao;)Lu/aly/bp;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/s;->b:Lu/aly/ao;

    .line 88
    :cond_1
    iget-object v0, p0, Lu/aly/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/q;

    .line 89
    invoke-interface {v0, p1, v1}, Lu/aly/q;->a(Lu/aly/bp;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 92
    :cond_2
    :try_start_1
    iget-object v0, p0, Lu/aly/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-virtual {p0}, Lu/aly/s;->c()Lu/aly/aq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/aq;)Lu/aly/bp;

    .line 97
    invoke-virtual {p0}, Lu/aly/s;->d()Lu/aly/at;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/at;)Lu/aly/bp;

    .line 98
    invoke-virtual {p0}, Lu/aly/s;->e()Lu/aly/bh;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/bh;)Lu/aly/bp;

    .line 99
    invoke-virtual {p0}, Lu/aly/s;->h()Lu/aly/ar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/ar;)Lu/aly/bp;

    .line 100
    invoke-virtual {p0}, Lu/aly/s;->f()Lu/aly/bc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/bc;)Lu/aly/bp;

    .line 101
    invoke-virtual {p0}, Lu/aly/s;->g()Lu/aly/bb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/bb;)Lu/aly/bp;

    .line 102
    invoke-virtual {p0}, Lu/aly/s;->j()Lu/aly/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/ap;)Lu/aly/bp;

    .line 103
    invoke-virtual {p0}, Lu/aly/s;->i()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Ljava/util/Map;)Lu/aly/bp;

    goto :goto_0
.end method

.method public declared-synchronized a(Lu/aly/q;)V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(I)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b()I
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 56
    iget-object v1, p0, Lu/aly/s;->b:Lu/aly/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 60
    :cond_0
    monitor-exit p0

    return v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lu/aly/aq;
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lu/aly/aq;

    invoke-direct {v0}, Lu/aly/aq;-><init>()V

    iput-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;

    .line 113
    iget-object v0, p0, Lu/aly/s;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lu/aly/s;->a(Landroid/content/Context;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lu/aly/s;->c:Lu/aly/aq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lu/aly/at;
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lu/aly/at;

    invoke-direct {v0}, Lu/aly/at;-><init>()V

    iput-object v0, p0, Lu/aly/s;->d:Lu/aly/at;

    .line 122
    iget-object v0, p0, Lu/aly/s;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lu/aly/s;->b(Landroid/content/Context;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lu/aly/s;->d:Lu/aly/at;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lu/aly/bh;
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/s;->e:Lu/aly/bh;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lu/aly/bh;

    invoke-direct {v0}, Lu/aly/bh;-><init>()V

    iput-object v0, p0, Lu/aly/s;->e:Lu/aly/bh;

    .line 131
    iget-object v0, p0, Lu/aly/s;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lu/aly/s;->c(Landroid/content/Context;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lu/aly/s;->e:Lu/aly/bh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Lu/aly/bc;
    .locals 1

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lu/aly/s;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/f;->a(Landroid/content/Context;)Lu/aly/f;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/f;->a()Lu/aly/bc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lu/aly/bb;
    .locals 1

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lu/aly/s;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/d;->a(Landroid/content/Context;)Lu/aly/d;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/d;->b()Lu/aly/bb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lu/aly/ar;
    .locals 1

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lu/aly/s;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aa;->a(Landroid/content/Context;)Lu/aly/ar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0}, Lu/aly/ar;-><init>()V

    goto :goto_0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lu/aly/s;->f:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ak;->a(Landroid/content/Context;)Lu/aly/ak;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/ak;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public j()Lu/aly/ap;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lu/aly/s;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_0

    aget-object v0, v1, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, v1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lu/aly/ap;

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Lu/aly/ap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
