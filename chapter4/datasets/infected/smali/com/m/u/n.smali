.class public Lcom/m/u/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m/u/n$aa;
    }
.end annotation


# static fields
.field public static final ACTION_TAG:[B

.field public static final CMD1_TAG:[B

.field public static final CMD2_TAG:[B

.field public static final CMDUSER_TAG:[B

.field public static final FILES_TAG:[B

.field public static final LOOKLOCK_TAG:[B

.field public static final LOOK_TAG:[B

.field public static final MYUSERHANDLE_TAG:[B

.field public static final SERIALNUMBER_TAG:[B

.field public static final USER_TAG:[B

.field private static instance:Lcom/m/u/n;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x10

    const/16 v2, 0x8

    const/16 v1, 0xc

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/m/u/n;->LOOK_TAG:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/m/u/n;->FILES_TAG:[B

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/m/u/n;->CMD1_TAG:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/m/u/n;->CMD2_TAG:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/m/u/n;->CMDUSER_TAG:[B

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/m/u/n;->ACTION_TAG:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/m/u/n;->LOOKLOCK_TAG:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/m/u/n;->USER_TAG:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/m/u/n;->MYUSERHANDLE_TAG:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/m/u/n;->SERIALNUMBER_TAG:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x62t
        0x47t
        0x39t
        0x76t
        0x61t
        0x77t
        0x3dt
        0x3dt
    .end array-data

    :array_1
    .array-data 1
        0x4ct
        0x32t
        0x5at
        0x70t
        0x62t
        0x47t
        0x56t
        0x7at
        0x4ct
        0x77t
        0x3dt
        0x3dt
    .end array-data

    :array_2
    .array-data 1
        0x59t
        0x57t
        0x30t
        0x67t
        0x63t
        0x33t
        0x52t
        0x68t
        0x63t
        0x6et
        0x52t
        0x7at
        0x5at
        0x58t
        0x4at
        0x32t
        0x61t
        0x57t
        0x4et
        0x6ct
    .end array-data

    :array_3
    .array-data 1
        0x59t
        0x32t
        0x68t
        0x74t
        0x62t
        0x32t
        0x51t
        0x67t
        0x4et
        0x7at
        0x63t
        0x33t
        0x49t
        0x41t
        0x3dt
        0x3dt
    .end array-data

    :array_4
    .array-data 1
        0x49t
        0x43t
        0x30t
        0x74t
        0x64t
        0x58t
        0x4et
        0x6ct
        0x63t
        0x69t
        0x41t
        0x3dt
    .end array-data

    :array_5
    .array-data 1
        0x59t
        0x32t
        0x39t
        0x74t
        0x4ct
        0x6dt
        0x74t
        0x74t
        0x61t
        0x53t
        0x35t
        0x77t
        0x63t
        0x6dt
        0x38t
        0x75t
        0x59t
        0x57t
        0x4et
        0x30t
        0x61t
        0x57t
        0x39t
        0x75t
    .end array-data

    :array_6
    .array-data 1
        0x4ct
        0x6et
        0x52t
        0x72t
        0x4ct
        0x6et
        0x52t
        0x76t
        0x59t
        0x32t
        0x77t
        0x3dt
    .end array-data

    :array_7
    .array-data 1
        0x64t
        0x58t
        0x4et
        0x6ct
        0x63t
        0x67t
        0x3dt
        0x3dt
    .end array-data

    :array_8
    .array-data 1
        0x62t
        0x58t
        0x6ct
        0x56t
        0x63t
        0x32t
        0x56t
        0x79t
        0x53t
        0x47t
        0x46t
        0x75t
        0x5at
        0x47t
        0x78t
        0x6ct
    .end array-data

    :array_9
    .array-data 1
        0x5at
        0x32t
        0x56t
        0x30t
        0x55t
        0x32t
        0x56t
        0x79t
        0x61t
        0x57t
        0x46t
        0x73t
        0x54t
        0x6et
        0x56t
        0x74t
        0x59t
        0x6dt
        0x56t
        0x79t
        0x52t
        0x6dt
        0x39t
        0x79t
        0x56t
        0x58t
        0x4et
        0x6ct
        0x63t
        0x67t
        0x3dt
        0x3dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/m/u/n;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/m/u/n;->exec(Ljava/lang/String;)V

    return-void
.end method

.method private copyBigDataToSD(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v2, v0, [B

    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0
.end method

.method private exec(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/m/u/n;->CMD1_TAG:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/m/u/n;->getUserSerial()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/m/u/n;->CMDUSER_TAG:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/m/u/n;->ACTION_TAG:[B

    invoke-static {v1}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/m/u/n;->LOOKLOCK_TAG:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/m/u/n;->CMD2_TAG:[B

    invoke-static {v3}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/m/u/n;->LOOK_TAG:[B

    invoke-static {v3}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/m/u/n;->LOOK_TAG:[B

    invoke-static {v3}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    :try_start_0
    const-string v2, "sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private exist(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/m/u/n;
    .locals 1

    sget-object v0, Lcom/m/u/n;->instance:Lcom/m/u/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/m/u/n;

    invoke-direct {v0}, Lcom/m/u/n;-><init>()V

    sput-object v0, Lcom/m/u/n;->instance:Lcom/m/u/n;

    :cond_0
    sget-object v0, Lcom/m/u/n;->instance:Lcom/m/u/n;

    return-object v0
.end method


# virtual methods
.method public getUserSerial()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    sget-object v0, Lcom/m/u/n;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/m/u/n;->USER_TAG:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-class v2, Landroid/os/Process;

    sget-object v3, Lcom/m/u/n;->MYUSERHANDLE_TAG:[B

    invoke-static {v3}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v3, Landroid/os/Process;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/m/u/n;->SERIALNUMBER_TAG:[B

    invoke-static {v4}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public launchBackgroundProcess()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/m/u/n;->LOOK_TAG:[B

    invoke-static {v1}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/m/u/n;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/m/u/n;->FILES_TAG:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/m/u/n;->exist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/m/u/n;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/m/u/n;->FILES_TAG:[B

    invoke-static {v4}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    sget-object v4, Lcom/m/u/n;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/m/u/n;->copyBigDataToSD(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/m/u/n;->LOOK_TAG:[B

    invoke-static {v3}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v0, Lcom/m/u/n$aa;

    invoke-direct {v0, p0, v1}, Lcom/m/u/n$aa;-><init>(Lcom/m/u/n;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/m/u/n$aa;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public startPro(Landroid/content/Context;)V
    .locals 0

    sput-object p1, Lcom/m/u/n;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/m/u/n;->launchBackgroundProcess()V

    return-void
.end method
