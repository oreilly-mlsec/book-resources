.class public Lcom/st/m/u/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/st/m/c/qr;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/st/m/c/qr;
    .locals 2

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/st/m/u/j;->if(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-static {p0}, Lcom/st/m/u/j;->j(Landroid/content/Context;)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/st/m/c/qr;->a(B)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-static {p0}, Lcom/st/m/u/j;->da(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/st/m/c/qr;->if(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "1.0.0.2"

    sget-object v1, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v1, v0}, Lcom/st/m/c/qr;->ks(Ljava/lang/String;)V

    const/16 v0, 0x3ea

    sget-object v1, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v1, v0}, Lcom/st/m/c/qr;->c(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mTerminalInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v1}, Lcom/st/m/c/qr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/st/m/u/ef;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    const-string v1, "notfound"

    invoke-virtual {v0, v1}, Lcom/st/m/c/qr;->if(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/st/m/u/ef;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "x86"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/proc/cpuinfo"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/st/m/u/SBD;->a(Landroid/content/Context;)Lcom/st/m/u/SBD;

    move-result-object v0

    sget-object v1, Lcom/st/m/da/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/st/m/u/SBD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/st/m/u/f;->a:Ljava/lang/String;

    sget-object v2, Lcom/st/m/u/a;->Tj:[B

    invoke-static {v2}, Lcom/st/m/u/c;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static c()I
    .locals 4

    sget-object v0, Lcom/st/m/u/a;->M:[B

    invoke-static {v0}, Lcom/st/m/u/c;->a([B)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit16 v0, v2, 0x400

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/st/m/u/j;->ef(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/st/m/u/a;->N:[B

    invoke-static {v1}, Lcom/st/m/u/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/st/m/u/j;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static da(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/st/m/u/j;->ef(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/st/m/u/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ef(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/st/m/u/SBD;->a(Landroid/content/Context;)Lcom/st/m/u/SBD;

    move-result-object v0

    sget-object v1, Lcom/st/m/da/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/st/m/u/SBD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/st/m/u/f;->a:Ljava/lang/String;

    sget-object v2, Lcom/st/m/u/a;->U:[B

    invoke-static {v2}, Lcom/st/m/u/c;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/st/m/u/SBD;->a(Landroid/content/Context;)Lcom/st/m/u/SBD;

    move-result-object v0

    sget-object v1, Lcom/st/m/da/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/st/m/u/SBD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/st/m/u/f;->a:Ljava/lang/String;

    sget-object v2, Lcom/st/m/u/a;->V:[B

    invoke-static {v2}, Lcom/st/m/u/c;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static gt(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_1
    sget-object v4, Lcom/st/m/u/a;->Oh:[B

    invoke-static {v4}, Lcom/st/m/u/c;->a([B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Lcom/st/m/u/gt;

    invoke-direct {v0}, Lcom/st/m/u/gt;-><init>()V

    invoke-virtual {v0, p0}, Lcom/st/m/u/gt;->a(Landroid/content/Context;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/st/m/u/gt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v3, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method

.method public static hd(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/st/m/u/gt;

    invoke-direct {v0}, Lcom/st/m/u/gt;-><init>()V

    invoke-virtual {v0, p0}, Lcom/st/m/u/gt;->a(Landroid/content/Context;)V

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lcom/st/m/u/gt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static if(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/st/m/c/qr;

    invoke-direct {v0}, Lcom/st/m/c/qr;-><init>()V

    sput-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    :try_start_0
    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v3, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Lcom/st/m/c/qr;->a(S)V

    sget-object v3, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-short v0, v0

    invoke-virtual {v3, v0}, Lcom/st/m/c/qr;->b(S)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-static {}, Lcom/st/m/u/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->da(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-static {}, Lcom/st/m/u/j;->c()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->c(S)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    invoke-static {p0}, Lcom/st/m/u/j;->gt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    sget-object v3, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v3, v0}, Lcom/st/m/c/qr;->ef(Ljava/lang/String;)V

    :try_start_4
    invoke-static {p0}, Lcom/st/m/u/j;->hd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    sget-object v3, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v3, v0}, Lcom/st/m/c/qr;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->a(I)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->b(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-static {p0}, Lcom/st/m/u/j;->j(Landroid/content/Context;)B

    move-result v3

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->a(B)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->gt(Ljava/lang/String;)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-static {p0}, Lcom/st/m/u/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->hd(Ljava/lang/String;)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-static {p0}, Lcom/st/m/u/j;->da(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->if(Ljava/lang/String;)V

    const-string v0, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_5
    sget-object v3, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    if-eqz v0, :cond_3

    :goto_6
    int-to-byte v0, v1

    invoke-virtual {v3, v0}, Lcom/st/m/c/qr;->b(B)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/st/m/c/qr;->j(Ljava/lang/String;)V

    const/16 v0, 0x3ea

    sget-object v1, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v1, v0}, Lcom/st/m/c/qr;->c(I)V

    :try_start_5
    const-string v0, "1.0.0.2"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_7
    sget-object v1, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v1, v0}, Lcom/st/m/c/qr;->ks(Ljava/lang/String;)V

    sget-object v0, Lcom/st/m/da/b;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/st/m/da/b;->if:Ljava/lang/String;

    const-string v2, "0.0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v1, v0}, Lcom/st/m/c/qr;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/st/m/u/j;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/st/m/u/da;->a(J)I

    move-result v0

    sget-object v1, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v1, v0}, Lcom/st/m/c/qr;->da(I)V

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    const-string v3, "android"

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v0, v2}, Lcom/st/m/c/qr;->a(S)V

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v0, v2}, Lcom/st/m/c/qr;->b(S)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/st/m/c/qr;->da(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    sget-object v0, Lcom/st/m/u/j;->a:Lcom/st/m/c/qr;

    invoke-virtual {v0, v2}, Lcom/st/m/c/qr;->c(S)V

    goto/16 :goto_3

    :cond_2
    move v0, v2

    goto :goto_5

    :cond_3
    const/4 v1, 0x2

    goto :goto_6

    :catch_4
    move-exception v1

    const-string v0, "android"

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v0

    goto/16 :goto_4
.end method

.method private static j(Landroid/content/Context;)B
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    int-to-byte v0, v0

    goto :goto_0

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
