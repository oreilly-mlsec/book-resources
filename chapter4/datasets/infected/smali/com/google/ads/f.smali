.class public final Lcom/google/ads/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:J


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/ads/f;->f:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/google/ads/f;->h:Z

    .line 81
    iput-boolean v0, p0, Lcom/google/ads/f;->i:Z

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/f;->e:Ljava/util/LinkedList;

    .line 94
    invoke-virtual {p0}, Lcom/google/ads/f;->a()V

    .line 95
    return-void
.end method

.method static i()J
    .locals 2

    .prologue
    .line 227
    sget-wide v0, Lcom/google/ads/f;->f:J

    return-wide v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 104
    iput-wide v2, p0, Lcom/google/ads/f;->c:J

    .line 105
    iput-wide v2, p0, Lcom/google/ads/f;->d:J

    .line 106
    iget-object v0, p0, Lcom/google/ads/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/f;->g:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lcom/google/ads/f;->h:Z

    .line 109
    iput-boolean v1, p0, Lcom/google/ads/f;->i:Z

    .line 110
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prior ad identifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->d(Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/google/ads/f;->g:Ljava/lang/String;

    .line 237
    return-void
.end method

.method final b()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "Ad clicked."

    invoke-static {v0}, Lcom/google/ads/util/a;->d(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prior impression ticket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->d(Ljava/lang/String;)V

    .line 271
    iput-object p1, p0, Lcom/google/ads/f;->a:Ljava/lang/String;

    .line 272
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "Ad request loaded."

    invoke-static {v0}, Lcom/google/ads/util/a;->d(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/f;->c:J

    .line 130
    return-void
.end method

.method final d()V
    .locals 4

    .prologue
    .line 138
    const-string v0, "Ad request started."

    invoke-static {v0}, Lcom/google/ads/util/a;->d(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/f;->d:J

    .line 140
    sget-wide v0, Lcom/google/ads/f;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/ads/f;->f:J

    .line 141
    return-void
.end method

.method final e()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 152
    const-wide/16 v0, -0x1

    .line 154
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method final f()Ljava/lang/String;
    .locals 7

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 171
    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    .line 175
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 177
    if-eqz v1, :cond_2

    .line 178
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/google/ads/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final g()Ljava/lang/String;
    .locals 7

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    .line 202
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 204
    if-eqz v1, :cond_1

    .line 205
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/ads/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/ads/f;->c:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 210
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final h()J
    .locals 4

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/google/ads/f;->c:J

    iget-wide v2, p0, Lcom/google/ads/f;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/ads/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method final k()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/ads/f;->h:Z

    return v0
.end method

.method final l()V
    .locals 1

    .prologue
    .line 244
    const-string v0, "Interstitial network error."

    invoke-static {v0}, Lcom/google/ads/util/a;->d(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/f;->h:Z

    .line 246
    return-void
.end method

.method final m()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/google/ads/f;->i:Z

    return v0
.end method

.method final n()V
    .locals 1

    .prologue
    .line 253
    const-string v0, "Interstitial no fill."

    invoke-static {v0}, Lcom/google/ads/util/a;->d(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/f;->i:Z

    .line 255
    return-void
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 261
    const-string v0, "Landing page dismissed."

    invoke-static {v0}, Lcom/google/ads/util/a;->d(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/google/ads/f;->e:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/ads/f;->a:Ljava/lang/String;

    return-object v0
.end method
