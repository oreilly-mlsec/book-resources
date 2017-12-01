.class public Lcom/st/m/c/hd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/st/m/c/hd$a;
    }
.end annotation


# static fields
.field private static c:Lcom/st/m/c/hd;


# instance fields
.field a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:Lcom/st/m/c/l;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/st/m/c/l;

    invoke-direct {v0}, Lcom/st/m/c/l;-><init>()V

    iput-object v0, p0, Lcom/st/m/c/hd;->b:Lcom/st/m/c/l;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/st/m/c/hd;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/st/m/c/hd;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/st/m/c/hd;
    .locals 2

    const-class v1, Lcom/st/m/c/hd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/st/m/c/hd;->c:Lcom/st/m/c/hd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/st/m/c/hd;

    invoke-direct {v0}, Lcom/st/m/c/hd;-><init>()V

    sput-object v0, Lcom/st/m/c/hd;->c:Lcom/st/m/c/hd;

    :cond_0
    sget-object v0, Lcom/st/m/c/hd;->c:Lcom/st/m/c/hd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/Object;)Lcom/st/m/c/if;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/st/m/c/a;->a(Ljava/lang/Object;)Lcom/st/m/c/pcv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/st/m/c/pcv;->b()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v0, 0x320

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lcom/st/m/c/if;

    invoke-direct {v2}, Lcom/st/m/c/if;-><init>()V

    new-instance v3, Lcom/st/m/c/j;

    invoke-direct {v3}, Lcom/st/m/c/j;-><init>()V

    iput-object v3, v2, Lcom/st/m/c/if;->a:Lcom/st/m/c/j;

    iget-object v3, v2, Lcom/st/m/c/if;->a:Lcom/st/m/c/j;

    iput-byte v7, v3, Lcom/st/m/c/j;->a:B

    iget-object v3, v2, Lcom/st/m/c/if;->a:Lcom/st/m/c/j;

    iput v6, v3, Lcom/st/m/c/j;->b:I

    iget-object v3, v2, Lcom/st/m/c/if;->a:Lcom/st/m/c/j;

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/st/m/c/j;->ef:J

    iget-object v3, v2, Lcom/st/m/c/if;->a:Lcom/st/m/c/j;

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/st/m/c/j;->f:J

    iget-object v1, v2, Lcom/st/m/c/if;->a:Lcom/st/m/c/j;

    iput-byte v7, v1, Lcom/st/m/c/j;->c:B

    iget-object v1, v2, Lcom/st/m/c/if;->a:Lcom/st/m/c/j;

    iput-short v6, v1, Lcom/st/m/c/j;->da:S

    iget-object v1, v2, Lcom/st/m/c/if;->a:Lcom/st/m/c/j;

    invoke-interface {v0}, Lcom/st/m/c/pcv;->b()I

    move-result v0

    iput v0, v1, Lcom/st/m/c/j;->gt:I

    iput-object p1, v2, Lcom/st/m/c/if;->b:Ljava/lang/Object;

    return-object v2
.end method

.method static synthetic a(Lcom/st/m/c/hd;)Lcom/st/m/c/l;
    .locals 1

    iget-object v0, p0, Lcom/st/m/c/hd;->b:Lcom/st/m/c/l;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/st/m/c/n;Ljava/lang/Object;Lcom/st/m/c/o;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/st/m/c/hd;->a(Ljava/lang/Object;)Lcom/st/m/c/if;

    move-result-object v0

    new-instance v1, Lcom/st/m/c/hd$a;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/st/m/c/hd$a;-><init>(Lcom/st/m/c/hd;Lcom/st/m/c/n;Lcom/st/m/c/if;Lcom/st/m/c/o;)V

    iget-object v0, p0, Lcom/st/m/c/hd;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/st/m/c/o;->a(Ljava/lang/Boolean;Lcom/st/m/c/if;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 8

    iget-object v0, p0, Lcom/st/m/c/hd;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x3

    const/4 v2, 0x6

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/st/m/c/hd;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    return-void
.end method
