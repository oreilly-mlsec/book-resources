.class public Lu/aly/al;
.super Ljava/lang/Object;
.source "Defcon.java"

# interfaces
.implements Lu/aly/w;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:J = 0xdbba00L

.field private static final f:J = 0x1b77400L

.field private static final g:J = 0x5265c00L

.field private static j:Lu/aly/al;


# instance fields
.field private h:I

.field private final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lu/aly/al;->j:Lu/aly/al;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/al;->h:I

    .line 39
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lu/aly/al;->i:J

    .line 53
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/al;
    .locals 3

    .prologue
    .line 44
    const-class v1, Lu/aly/al;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/al;->j:Lu/aly/al;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lu/aly/al;

    invoke-direct {v0}, Lu/aly/al;-><init>()V

    sput-object v0, Lu/aly/al;->j:Lu/aly/al;

    .line 46
    invoke-static {p0}, Lu/aly/f;->a(Landroid/content/Context;)Lu/aly/f;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/f;->b()Lu/aly/f$a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/aly/f$a;->a(I)I

    move-result v0

    .line 47
    sget-object v2, Lu/aly/al;->j:Lu/aly/al;

    invoke-virtual {v2, v0}, Lu/aly/al;->a(I)V

    .line 49
    :cond_0
    sget-object v0, Lu/aly/al;->j:Lu/aly/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lu/aly/al;->h:I

    packed-switch v0, :pswitch_data_0

    .line 93
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 86
    :pswitch_0
    const-wide/32 v0, 0xdbba00

    goto :goto_0

    .line 88
    :pswitch_1
    const-wide/32 v0, 0x1b77400

    goto :goto_0

    .line 90
    :pswitch_2
    const-wide/32 v0, 0x5265c00

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lu/aly/bp;)Lu/aly/bp;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 56
    if-nez p2, :cond_1

    move-object p2, v0

    .line 69
    :cond_0
    :goto_0
    return-object p2

    .line 59
    :cond_1
    iget v1, p0, Lu/aly/al;->h:I

    if-ne v1, v3, :cond_2

    .line 60
    invoke-virtual {p2, v0}, Lu/aly/bp;->a(Ljava/util/List;)Lu/aly/bp;

    goto :goto_0

    .line 61
    :cond_2
    iget v1, p0, Lu/aly/al;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 62
    new-array v1, v3, [Lu/aly/bn;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lu/aly/al;->b(Landroid/content/Context;)Lu/aly/bn;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lu/aly/bp;->b(Ljava/util/List;)Lu/aly/bp;

    .line 63
    invoke-virtual {p2, v0}, Lu/aly/bp;->a(Ljava/util/List;)Lu/aly/bp;

    goto :goto_0

    .line 64
    :cond_3
    iget v1, p0, Lu/aly/al;->h:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 65
    invoke-virtual {p2, v0}, Lu/aly/bp;->b(Ljava/util/List;)Lu/aly/bp;

    .line 66
    invoke-virtual {p2, v0}, Lu/aly/bp;->a(Ljava/util/List;)Lu/aly/bp;

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 102
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 103
    iput p1, p0, Lu/aly/al;->h:I

    .line 105
    :cond_0
    return-void
.end method

.method public a(Lu/aly/f$a;)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu/aly/f$a;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lu/aly/al;->a(I)V

    .line 114
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lu/aly/al;->h:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Lu/aly/bn;
    .locals 6

    .prologue
    const-wide/32 v4, 0xea60

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    new-instance v2, Lu/aly/bn;

    invoke-direct {v2}, Lu/aly/bn;-><init>()V

    .line 75
    invoke-static {p1}, Lu/aly/z;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu/aly/bn;->a(Ljava/lang/String;)Lu/aly/bn;

    .line 76
    invoke-virtual {v2, v0, v1}, Lu/aly/bn;->a(J)Lu/aly/bn;

    .line 77
    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lu/aly/bn;->b(J)Lu/aly/bn;

    .line 78
    invoke-virtual {v2, v4, v5}, Lu/aly/bn;->c(J)Lu/aly/bn;

    .line 80
    return-object v2
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lu/aly/al;->h:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
