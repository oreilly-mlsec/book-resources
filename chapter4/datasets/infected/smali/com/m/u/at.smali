.class public Lcom/m/u/at;
.super Ljava/lang/Object;


# static fields
.field private static aa:Lcom/m/ab/aw;

.field private static ab:Lcom/m/ab/aw;


# direct methods
.method public static aa(Landroid/content/Context;)Lcom/m/ab/aw;
    .locals 4

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/m/u/at;->ak(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-static {p0}, Lcom/m/u/at;->al(Landroid/content/Context;)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/m/ab/aw;->aa(B)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-static {p0}, Lcom/m/u/at;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m/ab/aw;->ai(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/m/u/ak;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v1, v0}, Lcom/m/ab/aw;->ak(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/m/u/ak;->aa(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v1, v0}, Lcom/m/ab/aw;->ac(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/m/u/au;->aa(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/m/ab/aw;->am(Ljava/lang/String;)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-static {p0}, Lcom/m/u/at;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m/ab/aw;->an(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mTerminalInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v1}, Lcom/m/ab/aw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/String;)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    const-string v1, "notfound"

    invoke-virtual {v0, v1}, Lcom/m/ab/aw;->ai(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static aa()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/m/u/at;->ab:Lcom/m/ab/aw;

    sput-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    return-void
.end method

.method public static ab(Landroid/content/Context;)Lcom/m/ab/aw;
    .locals 1

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/m/u/at;->ak(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    return-object v0
.end method

.method public static ab()Ljava/lang/String;
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

.method private static ac()I
    .locals 4

    sget-object v0, Lcom/m/u/ac;->eu:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

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

.method public static ac(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/m/u/d;->aa(Landroid/content/Context;)Lcom/m/u/d;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/m/u/d;->aa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/m/u/ah;->aa:Ljava/lang/String;

    sget-object v2, Lcom/m/u/ac;->fk:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static ad(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/m/u/at;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/m/u/ac;->ev:[B

    invoke-static {v1}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/m/u/at;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ae(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/m/u/at;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/m/u/at;->ac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static af(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/m/u/d;->aa(Landroid/content/Context;)Lcom/m/u/d;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/m/u/d;->aa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/m/u/ah;->aa:Ljava/lang/String;

    sget-object v2, Lcom/m/u/ac;->fl:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static ag(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/m/u/d;->aa(Landroid/content/Context;)Lcom/m/u/d;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/m/u/d;->aa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/m/u/ah;->aa:Ljava/lang/String;

    sget-object v2, Lcom/m/u/ac;->fn:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static ah(Landroid/content/Context;)Ljava/lang/String;
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
    sget-object v4, Lcom/m/u/ac;->ew:[B

    invoke-static {v4}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

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

    new-instance v0, Lcom/m/u/ap;

    invoke-direct {v0}, Lcom/m/u/ap;-><init>()V

    invoke-virtual {v0, p0}, Lcom/m/u/ap;->aa(Landroid/content/Context;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/m/u/ap;->aa(Ljava/lang/String;)Ljava/lang/String;

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

.method public static ai(Landroid/content/Context;)Ljava/lang/String;
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

    new-instance v0, Lcom/m/u/ap;

    invoke-direct {v0}, Lcom/m/u/ap;-><init>()V

    invoke-virtual {v0, p0}, Lcom/m/u/ap;->aa(Landroid/content/Context;)V

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lcom/m/u/ap;->ab(Ljava/lang/String;)Ljava/lang/String;

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

.method public static aj(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x31

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sget-object v1, Lcom/m/ac/aa;->cg:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/m/u/aa;->aa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    aput-byte v2, v0, v3

    :cond_0
    :goto_0
    sget-object v1, Lcom/m/ac/aa;->ci:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/m/u/aa;->aa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    :cond_1
    sget-object v1, Lcom/m/ac/aa;->cj:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/m/u/aa;->aa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_3
    sget-object v1, Lcom/m/ac/aa;->ch:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/m/u/aa;->aa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    aput-byte v2, v0, v3

    goto :goto_0

    :array_0
    .array-data 1
        0x30t
        0x30t
        0x30t
    .end array-data
.end method

.method private static ak(Landroid/content/Context;)V
    .locals 6

    const/16 v3, 0xcc

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/m/ab/aw;

    invoke-direct {v0}, Lcom/m/ab/aw;-><init>()V

    sput-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    :try_start_0
    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->aa(Ljava/lang/String;)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ab(Ljava/lang/String;)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "android_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ac(Ljava/lang/String;)V
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

    sget-object v4, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Lcom/m/ab/aw;->aa(S)V

    sget-object v4, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-short v0, v0

    invoke-virtual {v4, v0}, Lcom/m/ab/aw;->ab(S)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-static {}, Lcom/m/u/at;->ab()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ad(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-static {}, Lcom/m/u/at;->ac()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ac(S)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    invoke-static {p0}, Lcom/m/u/at;->ah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    sget-object v4, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v4, v0}, Lcom/m/ab/aw;->ae(Ljava/lang/String;)V

    :try_start_4
    invoke-static {p0}, Lcom/m/u/at;->ai(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    sget-object v4, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v4, v0}, Lcom/m/ab/aw;->af(Ljava/lang/String;)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->aa(I)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ab(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-static {p0}, Lcom/m/u/at;->al(Landroid/content/Context;)B

    move-result v4

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->aa(B)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ag(Ljava/lang/String;)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-static {p0}, Lcom/m/u/at;->ad(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ah(Ljava/lang/String;)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-static {p0}, Lcom/m/u/at;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ai(Ljava/lang/String;)V

    sget-object v0, Lcom/m/ac/aa;->cm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_5
    sget-object v4, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    if-eqz v0, :cond_4

    :goto_6
    int-to-byte v0, v1

    invoke-virtual {v4, v0}, Lcom/m/ab/aw;->ab(B)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m/ab/aw;->aj(Ljava/lang/String;)V

    :try_start_5
    invoke-static {p0}, Lcom/m/u/ak;->aa(Landroid/content/Context;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :cond_2
    :goto_7
    sget-object v1, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v1, v0}, Lcom/m/ab/aw;->ac(I)V

    const-string v0, "2.0.4"

    :try_start_6
    invoke-static {p0}, Lcom/m/u/ak;->ab(Landroid/content/Context;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v0

    :goto_8
    sget-object v1, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v1, v0}, Lcom/m/ab/aw;->ak(Ljava/lang/String;)V

    sget-object v0, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->ba:Ljava/lang/String;

    const-string v2, "0.0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v1, v0}, Lcom/m/ab/aw;->al(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->aa(Ljava/lang/String;)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ab(Ljava/lang/String;)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    const-string v4, "android"

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ac(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v0, v2}, Lcom/m/ab/aw;->aa(S)V

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v0, v2}, Lcom/m/ab/aw;->ab(S)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/m/ab/aw;->ad(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    sget-object v0, Lcom/m/u/at;->aa:Lcom/m/ab/aw;

    invoke-virtual {v0, v2}, Lcom/m/ab/aw;->ac(S)V

    goto/16 :goto_3

    :cond_3
    move v0, v2

    goto :goto_5

    :cond_4
    const/4 v1, 0x2

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    goto :goto_7

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_6
    move-exception v0

    goto/16 :goto_4
.end method

.method private static al(Landroid/content/Context;)B
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
