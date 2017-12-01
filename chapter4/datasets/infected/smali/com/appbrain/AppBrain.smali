.class public Lcom/appbrain/AppBrain;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call AppBrain.init(context) in the onCreate of your Activity, or AppBrain.initApp() in the onCreate of your Application or Service or as the first thing in a BroadcastReceiver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getAds()Lcom/appbrain/AdService;
    .locals 1

    invoke-static {}, Lcom/appbrain/AppBrain;->a()V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    return-object v0
.end method

.method public static getSettings()Lcom/appbrain/RemoteSettings;
    .locals 1

    invoke-static {}, Lcom/appbrain/AppBrain;->a()V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->j()Lcom/appbrain/RemoteSettings;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/appbrain/a/v;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static initApp(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/appbrain/a/v;->a(Landroid/content/Context;Z)V

    return-void
.end method
