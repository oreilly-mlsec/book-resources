.class final Lcom/appbrain/a/w;
.super Lcom/appbrain/a/s;


# instance fields
.field final synthetic a:Lcom/appbrain/a/v;


# direct methods
.method constructor <init>(Lcom/appbrain/a/v;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/w;->a:Lcom/appbrain/a/v;

    invoke-direct {p0, p2, p3, p4}, Lcom/appbrain/a/s;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/w;)Lcom/appbrain/a/v;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/w;->a:Lcom/appbrain/a/v;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/w;->a:Lcom/appbrain/a/v;

    invoke-static {v0}, Lcom/appbrain/a/v;->a(Lcom/appbrain/a/v;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/appbrain/a/x;

    invoke-direct {v1, p0}, Lcom/appbrain/a/x;-><init>(Lcom/appbrain/a/w;)V

    new-instance v2, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Z)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    throw v0
.end method
