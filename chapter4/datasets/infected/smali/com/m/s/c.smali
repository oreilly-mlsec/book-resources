.class public Lcom/m/s/c;
.super Lcom/m/s/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m/s/c$aa;,
        Lcom/m/s/c$ab;
    }
.end annotation


# static fields
.field public static final aa:Ljava/lang/String;

.field public static ab:Z


# instance fields
.field private ah:Lcom/m/s/c$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->dx:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/s/c;->aa:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/m/s/c;->ab:Z

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/m/s/i;-><init>(ILandroid/content/Context;Landroid/os/Handler;)V

    const-class v0, Lcom/m/ab/aj;

    invoke-static {v0}, Lcom/m/ab/as;->aa(Ljava/lang/Class;)Z

    const-class v0, Lcom/m/ab/ak;

    invoke-static {v0}, Lcom/m/ab/as;->aa(Ljava/lang/Class;)Z

    const-class v0, Lcom/m/ab/af;

    invoke-static {v0}, Lcom/m/ab/as;->aa(Ljava/lang/Class;)Z

    const-class v0, Lcom/m/ab/ag;

    invoke-static {v0}, Lcom/m/ab/as;->aa(Ljava/lang/Class;)Z

    return-void
.end method

.method public static aa(Landroid/content/Context;)I
    .locals 14

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/m/u/ak;->ac(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/m/u/ak;->aa(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/m/u/o;->ab()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/m/ac/aa;->ao:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/m/ac/aa;->ax:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {}, Lcom/m/u/o;->ac()[B

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v9, v7

    const/16 v0, 0x200

    new-array v10, v0, [B

    move v0, v1

    :cond_3
    invoke-virtual {v6, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v3, -0x1

    if-ne v11, v3, :cond_4

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/m/u/aa;->aa(Landroid/content/pm/PackageManager;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/m/u/o;->aa:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v1, 0x3

    sget-object v2, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const/4 v2, 0x4

    sget-object v3, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/m/u/ag;->aa(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v3, v1

    :goto_2
    if-ge v3, v11, :cond_3

    :try_start_2
    aget-byte v12, v10, v3

    aget-byte v13, v7, v0

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v3

    aget-byte v12, v10, v3

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v9, :cond_5

    move v0, v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method private aa(Lcom/m/ab/ak;)V
    .locals 13

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/m/ab/ak;->aa()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/m/s/c;->ac:Landroid/content/Context;

    invoke-static {v0}, Lcom/m/ac/ab;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v1, Lcom/m/ac/aa;->aw:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/m/ab/ak;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/m/ab/ak;->ad()I

    move-result v2

    invoke-virtual {p1}, Lcom/m/ab/ak;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/m/s/c;->aa(Ljava/lang/String;ILjava/lang/String;Ljava/io/File;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/m/ac/aa;->ao:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m/s/c;->ac:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/m/u/aa;->aa(Landroid/content/pm/PackageManager;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p1}, Lcom/m/ab/ak;->ad()I

    move-result v7

    if-lt v0, v7, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/m/u/ac;->ao:[B

    invoke-static {v7}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v9, Lcom/m/ac/aa;->aw:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/m/u/aj;->aa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/m/ab/ak;->ac()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p1}, Lcom/m/ab/ak;->ac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v6, v7}, Lcom/m/u/af;->aa(Ljava/io/File;Ljava/io/File;)V

    iget-object v7, p0, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v8, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    sget-object v9, Lcom/m/u/o;->ab:Ljava/lang/String;

    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v8, Lcom/m/ac/aa;->ax:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v0, v1

    :goto_3
    if-lt v0, v10, :cond_6

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/m/ac/aa;->ao:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v10, Lcom/m/ac/aa;->ax:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v6, v8}, Lcom/m/u/af;->aa(Ljava/io/File;Ljava/io/File;)V

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    sget-object v7, Lcom/m/u/o;->aa:Ljava/lang/String;

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/m/u/at;->aa()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    sget-object v6, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_5
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto/16 :goto_2

    :cond_6
    :try_start_3
    aget-object v11, v9, v0

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/16 v0, 0x9

    sget-object v1, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic aa(Lcom/m/s/c;Lcom/m/ab/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m/s/c;->aa(Lcom/m/ab/ak;)V

    return-void
.end method

.method private aa(Ljava/lang/String;ILjava/lang/String;Ljava/io/File;)V
    .locals 6

    new-instance v0, Lcom/m/s/c$ab;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/m/s/c$ab;-><init>(Lcom/m/s/c;Ljava/lang/String;ILjava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lcom/m/s/c;->ah:Lcom/m/s/c$ab;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/m/s/c;->ah:Lcom/m/s/c$ab;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected aa()V
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->aa(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/m/s/i;->aa()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/m/s/c;->ab:Z

    invoke-virtual {p0}, Lcom/m/s/c;->ac()V

    return-void
.end method

.method public aa(Landroid/content/Intent;II)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/m/s/c;->ab:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/m/s/c;->ab:Z

    invoke-virtual {p0}, Lcom/m/s/c;->ab()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    sget-object v1, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aa(Lcom/m/ac/ac;)V
    .locals 4

    new-instance v0, Lcom/m/s/c$aa;

    invoke-direct {v0, p0, p1}, Lcom/m/s/c$aa;-><init>(Lcom/m/s/c;Lcom/m/ac/ac;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
