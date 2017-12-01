.class public Lcmn/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcmn/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcmn/a;->a:Lcmn/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcmn/a;
    .locals 3

    const-class v1, Lcmn/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcmn/a;->a:Lcmn/a;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    new-instance v0, Lcmn/c;

    invoke-direct {v0}, Lcmn/c;-><init>()V

    sput-object v0, Lcmn/a;->a:Lcmn/a;

    :cond_0
    :goto_0
    sget-object v0, Lcmn/a;->a:Lcmn/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    new-instance v0, Lcmn/d;

    invoke-direct {v0}, Lcmn/d;-><init>()V

    sput-object v0, Lcmn/a;->a:Lcmn/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcmn/a;

    invoke-direct {v0}, Lcmn/a;-><init>()V

    sput-object v0, Lcmn/a;->a:Lcmn/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 4

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcmn/b;

    invoke-direct {v1, p0, p1}, Lcmn/b;-><init>(Lcmn/a;Landroid/content/SharedPreferences$Editor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
