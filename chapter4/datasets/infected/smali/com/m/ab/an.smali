.class public Lcom/m/ab/an;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m/ab/an$aa;
    }
.end annotation


# static fields
.field private static ac:Lcom/m/ab/an;


# instance fields
.field aa:Ljava/util/concurrent/ThreadPoolExecutor;

.field private ab:Lcom/m/ab/ar;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/m/ab/ar;

    invoke-direct {v0}, Lcom/m/ab/ar;-><init>()V

    iput-object v0, p0, Lcom/m/ab/an;->ab:Lcom/m/ab/ar;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m/ab/an;->aa:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/m/ab/an;->ab()V

    return-void
.end method

.method public static declared-synchronized aa()Lcom/m/ab/an;
    .locals 2

    const-class v1, Lcom/m/ab/an;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/m/ab/an;->ac:Lcom/m/ab/an;

    if-nez v0, :cond_0

    new-instance v0, Lcom/m/ab/an;

    invoke-direct {v0}, Lcom/m/ab/an;-><init>()V

    sput-object v0, Lcom/m/ab/an;->ac:Lcom/m/ab/an;

    :cond_0
    sget-object v0, Lcom/m/ab/an;->ac:Lcom/m/ab/an;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private aa(Ljava/lang/Object;)Lcom/m/ab/ao;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/m/ab/ab;->aa(Ljava/lang/Object;)Lcom/m/ab/av;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/m/ab/av;->ab()I

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

    new-instance v2, Lcom/m/ab/ao;

    invoke-direct {v2}, Lcom/m/ab/ao;-><init>()V

    new-instance v3, Lcom/m/ab/ap;

    invoke-direct {v3}, Lcom/m/ab/ap;-><init>()V

    iput-object v3, v2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    iget-object v3, v2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    iput-byte v7, v3, Lcom/m/ab/ap;->aa:B

    iget-object v3, v2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    iput v6, v3, Lcom/m/ab/ap;->ab:I

    iget-object v3, v2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/m/ab/ap;->ae:J

    iget-object v3, v2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/m/ab/ap;->af:J

    iget-object v1, v2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    iput-byte v7, v1, Lcom/m/ab/ap;->ac:B

    iget-object v1, v2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    iput-short v6, v1, Lcom/m/ab/ap;->ad:S

    iget-object v1, v2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    invoke-interface {v0}, Lcom/m/ab/av;->ab()I

    move-result v0

    iput v0, v1, Lcom/m/ab/ap;->ag:I

    iput-object p1, v2, Lcom/m/ab/ao;->ab:Ljava/lang/Object;

    return-object v2
.end method

.method static synthetic aa(Lcom/m/ab/an;)Lcom/m/ab/ar;
    .locals 1

    iget-object v0, p0, Lcom/m/ab/an;->ab:Lcom/m/ab/ar;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized aa(Lcom/m/ab/at;Ljava/lang/Object;Lcom/m/ab/au;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/m/ab/an;->aa(Ljava/lang/Object;)Lcom/m/ab/ao;

    move-result-object v0

    new-instance v1, Lcom/m/ab/an$aa;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/m/ab/an$aa;-><init>(Lcom/m/ab/an;Lcom/m/ab/at;Lcom/m/ab/ao;Lcom/m/ab/au;)V

    iget-object v0, p0, Lcom/m/ab/an;->aa:Ljava/util/concurrent/ThreadPoolExecutor;

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

    invoke-interface {p3, v0, v1}, Lcom/m/ab/au;->aa(Ljava/lang/Boolean;Lcom/m/ab/ao;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ab()V
    .locals 8

    iget-object v0, p0, Lcom/m/ab/an;->aa:Ljava/util/concurrent/ThreadPoolExecutor;

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

    iput-object v0, p0, Lcom/m/ab/an;->aa:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    return-void
.end method
