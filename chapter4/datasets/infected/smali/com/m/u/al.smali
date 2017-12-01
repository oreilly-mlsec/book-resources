.class public Lcom/m/u/al;
.super Ljava/lang/Object;


# static fields
.field private static aa:Lcom/m/u/al;

.field private static ab:Ldalvik/system/DexClassLoader;

.field private static ad:Ljava/lang/String;


# instance fields
.field private ac:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized aa()Lcom/m/u/al;
    .locals 3

    const-class v1, Lcom/m/u/al;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/m/u/al;->aa:Lcom/m/u/al;

    if-nez v0, :cond_1

    const-class v2, Lcom/m/u/al;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/m/u/al;->aa:Lcom/m/u/al;

    if-nez v0, :cond_0

    new-instance v0, Lcom/m/u/al;

    invoke-direct {v0}, Lcom/m/u/al;-><init>()V

    sput-object v0, Lcom/m/u/al;->aa:Lcom/m/u/al;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/m/u/al;->aa:Lcom/m/u/al;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public aa(Ldalvik/system/DexClassLoader;)V
    .locals 0

    sput-object p1, Lcom/m/u/al;->ab:Ldalvik/system/DexClassLoader;

    return-void
.end method

.method public aa(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/m/u/al;->ad:Ljava/lang/String;

    return-void
.end method

.method public aa(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/m/u/al;->ac:Z

    return-void
.end method

.method public ab()Ldalvik/system/DexClassLoader;
    .locals 1

    sget-object v0, Lcom/m/u/al;->ab:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public ac()Z
    .locals 1

    iget-boolean v0, p0, Lcom/m/u/al;->ac:Z

    return v0
.end method

.method public ad()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/m/u/al;->ad:Ljava/lang/String;

    return-object v0
.end method
