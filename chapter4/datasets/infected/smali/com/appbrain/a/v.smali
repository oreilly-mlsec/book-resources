.class public final Lcom/appbrain/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appbrain/AdService;


# static fields
.field private static a:Lcom/appbrain/a/v;


# instance fields
.field private b:Lcom/appbrain/a/s;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:I

.field private e:Lcom/appbrain/RemoteSettings;

.field private f:Landroid/content/SharedPreferences;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/a/v;

    invoke-direct {v0}, Lcom/appbrain/a/v;-><init>()V

    sput-object v0, Lcom/appbrain/a/v;->a:Lcom/appbrain/a/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/appbrain/a/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v2, p0, Lcom/appbrain/a/v;->d:I

    iput-object v1, p0, Lcom/appbrain/a/v;->e:Lcom/appbrain/RemoteSettings;

    iput-object v1, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/appbrain/a/v;->g:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/appbrain/a/v;
    .locals 1

    sget-object v0, Lcom/appbrain/a/v;->a:Lcom/appbrain/a/v;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/v;->e:Lcom/appbrain/RemoteSettings;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appbrain/a/n;->a(Landroid/content/Context;Z)Lcom/appbrain/RemoteSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/v;->e:Lcom/appbrain/RemoteSettings;

    const-string v0, "ab_sdk_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/appbrain/a/v;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/appbrain/a/v;)V
    .locals 6

    iget-object v0, p0, Lcom/appbrain/a/v;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/appbrain/a/r;->a(Landroid/content/Context;)Lcom/appbrain/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/r;->a()Lcom/appbrain/e/j;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pingcount"

    iget-object v3, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    const-string v4, "pingcount"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :try_start_0
    iget-object v1, p0, Lcom/appbrain/a/v;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/appbrain/e/j;->c()Lcom/appbrain/e/l;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appbrain/a/n;->a(Landroid/content/Context;Lcom/appbrain/e/l;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(I)Z
    .locals 8

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    const-string v1, "last_offer_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    const-string v3, "last_offer_wall_shown"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v4, 0x15180

    mul-int/2addr v4, p1

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_offer_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/appbrain/a/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/v;->k()V

    return-void
.end method

.method private declared-synchronized k()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/v;->b:Lcom/appbrain/a/s;

    if-nez v0, :cond_0

    sget-object v0, Lcom/appbrain/a/v;->a:Lcom/appbrain/a/v;

    iget-object v0, v0, Lcom/appbrain/a/v;->e:Lcom/appbrain/RemoteSettings;

    const-string v1, "ping_interval"

    const-string v2, "86400"

    invoke-interface {v0, v1, v2}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/appbrain/a/w;

    const-string v2, "ping"

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/appbrain/a/w;-><init>(Lcom/appbrain/a/v;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/appbrain/a/v;->b:Lcom/appbrain/a/s;

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/v;->b:Lcom/appbrain/a/s;

    iget-object v1, p0, Lcom/appbrain/a/v;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appbrain/a/s;->b(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()Z
    .locals 3

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/v;->g:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Z)V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/appbrain/a/v;->a:Lcom/appbrain/a/v;

    invoke-virtual {v3}, Lcom/appbrain/a/v;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.appbrain.AppBrainActivity"

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.appbrain.AppBrainService"

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Add the INTERNET permission to your Android manifest!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No AppBrainActivity defined in the manifest!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No AppBrainService defined in the manifest!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :try_start_5
    const-class v3, Lcom/appbrain/a/l;

    const-string v4, "isPackageInstalled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isPackage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    if-nez v3, :cond_5

    :goto_0
    if-nez v0, :cond_1

    :try_start_6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "AppLift SDK requires changes to your proguard config. Please check http://www.appbrain.com/info/sdk"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "AppLift SDK requires changes to your proguard config!"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-static {v2}, Lcom/appbrain/a/u;->a(Landroid/content/Context;)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/appbrain/a/v;->a(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/appbrain/a/ac;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "init_called"

    iget-object v2, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    const-string v3, "init_called"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-direct {p0}, Lcom/appbrain/a/v;->k()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/appbrain/a/v;->e:Lcom/appbrain/RemoteSettings;

    const-string v1, "sdk_off"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appbrain/a/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/v;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method final d()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/v;->e:Lcom/appbrain/RemoteSettings;

    const-string v1, "adserver"

    const-string v2, "http://p.appbrain.com"

    invoke-interface {v0, v1, v2}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/v;->e:Lcom/appbrain/RemoteSettings;

    const-string v1, "pserver"

    const-string v2, "http://sdk.appbrain.com"

    invoke-interface {v0, v1, v2}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/appbrain/RemoteSettings;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/v;->e:Lcom/appbrain/RemoteSettings;

    return-object v0
.end method

.method public final h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/v;->g:Landroid/content/Context;

    return-object v0
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/a/v;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_offer_wall_shown"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmn/a;->b(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public final j()Lcom/appbrain/RemoteSettings;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/v;->g:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appbrain/a/n;->a(Landroid/content/Context;Z)Lcom/appbrain/RemoteSettings;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized maybeShowInterstitial(Landroid/app/Activity;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/appbrain/a/v;->a(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/appbrain/a/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/v;->l()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/appbrain/a/v;->e:Lcom/appbrain/RemoteSettings;

    const-string v3, "offerwall"

    const-string v4, "4"

    invoke-interface {v2, v3, v4}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-direct {p0, v2}, Lcom/appbrain/a/v;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    invoke-static {}, Lcom/appbrain/a/b;->a()Lcom/appbrain/a/b;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/appbrain/a/a;->a(Landroid/content/Context;ZLcom/appbrain/a/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized maybeShowOfferWall(Landroid/app/Activity;)Z
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/appbrain/a/v;->a(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/appbrain/a/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/v;->l()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/appbrain/a/v;->e:Lcom/appbrain/RemoteSettings;

    const-string v2, "offerwall"

    const-string v3, "4"

    invoke-interface {v1, v2, v3}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Lcom/appbrain/a/v;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/appbrain/a/v;->d:I

    iget v2, p0, Lcom/appbrain/a/v;->d:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/appbrain/a/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Would you like to see some cool apps?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Yes"

    new-instance v3, Lcom/appbrain/a/aa;

    invoke-direct {v3, p0, p1}, Lcom/appbrain/a/aa;-><init>(Lcom/appbrain/a/v;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Not now"

    new-instance v4, Lcom/appbrain/a/ab;

    invoke-direct {v4, p0}, Lcom/appbrain/a/ab;-><init>(Lcom/appbrain/a/v;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/a/v;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/appbrain/a/b;->a()Lcom/appbrain/a/b;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    new-instance v2, Lcom/appbrain/a/y;

    invoke-direct {v2, p0, p5}, Lcom/appbrain/a/y;-><init>(Lcom/appbrain/a/v;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/appbrain/a/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "More Apps"

    new-instance v3, Lcom/appbrain/a/z;

    invoke-direct {v3, p0, p1, v0}, Lcom/appbrain/a/z;-><init>(Lcom/appbrain/a/v;Landroid/app/Activity;Lcom/appbrain/a/b;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public final declared-synchronized showInterstitial(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/appbrain/a/v;->a(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/appbrain/a/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/v;->l()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/appbrain/a/b;->a()Lcom/appbrain/a/b;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/appbrain/a/a;->a(Landroid/content/Context;ZLcom/appbrain/a/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final showOfferWall(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/a/v;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/appbrain/a/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appbrain/e/f;->b:Lcom/appbrain/e/f;

    invoke-static {p1, v0}, Lcom/appbrain/a/a;->a(Landroid/content/Context;Lcom/appbrain/e/f;)V

    :cond_0
    return-void
.end method
