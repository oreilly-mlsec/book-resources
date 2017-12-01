.class public Lu/aly/ak;
.super Ljava/lang/Object;
.source "ABTest.java"

# interfaces
.implements Lu/aly/w;


# static fields
.field private static h:Lu/aly/ak;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lu/aly/ak;->h:Lu/aly/ak;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/ak;->a:Z

    .line 21
    iput v1, p0, Lu/aly/ak;->e:F

    .line 22
    iput v1, p0, Lu/aly/ak;->f:F

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ak;->g:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lu/aly/ak;->g:Landroid/content/Context;

    .line 41
    invoke-virtual {p0, p2, p3}, Lu/aly/ak;->a(Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/ak;
    .locals 4

    .prologue
    .line 29
    const-class v1, Lu/aly/ak;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/ak;->h:Lu/aly/ak;

    if-nez v0, :cond_0

    .line 30
    invoke-static {p0}, Lu/aly/f;->a(Landroid/content/Context;)Lu/aly/f;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/f;->b()Lu/aly/f$a;

    move-result-object v0

    .line 31
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/aly/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lu/aly/f$a;->d(I)I

    move-result v0

    .line 33
    new-instance v3, Lu/aly/ak;

    invoke-direct {v3, p0, v2, v0}, Lu/aly/ak;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lu/aly/ak;->h:Lu/aly/ak;

    .line 36
    :cond_0
    sget-object v0, Lu/aly/ak;->h:Lu/aly/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 88
    aget-object v3, v2, v0

    const-string v4, "SIG7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    aget-object v3, v2, v1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 90
    aget-object v4, v2, v6

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    .line 91
    if-ne v3, v4, :cond_2

    move v0, v1

    .line 92
    goto :goto_0

    .line 96
    :cond_2
    aget-object v3, v2, v0

    const-string v4, "FIXED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    aget-object v3, v2, v6

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 98
    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    if-lt v3, v2, :cond_0

    if-lt v2, v1, :cond_0

    move v0, v1

    .line 100
    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)F
    .locals 2

    .prologue
    .line 45
    mul-int/lit8 v0, p2, 0x2

    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 48
    :cond_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    .line 49
    const/high16 v1, 0x49800000    # 1048576.0f

    .line 51
    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 114
    const/4 v0, 0x2

    aget-object v0, v6, v0

    const-string v3, "SIG13"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 115
    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 118
    :goto_1
    iget v3, p0, Lu/aly/ak;->e:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    .line 119
    iput-boolean v2, p0, Lu/aly/ak;->a:Z

    goto :goto_0

    .line 124
    :cond_1
    aget-object v0, v6, v2

    const-string v3, "SIG7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    aget-object v0, v6, v9

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 126
    array-length v0, v7

    new-array v3, v0, [F

    move v0, v2

    .line 127
    :goto_2
    array-length v8, v7

    if-ge v0, v8, :cond_2

    .line 128
    aget-object v8, v7, v0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v3, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 133
    :goto_3
    const/4 v3, 0x4

    aget-object v3, v6, v3

    const-string v7, "RPT"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    const/4 v3, 0x5

    aget-object v3, v6, v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 135
    array-length v3, v6

    new-array v4, v3, [I

    move v3, v2

    .line 136
    :goto_4
    array-length v7, v6

    if-ge v3, v7, :cond_3

    .line 137
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v3

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    move v3, v1

    move v1, v2

    .line 143
    :goto_5
    array-length v6, v0

    if-ge v1, v6, :cond_6

    .line 144
    aget v6, v0, v1

    add-float/2addr v3, v6

    .line 145
    iget v6, p0, Lu/aly/ak;->f:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_4

    .line 151
    :goto_6
    if-eq v1, v5, :cond_5

    .line 152
    iput-boolean v9, p0, Lu/aly/ak;->a:Z

    .line 153
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lu/aly/ak;->d:I

    .line 154
    aget v0, v4, v1

    iput v0, p0, Lu/aly/ak;->b:I

    goto/16 :goto_0

    .line 143
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 156
    :cond_5
    iput-boolean v2, p0, Lu/aly/ak;->a:Z

    goto/16 :goto_0

    :cond_6
    move v1, v5

    goto :goto_6

    :cond_7
    move-object v0, v4

    goto :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 168
    const/4 v0, 0x0

    .line 169
    const/4 v2, 0x2

    aget-object v2, v4, v2

    const-string v5, "SIG13"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 173
    :cond_1
    iget v2, p0, Lu/aly/ak;->e:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    .line 174
    iput-boolean v3, p0, Lu/aly/ak;->a:Z

    goto :goto_0

    .line 179
    :cond_2
    aget-object v0, v4, v3

    const-string v2, "FIXED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    aget-object v0, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    :goto_1
    const/4 v2, 0x0

    .line 184
    const/4 v5, 0x4

    aget-object v5, v4, v5

    const-string v6, "RPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 185
    const/4 v2, 0x5

    aget-object v2, v4, v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 186
    array-length v2, v5

    new-array v4, v2, [I

    move v2, v3

    .line 187
    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 188
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v2

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object v2, v4

    .line 192
    :cond_4
    if-eq v0, v1, :cond_5

    .line 193
    iput-boolean v7, p0, Lu/aly/ak;->a:Z

    .line 194
    iput v0, p0, Lu/aly/ak;->d:I

    .line 195
    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    iput v0, p0, Lu/aly/ak;->b:I

    goto :goto_0

    .line 197
    :cond_5
    iput-boolean v3, p0, Lu/aly/ak;->a:Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 56
    iput p2, p0, Lu/aly/ak;->c:I

    .line 57
    iget-object v0, p0, Lu/aly/ak;->g:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    :cond_0
    iput-boolean v2, p0, Lu/aly/ak;->a:Z

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0, v0, v1}, Lu/aly/ak;->b(Ljava/lang/String;I)F

    move-result v1

    iput v1, p0, Lu/aly/ak;->e:F

    .line 65
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lu/aly/ak;->b(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lu/aly/ak;->f:F

    .line 67
    const-string v0, "SIG7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-direct {p0, p1}, Lu/aly/ak;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    iput-boolean v2, p0, Lu/aly/ak;->a:Z

    .line 74
    const-string v1, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 69
    :cond_3
    :try_start_1
    const-string v0, "FIXED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0, p1}, Lu/aly/ak;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lu/aly/f$a;)V
    .locals 2

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu/aly/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu/aly/f$a;->d(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lu/aly/ak;->a(Ljava/lang/String;I)V

    .line 228
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lu/aly/ak;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lu/aly/ak;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lu/aly/ak;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lu/aly/ak;->d:I

    return v0
.end method

.method public e()Ljava/util/Map;
    .locals 3
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
    .line 218
    iget-boolean v0, p0, Lu/aly/ak;->a:Z

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    const-string v1, "client_test"

    iget v2, p0, Lu/aly/ak;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    const-string v1, " p13:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget v1, p0, Lu/aly/ak;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, " p07:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget v1, p0, Lu/aly/ak;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v1, p0, Lu/aly/ak;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, " interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v1, p0, Lu/aly/ak;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
