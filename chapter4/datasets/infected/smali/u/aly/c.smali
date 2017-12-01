.class public Lu/aly/c;
.super Ljava/lang/Object;
.source "Envelope.java"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:[B

.field private h:[B

.field private i:I

.field private j:I

.field private k:I

.field private l:[B

.field private m:[B

.field private n:Z


# direct methods
.method private constructor <init>([BLjava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lu/aly/c;->a:[B

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lu/aly/c;->b:I

    .line 26
    iput v2, p0, Lu/aly/c;->c:I

    .line 28
    const-string v0, "1.0"

    iput-object v0, p0, Lu/aly/c;->d:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lu/aly/c;->e:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lu/aly/c;->f:[B

    .line 32
    iput-object v1, p0, Lu/aly/c;->g:[B

    .line 33
    iput-object v1, p0, Lu/aly/c;->h:[B

    .line 35
    iput v2, p0, Lu/aly/c;->i:I

    .line 36
    iput v2, p0, Lu/aly/c;->j:I

    .line 37
    iput v2, p0, Lu/aly/c;->k:I

    .line 39
    iput-object v1, p0, Lu/aly/c;->l:[B

    .line 40
    iput-object v1, p0, Lu/aly/c;->m:[B

    .line 42
    iput-boolean v2, p0, Lu/aly/c;->n:Z

    .line 46
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "entity is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p2, p0, Lu/aly/c;->e:Ljava/lang/String;

    .line 51
    array-length v0, p1

    iput v0, p0, Lu/aly/c;->k:I

    .line 52
    invoke-static {p1}, Lu/aly/ce;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/c;->l:[B

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lu/aly/c;->j:I

    .line 55
    iput-object p3, p0, Lu/aly/c;->m:[B

    .line 56
    return-void

    .line 24
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const-string v2, "signature"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 84
    :try_start_0
    invoke-static {p0}, Lu/aly/bs;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {p0}, Lu/aly/bs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 89
    const-string v0, "signature"

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    const-string v0, "serial"

    const/4 v6, 0x1

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 92
    new-instance v0, Lu/aly/c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, p2, p1, v2}, Lu/aly/c;-><init>([BLjava/lang/String;[B)V

    .line 94
    invoke-virtual {v0, v5}, Lu/aly/c;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v6}, Lu/aly/c;->a(I)V

    .line 96
    invoke-virtual {v0}, Lu/aly/c;->b()V

    .line 98
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "serial"

    add-int/lit8 v4, v6, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {v0}, Lu/aly/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    invoke-virtual {v0, p0}, Lu/aly/c;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 105
    goto :goto_0
.end method

.method private a([BI)[B
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lu/aly/c;->m:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v2

    .line 158
    iget-object v1, p0, Lu/aly/c;->l:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v3

    .line 160
    array-length v4, v2

    .line 161
    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [B

    move v1, v0

    .line 164
    :goto_0
    if-ge v1, v4, :cond_0

    .line 165
    mul-int/lit8 v6, v1, 0x2

    aget-byte v7, v3, v1

    aput-byte v7, v5, v6

    .line 166
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v7, v2, v1

    aput-byte v7, v5, v6

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 171
    :goto_1
    if-ge v1, v8, :cond_1

    .line 172
    aget-byte v2, p1, v1

    aput-byte v2, v5, v1

    .line 173
    array-length v2, v5

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    aput-byte v3, v5, v2

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 179
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 180
    const/4 v2, 0x1

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 181
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 182
    const/4 v2, 0x3

    ushr-int/lit8 v3, p2, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 184
    :goto_2
    array-length v2, v5

    if-ge v0, v2, :cond_2

    .line 185
    aget-byte v2, v5, v0

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, v1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 188
    :cond_2
    return-object v5
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 110
    :try_start_0
    invoke-static {p0}, Lu/aly/bs;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {p0}, Lu/aly/bs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 115
    const-string v0, "signature"

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    const-string v0, "serial"

    const/4 v6, 0x1

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 118
    new-instance v0, Lu/aly/c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, p2, p1, v2}, Lu/aly/c;-><init>([BLjava/lang/String;[B)V

    .line 120
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lu/aly/c;->a(Z)V

    .line 121
    invoke-virtual {v0, v5}, Lu/aly/c;->a(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v6}, Lu/aly/c;->a(I)V

    .line 123
    invoke-virtual {v0}, Lu/aly/c;->b()V

    .line 125
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "serial"

    add-int/lit8 v4, v6, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {v0}, Lu/aly/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    invoke-virtual {v0, p0}, Lu/aly/c;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 132
    goto :goto_0
.end method

.method private d()[B
    .locals 5

    .prologue
    .line 192
    iget-object v0, p0, Lu/aly/c;->a:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lu/aly/c;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private e()[B
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    iget-object v1, p0, Lu/aly/c;->f:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v1, p0, Lu/aly/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Lu/aly/c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    iget v1, p0, Lu/aly/c;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lu/aly/c;->g:[B

    invoke-static {v1}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lu/aly/c;->f:[B

    invoke-static {v0}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lu/aly/c;->i:I

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/c;->f:[B

    .line 68
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lu/aly/c;->n:Z

    .line 80
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/16 v1, 0x10

    .line 139
    iget-object v0, p0, Lu/aly/c;->f:[B

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lu/aly/c;->d()[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/c;->f:[B

    .line 143
    :cond_0
    iget-boolean v0, p0, Lu/aly/c;->n:Z

    if-eqz v0, :cond_1

    .line 144
    new-array v0, v1, [B

    .line 146
    :try_start_0
    iget-object v1, p0, Lu/aly/c;->f:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v1, p0, Lu/aly/c;->l:[B

    invoke-static {v1, v0}, Lcom/umeng/analytics/b;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/c;->l:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_1
    :goto_0
    iget-object v0, p0, Lu/aly/c;->f:[B

    iget v1, p0, Lu/aly/c;->j:I

    invoke-direct {p0, v0, v1}, Lu/aly/c;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/c;->g:[B

    .line 153
    invoke-direct {p0}, Lu/aly/c;->e()[B

    move-result-object v0

    iput-object v0, p0, Lu/aly/c;->h:[B

    .line 154
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 233
    iget-object v0, p0, Lu/aly/c;->e:Ljava/lang/String;

    .line 234
    invoke-static {p1}, Lu/aly/f;->a(Landroid/content/Context;)Lu/aly/f;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/f;->b()Lu/aly/f$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lu/aly/f$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lu/aly/c;->f:[B

    invoke-static {v2}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 236
    new-array v3, v7, [B

    .line 237
    iget-object v4, p0, Lu/aly/c;->f:[B

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    invoke-static {v3}, Lcom/umeng/analytics/b;->b([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 240
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 241
    const-string v5, "appkey"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    if-eqz v1, :cond_0

    .line 243
    const-string v0, "umid"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    :cond_0
    const-string v0, "signature"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v0, "checksum"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".umeng"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 255
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "exchangeIdentity.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lu/aly/cf;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()[B
    .locals 2

    .prologue
    .line 208
    new-instance v1, Lu/aly/br;

    invoke-direct {v1}, Lu/aly/br;-><init>()V

    .line 210
    iget-object v0, p0, Lu/aly/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lu/aly/br;->a(Ljava/lang/String;)Lu/aly/br;

    .line 211
    iget-object v0, p0, Lu/aly/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lu/aly/br;->b(Ljava/lang/String;)Lu/aly/br;

    .line 212
    iget-object v0, p0, Lu/aly/c;->f:[B

    invoke-static {v0}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/aly/br;->c(Ljava/lang/String;)Lu/aly/br;

    .line 213
    iget v0, p0, Lu/aly/c;->i:I

    invoke-virtual {v1, v0}, Lu/aly/br;->a(I)Lu/aly/br;

    .line 214
    iget v0, p0, Lu/aly/c;->j:I

    invoke-virtual {v1, v0}, Lu/aly/br;->c(I)Lu/aly/br;

    .line 215
    iget v0, p0, Lu/aly/c;->k:I

    invoke-virtual {v1, v0}, Lu/aly/br;->d(I)Lu/aly/br;

    .line 217
    iget-object v0, p0, Lu/aly/c;->l:[B

    invoke-virtual {v1, v0}, Lu/aly/br;->a([B)Lu/aly/br;

    .line 218
    iget-boolean v0, p0, Lu/aly/c;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lu/aly/br;->e(I)Lu/aly/br;

    .line 220
    iget-object v0, p0, Lu/aly/c;->g:[B

    invoke-static {v0}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/aly/br;->d(Ljava/lang/String;)Lu/aly/br;

    .line 221
    iget-object v0, p0, Lu/aly/c;->h:[B

    invoke-static {v0}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/aly/br;->e(Ljava/lang/String;)Lu/aly/br;

    .line 224
    :try_start_0
    new-instance v0, Lu/aly/cs;

    invoke-direct {v0}, Lu/aly/cs;-><init>()V

    invoke-virtual {v0, v1}, Lu/aly/cs;->a(Lu/aly/cj;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :goto_1
    return-object v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    const-string v3, "version : %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lu/aly/c;->d:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v3, "address : %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lu/aly/c;->e:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v3, "signature : %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lu/aly/c;->f:[B

    invoke-static {v5}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v3, "serial : %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lu/aly/c;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v3, "timestamp : %d\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lu/aly/c;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v3, "length : %d\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lu/aly/c;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v3, "guid : %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lu/aly/c;->g:[B

    invoke-static {v5}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v3, "checksum : %s "

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lu/aly/c;->h:[B

    invoke-static {v5}, Lcom/umeng/analytics/b;->a([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v3, "codex : %d"

    new-array v4, v0, [Ljava/lang/Object;

    iget-boolean v5, p0, Lu/aly/c;->n:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 272
    goto :goto_0
.end method
