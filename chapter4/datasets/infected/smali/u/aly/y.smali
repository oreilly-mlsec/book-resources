.class public Lu/aly/y;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3


# instance fields
.field private d:Lu/aly/d;

.field private e:Lu/aly/f;

.field private final f:I

.field private g:Landroid/content/Context;

.field private h:Lu/aly/aa;

.field private i:Lu/aly/t;

.field private j:Lu/aly/bp;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu/aly/aa;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lu/aly/y;->f:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/y;->k:Z

    .line 53
    invoke-static {p1}, Lu/aly/d;->a(Landroid/content/Context;)Lu/aly/d;

    move-result-object v0

    iput-object v0, p0, Lu/aly/y;->d:Lu/aly/d;

    .line 54
    invoke-static {p1}, Lu/aly/f;->a(Landroid/content/Context;)Lu/aly/f;

    move-result-object v0

    iput-object v0, p0, Lu/aly/y;->e:Lu/aly/f;

    .line 56
    iput-object p1, p0, Lu/aly/y;->g:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lu/aly/y;->h:Lu/aly/aa;

    .line 58
    new-instance v0, Lu/aly/t;

    invoke-direct {v0, p1}, Lu/aly/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/y;->i:Lu/aly/t;

    .line 59
    iget-object v0, p0, Lu/aly/y;->i:Lu/aly/t;

    iget-object v1, p0, Lu/aly/y;->h:Lu/aly/aa;

    invoke-virtual {v0, v1}, Lu/aly/t;->a(Lu/aly/r;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lu/aly/y;[B)I
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lu/aly/y;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 196
    new-instance v1, Lu/aly/bl;

    invoke-direct {v1}, Lu/aly/bl;-><init>()V

    .line 197
    new-instance v0, Lu/aly/cm;

    new-instance v2, Lu/aly/db$a;

    invoke-direct {v2}, Lu/aly/db$a;-><init>()V

    invoke-direct {v0, v2}, Lu/aly/cm;-><init>(Lu/aly/dk;)V

    .line 200
    :try_start_0
    invoke-virtual {v0, v1, p1}, Lu/aly/cm;->a(Lu/aly/cj;[B)V

    .line 202
    iget v0, v1, Lu/aly/bl;->a:I

    if-ne v0, v4, :cond_0

    .line 203
    iget-object v0, p0, Lu/aly/y;->e:Lu/aly/f;

    invoke-virtual {v1}, Lu/aly/bl;->j()Lu/aly/bc;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/aly/f;->b(Lu/aly/bc;)V

    .line 204
    iget-object v0, p0, Lu/aly/y;->e:Lu/aly/f;

    invoke-virtual {v0}, Lu/aly/f;->d()V

    .line 207
    :cond_0
    const-string v0, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send log:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lu/aly/bl;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lu/aly/bt;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    iget v0, v1, Lu/aly/bl;->a:I

    if-ne v0, v4, :cond_1

    .line 213
    const/4 v0, 0x2

    .line 215
    :goto_1
    return v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method static synthetic a(Lu/aly/y;)Lu/aly/t;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lu/aly/y;->i:Lu/aly/t;

    return-object v0
.end method

.method static synthetic b(Lu/aly/y;)Lu/aly/aa;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lu/aly/y;->h:Lu/aly/aa;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lu/aly/y;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->h()Lcom/umeng/analytics/h$a;

    move-result-object v0

    .line 88
    new-instance v1, Lu/aly/y$1;

    invoke-direct {v1, p0}, Lu/aly/y$1;-><init>(Lu/aly/y;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h$a;->a(Lcom/umeng/analytics/h$b;)V

    .line 139
    return-void
.end method

.method private b(Lu/aly/bp;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 220
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-object v0

    .line 224
    :cond_0
    :try_start_0
    new-instance v1, Lu/aly/cs;

    invoke-direct {v1}, Lu/aly/cs;-><init>()V

    invoke-virtual {v1, p1}, Lu/aly/cs;->a(Lu/aly/cj;)[B

    move-result-object v1

    .line 225
    sget-boolean v2, Lu/aly/bt;->a:Z

    if-eqz v2, :cond_1

    .line 226
    const-string v2, "MobclickAgent"

    invoke-virtual {p1}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/aly/bt;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    .line 230
    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    const-string v2, "MobclickAgent"

    const-string v3, "Fail to serialize log ..."

    invoke-static {v2, v3, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lu/aly/y;->d:Lu/aly/d;

    invoke-virtual {v0}, Lu/aly/d;->a()V

    .line 143
    iget-object v0, p0, Lu/aly/y;->j:Lu/aly/bp;

    .line 144
    iget-object v1, p0, Lu/aly/y;->d:Lu/aly/d;

    invoke-virtual {v1}, Lu/aly/d;->b()Lu/aly/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bp;->a(Lu/aly/bb;)Lu/aly/bp;

    .line 145
    invoke-direct {p0, v0}, Lu/aly/y;->b(Lu/aly/bp;)[B

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    const-string v0, "MobclickAgent"

    const-string v1, "message is null"

    invoke-static {v0, v1}, Lu/aly/bt;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-boolean v1, p0, Lu/aly/y;->k:Z

    if-nez v1, :cond_2

    .line 154
    iget-object v1, p0, Lu/aly/y;->g:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/y;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/c;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;

    move-result-object v0

    .line 159
    :goto_1
    invoke-virtual {v0}, Lu/aly/c;->c()[B

    move-result-object v1

    .line 160
    iget-object v0, p0, Lu/aly/y;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->f()V

    .line 166
    iget-object v0, p0, Lu/aly/y;->i:Lu/aly/t;

    invoke-virtual {v0, v1}, Lu/aly/t;->a([B)[B

    move-result-object v0

    .line 167
    if-nez v0, :cond_3

    .line 168
    const/4 v0, 0x1

    .line 173
    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    iget-boolean v0, p0, Lu/aly/y;->l:Z

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lu/aly/y;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h;->b([B)V

    .line 189
    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "connection error"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lu/aly/y;->g:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/y;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/c;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;

    move-result-object v0

    goto :goto_1

    .line 170
    :cond_3
    invoke-direct {p0, v0}, Lu/aly/y;->a([B)I

    move-result v0

    goto :goto_2

    .line 175
    :pswitch_1
    iget-object v0, p0, Lu/aly/y;->h:Lu/aly/aa;

    invoke-virtual {v0}, Lu/aly/aa;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lu/aly/y;->h:Lu/aly/aa;

    invoke-virtual {v0}, Lu/aly/aa;->l()V

    .line 179
    :cond_4
    iget-object v0, p0, Lu/aly/y;->d:Lu/aly/d;

    invoke-virtual {v0}, Lu/aly/d;->d()V

    .line 180
    iget-object v0, p0, Lu/aly/y;->h:Lu/aly/aa;

    invoke-virtual {v0}, Lu/aly/aa;->k()V

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v0, p0, Lu/aly/y;->h:Lu/aly/aa;

    invoke-virtual {v0}, Lu/aly/aa;->k()V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lu/aly/y;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lu/aly/y;->l:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lu/aly/y;->j:Lu/aly/bp;

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lu/aly/y;->c()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lu/aly/y;->b()V

    goto :goto_0
.end method

.method public a(Lu/aly/bp;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lu/aly/y;->j:Lu/aly/bp;

    .line 64
    return-void
.end method

.method public a(Lu/aly/w;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lu/aly/y;->e:Lu/aly/f;

    invoke-virtual {v0, p1}, Lu/aly/f;->a(Lu/aly/w;)V

    .line 76
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lu/aly/y;->k:Z

    .line 68
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lu/aly/y;->l:Z

    .line 72
    return-void
.end method
