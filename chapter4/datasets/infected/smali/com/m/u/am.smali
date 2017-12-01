.class public Lcom/m/u/am;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m/u/am$aa;
    }
.end annotation


# static fields
.field public static final aa:Lcom/m/ac/ac;

.field private static ab:Lcom/m/u/am;


# instance fields
.field private ac:Landroid/content/Context;

.field private ad:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/m/u/am;->ab:Lcom/m/u/am;

    invoke-static {}, Lcom/m/ac/ac;->ad()Lcom/m/ac/ac;

    move-result-object v0

    sput-object v0, Lcom/m/u/am;->aa:Lcom/m/ac/ac;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/m/u/am;->ac:Landroid/content/Context;

    return-void
.end method

.method static synthetic aa(Lcom/m/u/am;)I
    .locals 1

    iget v0, p0, Lcom/m/u/am;->ad:I

    return v0
.end method

.method private aa(Landroid/content/Context;I)Lcom/m/ab/at;
    .locals 2

    new-instance v0, Lcom/m/ab/at;

    invoke-static {p1, p2}, Lcom/m/u/ae;->aa(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/m/ab/at;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic aa(Lcom/m/u/am;Landroid/content/Context;I)Lcom/m/ab/at;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/m/u/am;->aa(Landroid/content/Context;I)Lcom/m/ab/at;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aa(Lcom/m/u/am;Ljava/util/ArrayList;)Lcom/m/ac/ac;
    .locals 1

    invoke-direct {p0, p1}, Lcom/m/u/am;->aa(Ljava/util/ArrayList;)Lcom/m/ac/ac;

    move-result-object v0

    return-object v0
.end method

.method private aa(Ljava/util/ArrayList;)Lcom/m/ac/ac;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/m/ab/ae;",
            ">;)",
            "Lcom/m/ac/ac;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/m/u/am;->aa:Lcom/m/ac/ac;

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m/ab/ae;

    sget-object v2, Lcom/m/ac/aa;->ca:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/m/ab/ae;->ab()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/m/ab/ae;->ac()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/m/ab/ae;->aa()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/m/ab/ae;->aa()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/m/u/am;->aa:Lcom/m/ac/ac;

    new-instance v3, Lcom/m/ab/at;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/m/ab/ae;->ab()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/m/ab/ae;->ac()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/m/ab/at;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/m/ac/ac;->aa(Lcom/m/ab/at;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/m/ab/ae;->aa()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/m/u/am;->aa:Lcom/m/ac/ac;

    new-instance v3, Lcom/m/ab/at;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/m/ab/ae;->ab()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/m/ab/ae;->ac()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/m/ab/at;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/m/ac/ac;->ab(Lcom/m/ab/at;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/m/ab/ae;->aa()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/m/u/am;->aa:Lcom/m/ac/ac;

    new-instance v3, Lcom/m/ab/at;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/m/ab/ae;->ab()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/m/ab/ae;->ac()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/m/ab/at;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/m/ac/ac;->ac(Lcom/m/ab/at;)V

    goto/16 :goto_0
.end method

.method public static aa(Landroid/content/Context;)Lcom/m/u/am;
    .locals 1

    sget-object v0, Lcom/m/u/am;->ab:Lcom/m/u/am;

    if-nez v0, :cond_0

    new-instance v0, Lcom/m/u/am;

    invoke-direct {v0, p0}, Lcom/m/u/am;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/m/u/am;->ab:Lcom/m/u/am;

    :cond_0
    sget-object v0, Lcom/m/u/am;->ab:Lcom/m/u/am;

    return-object v0
.end method

.method private aa(Lcom/m/u/am$aa;Lcom/m/ab/al;Lcom/m/ab/an;Lcom/m/ab/at;)V
    .locals 1

    new-instance v0, Lcom/m/u/an;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/m/u/an;-><init>(Lcom/m/u/am;Lcom/m/u/am$aa;Lcom/m/ab/al;Lcom/m/ab/an;)V

    invoke-virtual {p3, p4, p2, v0}, Lcom/m/ab/an;->aa(Lcom/m/ab/at;Ljava/lang/Object;Lcom/m/ab/au;)V

    return-void
.end method

.method static synthetic aa(Lcom/m/u/am;I)V
    .locals 0

    iput p1, p0, Lcom/m/u/am;->ad:I

    return-void
.end method

.method static synthetic aa(Lcom/m/u/am;Lcom/m/u/am$aa;Lcom/m/ab/al;Lcom/m/ab/an;Lcom/m/ab/at;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/m/u/am;->aa(Lcom/m/u/am$aa;Lcom/m/ab/al;Lcom/m/ab/an;Lcom/m/ab/at;)V

    return-void
.end method

.method static synthetic ab(Lcom/m/u/am;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/m/u/am;->ac:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized aa(Lcom/m/u/am$aa;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/m/ac/aa;->ca:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->aa(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/m/ab/al;

    invoke-direct {v0}, Lcom/m/ab/al;-><init>()V

    iget-object v1, p0, Lcom/m/u/am;->ac:Landroid/content/Context;

    invoke-static {v1}, Lcom/m/u/at;->ab(Landroid/content/Context;)Lcom/m/ab/aw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m/ab/al;->aa(Lcom/m/ab/aw;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/m/ab/al;->aa(I)V

    sget-object v2, Lcom/m/ac/aa;->ca:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/m/ab/al;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/m/u/ag;->aa(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/m/ab/an;->aa()Lcom/m/ab/an;

    move-result-object v1

    iget-object v2, p0, Lcom/m/u/am;->ac:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/m/u/am;->aa(Landroid/content/Context;I)Lcom/m/ab/at;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, p0, Lcom/m/u/am;->ad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/m/u/am;->aa(Lcom/m/u/am$aa;Lcom/m/ab/al;Lcom/m/ab/an;Lcom/m/ab/at;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-interface {p1}, Lcom/m/u/am$aa;->aa()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
