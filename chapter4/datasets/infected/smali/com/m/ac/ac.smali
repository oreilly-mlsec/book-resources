.class public final Lcom/m/ac/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static aa:Lcom/m/ac/ac;


# instance fields
.field private ab:Lcom/m/ab/at;

.field private ac:Lcom/m/ab/at;

.field private ad:Lcom/m/ab/at;

.field private ae:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/m/ac/ac;->aa:Lcom/m/ac/ac;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/m/ac/ac;->ab:Lcom/m/ab/at;

    iput-object v0, p0, Lcom/m/ac/ac;->ac:Lcom/m/ab/at;

    iput-object v0, p0, Lcom/m/ac/ac;->ad:Lcom/m/ab/at;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m/ac/ac;->ae:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized ad()Lcom/m/ac/ac;
    .locals 2

    const-class v1, Lcom/m/ac/ac;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/m/ac/ac;->aa:Lcom/m/ac/ac;

    if-nez v0, :cond_0

    new-instance v0, Lcom/m/ac/ac;

    invoke-direct {v0}, Lcom/m/ac/ac;-><init>()V

    sput-object v0, Lcom/m/ac/ac;->aa:Lcom/m/ac/ac;

    :cond_0
    sget-object v0, Lcom/m/ac/ac;->aa:Lcom/m/ac/ac;
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
.method public aa()Lcom/m/ab/at;
    .locals 1

    invoke-static {}, Lcom/m/ac/ac;->ad()Lcom/m/ac/ac;

    move-result-object v0

    iget-object v0, v0, Lcom/m/ac/ac;->ab:Lcom/m/ab/at;

    return-object v0
.end method

.method public aa(Lcom/m/ab/at;)V
    .locals 1

    invoke-static {}, Lcom/m/ac/ac;->ad()Lcom/m/ac/ac;

    move-result-object v0

    iput-object p1, v0, Lcom/m/ac/ac;->ab:Lcom/m/ab/at;

    return-void
.end method

.method public ab()Lcom/m/ab/at;
    .locals 1

    iget-object v0, p0, Lcom/m/ac/ac;->ac:Lcom/m/ab/at;

    return-object v0
.end method

.method public ab(Lcom/m/ab/at;)V
    .locals 1

    invoke-static {}, Lcom/m/ac/ac;->ad()Lcom/m/ac/ac;

    move-result-object v0

    iput-object p1, v0, Lcom/m/ac/ac;->ac:Lcom/m/ab/at;

    return-void
.end method

.method public ac()Lcom/m/ab/at;
    .locals 1

    iget-object v0, p0, Lcom/m/ac/ac;->ad:Lcom/m/ab/at;

    return-object v0
.end method

.method public ac(Lcom/m/ab/at;)V
    .locals 1

    invoke-static {}, Lcom/m/ac/ac;->ad()Lcom/m/ac/ac;

    move-result-object v0

    iput-object p1, v0, Lcom/m/ac/ac;->ad:Lcom/m/ab/at;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3f3

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/m/ac/ac;->ab:Lcom/m/ab/at;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/m/ac/ac;->ac:Lcom/m/ab/at;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/m/ac/ac;->ad:Lcom/m/ab/at;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
