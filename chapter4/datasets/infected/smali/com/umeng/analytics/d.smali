.class public Lcom/umeng/analytics/d;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lu/aly/v;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/c;

.field private c:Lu/aly/n;

.field private d:Lu/aly/ad;

.field private e:Lu/aly/z;

.field private f:Lu/aly/o;

.field private g:Lu/aly/l;

.field private h:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 31
    new-instance v0, Lu/aly/n;

    invoke-direct {v0}, Lu/aly/n;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->c:Lu/aly/n;

    .line 32
    new-instance v0, Lu/aly/ad;

    invoke-direct {v0}, Lu/aly/ad;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ad;

    .line 33
    new-instance v0, Lu/aly/z;

    invoke-direct {v0}, Lu/aly/z;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/z;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    .line 40
    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lu/aly/n;

    invoke-virtual {v0, p0}, Lu/aly/n;->a(Lu/aly/v;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;)Lu/aly/o;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/o;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Lu/aly/o;

    iget-object v1, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/o;

    .line 47
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/l;->a(Landroid/content/Context;)Lu/aly/l;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/l;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    .line 51
    :cond_0
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/z;

    invoke-virtual {v0, p1}, Lu/aly/z;->c(Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->a()V

    .line 187
    :cond_0
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/z;

    invoke-virtual {v0, p1}, Lu/aly/z;->d(Landroid/content/Context;)V

    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ad;

    invoke-virtual {v0, p1}, Lu/aly/ad;->a(Landroid/content/Context;)V

    .line 193
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->b()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/l;

    invoke-virtual {v0}, Lu/aly/l;->b()V

    .line 196
    return-void
.end method


# virtual methods
.method public a()Lu/aly/z;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/z;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 78
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    .line 79
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ad;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ad;->a(Ljava/lang/String;)V

    .line 97
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_2

    .line 98
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 100
    :cond_2
    new-instance v0, Lcom/umeng/analytics/d$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$1;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 154
    :cond_0
    if-nez p1, :cond_1

    .line 155
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in reportError"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_2

    .line 161
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/l;

    new-instance v1, Lu/aly/ag;

    invoke-direct {v1, p2}, Lu/aly/ag;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lu/aly/ag;->a(Z)Lu/aly/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/l;->a(Lu/aly/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 230
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 232
    :cond_0
    new-instance v0, Lcom/umeng/analytics/d$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$3;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 6

    .prologue
    .line 210
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/o;

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lu/aly/o;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/o;

    invoke-virtual {v0, p2, p3}, Lu/aly/o;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 258
    :cond_0
    new-instance v0, Lcom/umeng/analytics/d$5;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/umeng/analytics/d$5;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/o;

    invoke-virtual {v0, p2, p3, p4, p5}, Lu/aly/o;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 169
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_2

    .line 175
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/l;

    new-instance v1, Lu/aly/ag;

    invoke-direct {v1, p2}, Lu/aly/ag;-><init>(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lu/aly/ag;->a(Z)Lu/aly/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/l;->a(Lu/aly/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/analytics/c;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    .line 75
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ad;

    invoke-virtual {v0, p1}, Lu/aly/ad;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 83
    sput-object p2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ad;

    invoke-virtual {v0}, Lu/aly/ad;->a()V

    .line 296
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 297
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/l;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/l;

    new-instance v1, Lu/aly/ag;

    invoke-direct {v1, p1}, Lu/aly/ag;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lu/aly/l;->b(Lu/aly/q;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 301
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string v1, "MobclickAgent"

    const-string v2, "Exception in onAppCrash"

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 334
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$8;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d$8;-><init>(Lcom/umeng/analytics/d;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 353
    const-string v1, "MobclickAgent"

    const-string v2, " Excepthon  in  onProfileSignOff"

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onPause"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ad;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/ad;->b(Ljava/lang/String;)V

    .line 122
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_2

    .line 123
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 125
    :cond_2
    new-instance v0, Lcom/umeng/analytics/d$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$2;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 244
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$4;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ad;

    invoke-virtual {v0, p1}, Lu/aly/ad;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 312
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/d$7;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    const-string v1, "MobclickAgent"

    const-string v2, " Excepthon  in  onProfileSignIn"

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/l;

    invoke-virtual {v0}, Lu/aly/l;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 270
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$6;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/ad;

    invoke-virtual {v0}, Lu/aly/ad;->a()V

    .line 283
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 284
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
