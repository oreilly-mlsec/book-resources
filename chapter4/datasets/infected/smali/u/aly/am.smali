.class public Lu/aly/am;
.super Ljava/lang/Object;
.source "ImLatent.java"

# interfaces
.implements Lu/aly/w;


# static fields
.field private static l:Lu/aly/am;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I

.field private final d:I

.field private e:Lcom/umeng/analytics/h;

.field private f:Lu/aly/aa;

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lu/aly/am;->l:Lu/aly/am;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lu/aly/aa;)V
    .locals 7

    .prologue
    const-wide/32 v5, 0x4d3f6400

    const-wide/16 v3, 0x0

    const/16 v2, 0x2710

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide v5, p0, Lu/aly/am;->a:J

    .line 16
    const-wide/32 v0, 0x7b98a00

    iput-wide v0, p0, Lu/aly/am;->b:J

    .line 17
    const v0, 0x1b7740

    iput v0, p0, Lu/aly/am;->c:I

    .line 18
    iput v2, p0, Lu/aly/am;->d:I

    .line 23
    iput-wide v5, p0, Lu/aly/am;->g:J

    .line 24
    iput v2, p0, Lu/aly/am;->h:I

    .line 26
    iput-wide v3, p0, Lu/aly/am;->i:J

    .line 27
    iput-wide v3, p0, Lu/aly/am;->j:J

    .line 41
    iput-object p1, p0, Lu/aly/am;->k:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/am;->e:Lcom/umeng/analytics/h;

    .line 43
    iput-object p2, p0, Lu/aly/am;->f:Lu/aly/aa;

    .line 44
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lu/aly/aa;)Lu/aly/am;
    .locals 3

    .prologue
    .line 33
    const-class v1, Lu/aly/am;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/am;->l:Lu/aly/am;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lu/aly/am;

    invoke-direct {v0, p0, p1}, Lu/aly/am;-><init>(Landroid/content/Context;Lu/aly/aa;)V

    sput-object v0, Lu/aly/am;->l:Lu/aly/am;

    .line 35
    sget-object v0, Lu/aly/am;->l:Lu/aly/am;

    invoke-static {p0}, Lu/aly/f;->a(Landroid/content/Context;)Lu/aly/f;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/f;->b()Lu/aly/f$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/aly/am;->a(Lu/aly/f$a;)V

    .line 37
    :cond_0
    sget-object v0, Lu/aly/am;->l:Lu/aly/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lu/aly/f$a;)V
    .locals 2

    .prologue
    .line 88
    const-wide/32 v0, 0x4d3f6400

    invoke-virtual {p1, v0, v1}, Lu/aly/f$a;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/am;->g:J

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu/aly/f$a;->b(I)I

    move-result v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    if-lez v0, :cond_0

    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    const v1, 0x1b7740

    if-le v0, v1, :cond_1

    .line 93
    :cond_0
    const/16 v0, 0x2710

    iput v0, p0, Lu/aly/am;->h:I

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_1
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    iput v0, p0, Lu/aly/am;->h:I

    goto :goto_0

    .line 98
    :cond_2
    iput v0, p0, Lu/aly/am;->h:I

    goto :goto_0
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    iget-object v2, p0, Lu/aly/am;->e:Lcom/umeng/analytics/h;

    invoke-virtual {v2}, Lcom/umeng/analytics/h;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    iget-object v2, p0, Lu/aly/am;->f:Lu/aly/aa;

    invoke-virtual {v2}, Lu/aly/aa;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lu/aly/am;->f:Lu/aly/aa;

    invoke-virtual {v4}, Lu/aly/aa;->o()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 61
    iget-wide v4, p0, Lu/aly/am;->g:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 62
    iget-object v0, p0, Lu/aly/am;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget v4, p0, Lu/aly/am;->h:I

    invoke-static {v4, v0}, Lcom/umeng/analytics/b;->a(ILjava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lu/aly/am;->i:J

    .line 64
    iput-wide v2, p0, Lu/aly/am;->j:J

    move v0, v1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-wide/32 v4, 0x7b98a00

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 67
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lu/aly/am;->i:J

    .line 68
    iput-wide v2, p0, Lu/aly/am;->j:J

    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lu/aly/am;->i:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lu/aly/am;->j:J

    return-wide v0
.end method
