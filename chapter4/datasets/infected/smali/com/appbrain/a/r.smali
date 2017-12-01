.class public final Lcom/appbrain/a/r;
.super Lcom/appbrain/d/a;


# static fields
.field private static a:Lcom/appbrain/a/r;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/appbrain/a/r;->a:Lcom/appbrain/a/r;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/d/a;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/r;->b:Landroid/content/Context;

    invoke-virtual {p0, p2, p3}, Lcom/appbrain/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/appbrain/a/r;
    .locals 6

    const-class v1, Lcom/appbrain/a/r;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/appbrain/a/r;->a:Lcom/appbrain/a/r;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/appbrain/a/v;->a(Landroid/content/Context;Z)V

    new-instance v0, Lcom/appbrain/a/r;

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/a/v;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appbrain/a/v;->g()Lcom/appbrain/RemoteSettings;

    move-result-object v3

    const-string v4, "ppath"

    const-string v5, "/api/pb?action="

    invoke-interface {v3, v4, v5}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/appbrain/a/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appbrain/a/r;->a:Lcom/appbrain/a/r;

    :cond_0
    sget-object v0, Lcom/appbrain/a/r;->a:Lcom/appbrain/a/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(Lcom/appbrain/c/h;Ljava/lang/String;)Lcom/appbrain/b/d;
    .locals 1

    invoke-static {p1, p2}, Lcom/appbrain/a/p;->a(Lcom/appbrain/c/h;Ljava/lang/String;)Lcom/appbrain/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/appbrain/e/j;
    .locals 2

    invoke-static {}, Lcom/appbrain/e/v;->g()Lcom/appbrain/e/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/w;->a()Lcom/appbrain/e/v;

    move-result-object v0

    const-string v1, "up"

    invoke-virtual {p0, v0, v1}, Lcom/appbrain/a/r;->b(Lcom/appbrain/c/h;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/appbrain/e/j;->a([B)Lcom/appbrain/e/j;

    move-result-object v0

    goto :goto_0
.end method
