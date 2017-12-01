.class public Lcom/umeng/analytics/h$a;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/io/File;

.field private c:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 204
    const-string v0, ".um"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/h$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/h$a;->a:I

    .line 285
    new-instance v0, Lcom/umeng/analytics/h$a$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/h$a$1;-><init>(Lcom/umeng/analytics/h$a;)V

    iput-object v0, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    .line 208
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    .line 209
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 212
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/h$b;)V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/h$b;->a(Ljava/io/File;)V

    .line 229
    array-length v2, v1

    .line 231
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 234
    :try_start_0
    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Lcom/umeng/analytics/h$b;->b(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 238
    if-eqz v3, :cond_0

    .line 239
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 231
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v3

    .line 239
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    throw v0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/h$b;->c(Ljava/io/File;)V

    .line 244
    :cond_2
    return-void
.end method

.method public a([B)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 247
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    return-void

    .line 250
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "um_cache_%d.env"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    :try_start_0
    invoke-static {v2, p1}, Lu/aly/cf;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_0

    array-length v2, v1

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 260
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 261
    array-length v2, v1

    add-int/lit8 v2, v2, -0xa

    .line 262
    :goto_1
    if-ge v0, v2, :cond_0

    .line 263
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 270
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 271
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 272
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 280
    array-length v0, v0

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
