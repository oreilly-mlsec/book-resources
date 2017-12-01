.class public Lcom/m/u/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m/u/o$aa;
    }
.end annotation


# static fields
.field public static final aa:Ljava/lang/String;

.field public static final ab:Ljava/lang/String;

.field private static final ac:Ljava/lang/String;

.field private static ah:I


# instance fields
.field private ad:Landroid/content/Context;

.field private ae:Landroid/os/Handler;

.field private af:Ldalvik/system/DexClassLoader;

.field private ag:Lcom/m/u/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->dy:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/o;->ac:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/m/u/o;->ah:I

    sget-object v0, Lcom/m/u/ac;->bc:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/o;->aa:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->bd:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/o;->ab:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/m/u/o;->ad:Landroid/content/Context;

    invoke-static {}, Lcom/m/u/al;->aa()Lcom/m/u/al;

    move-result-object v0

    iput-object v0, p0, Lcom/m/u/o;->ag:Lcom/m/u/al;

    iget-object v0, p0, Lcom/m/u/o;->ag:Lcom/m/u/al;

    invoke-virtual {v0}, Lcom/m/u/al;->ab()Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/m/u/o;->af:Ldalvik/system/DexClassLoader;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/m/u/o;->ae:Landroid/os/Handler;

    sget-object v0, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->ba:Ljava/lang/String;

    const-string v2, "2.0.4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic aa(Lcom/m/u/o;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/m/u/o;->ad:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aa(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/m/u/o;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aa(Lcom/m/u/o;Ldalvik/system/DexClassLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/m/u/o;->af:Ldalvik/system/DexClassLoader;

    return-void
.end method

.method static synthetic ab(Lcom/m/u/o;)Lcom/m/u/al;
    .locals 1

    iget-object v0, p0, Lcom/m/u/o;->ag:Lcom/m/u/al;

    return-object v0
.end method

.method public static ab()Ljava/lang/String;
    .locals 1

    const-string v0, "jdta.db"

    return-object v0
.end method

.method private static ab(Landroid/content/Context;)Ljava/lang/String;
    .locals 15

    const/4 v2, 0x0

    const/4 v0, 0x1

    sget-object v1, Lcom/m/u/o;->ac:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    sget-object v1, Lcom/m/ac/aa;->ax:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v3, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/m/u/o;->aa:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/m/u/aa;->aa(Landroid/content/pm/PackageManager;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/m/u/o;->ah:I

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_1
    sget v1, Lcom/m/u/o;->ah:I

    if-nez v1, :cond_8

    invoke-static {}, Lcom/m/u/o;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/m/ac/aa;->ao:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {}, Lcom/m/u/o;->ac()[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v10, v8

    const/16 v1, 0x200

    new-array v11, v1, [B

    move v1, v2

    :cond_2
    invoke-virtual {v4, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v3, -0x1

    if-ne v12, v3, :cond_6

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/m/u/aa;->aa(Landroid/content/pm/PackageManager;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/m/u/o;->ah:I

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/m/u/o;->aa:Ljava/lang/String;

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v1, 0x2

    sget-object v2, Lcom/m/u/o;->ac:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "   "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/m/u/o;->ah:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_5
    move-object v3, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_6
    move v3, v2

    :goto_3
    if-ge v3, v12, :cond_2

    :try_start_2
    aget-byte v13, v11, v3

    aget-byte v14, v8, v1

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v11, v3

    aget-byte v13, v11, v3

    invoke-virtual {v9, v13}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v10, :cond_7

    move v1, v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/m/ac/aa;->aw:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/m/u/o;->ab:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/m/u/aa;->aa(Landroid/content/pm/PackageManager;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sget v2, Lcom/m/u/o;->ah:I

    if-le v1, v2, :cond_b

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/m/ac/aa;->ao:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    sget-object v4, Lcom/m/ac/aa;->ay:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_9

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/m/u/af;->aa(Ljava/lang/String;)Z

    :cond_9
    invoke-static {v6, v2}, Lcom/m/u/af;->aa(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/m/u/o;->aa:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/m/u/aa;->aa(Landroid/content/pm/PackageManager;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/m/u/o;->ah:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    const/4 v1, 0x3

    sget-object v2, Lcom/m/u/o;->ac:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_2
.end method

.method static synthetic ac(Lcom/m/u/o;)Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/m/u/o;->af:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public static ac()[B
    .locals 1

    const-string v0, "jdta"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic ad()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m/u/o;->ac:Ljava/lang/String;

    return-object v0
.end method

.method private ae()Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/m/u/o;->ad:Landroid/content/Context;

    sget-object v3, Lcom/m/ac/aa;->aw:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/m/u/o;->ad:Landroid/content/Context;

    sget-object v4, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v4, Lcom/m/u/o;->ab:Ljava/lang/String;

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/m/u/o;->ad:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/m/u/aa;->aa(Landroid/content/pm/PackageManager;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sget v4, Lcom/m/u/o;->ah:I

    if-le v2, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/m/ac/aa;->ao:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/m/u/o;->ad:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/m/u/aa;->aa(Landroid/content/pm/PackageManager;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    sget v7, Lcom/m/u/o;->ah:I

    if-gt v6, v7, :cond_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public aa()Lcom/m/u/al;
    .locals 1

    iget-object v0, p0, Lcom/m/u/o;->ag:Lcom/m/u/al;

    return-object v0
.end method

.method public declared-synchronized aa(Ljava/lang/String;Lcom/m/u/ao;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/m/u/o;->af:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/m/u/o;->ag:Lcom/m/u/al;

    invoke-virtual {v0}, Lcom/m/u/al;->ac()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m/u/o;->ag:Lcom/m/u/al;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/m/u/al;->aa(Z)V

    new-instance v0, Lcom/m/u/o$aa;

    invoke-direct {v0, p0}, Lcom/m/u/o$aa;-><init>(Lcom/m/u/o;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/m/u/o$aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/m/u/o;->ae:Landroid/os/Handler;

    new-instance v1, Lcom/m/u/ai;

    invoke-direct {v1, p0, p1, p2}, Lcom/m/u/ai;-><init>(Lcom/m/u/o;Ljava/lang/String;Lcom/m/u/ao;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/m/u/o;->ae()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/m/u/o;->af:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0}, Lcom/m/u/ao;->aa(ZLjava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lcom/m/u/o;->ad:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0}, Lcom/m/u/ao;->aa(ZLjava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    invoke-interface {p2, v0, v1}, Lcom/m/u/ao;->aa(ZLjava/lang/Class;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p2, v0, v1}, Lcom/m/u/ao;->aa(ZLjava/lang/Class;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/m/u/o;->af:Ldalvik/system/DexClassLoader;

    const/4 v0, 0x0

    sput v0, Lcom/m/u/o;->ah:I

    invoke-virtual {p0, p1, p2}, Lcom/m/u/o;->aa(Ljava/lang/String;Lcom/m/u/ao;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method
