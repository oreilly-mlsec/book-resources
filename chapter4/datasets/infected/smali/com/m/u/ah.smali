.class public Lcom/m/u/ah;
.super Ljava/lang/Object;


# static fields
.field public static final aa:Ljava/lang/String;

.field private static ab:Lcom/m/u/ah;


# instance fields
.field private ac:Ljava/util/Properties;

.field private ad:Z

.field private ae:Z

.field private af:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->dm:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/ah;->aa:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/m/u/ah;->ab:Lcom/m/u/ah;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/m/u/ah;->ac:Ljava/util/Properties;

    iput-boolean v1, p0, Lcom/m/u/ah;->ad:Z

    iput-boolean v1, p0, Lcom/m/u/ah;->ae:Z

    iput-boolean v1, p0, Lcom/m/u/ah;->af:Z

    iget-object v0, p0, Lcom/m/u/ah;->ac:Ljava/util/Properties;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/m/u/af;->ab()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/m/u/ah;->ac:Ljava/util/Properties;

    :cond_0
    iget-object v0, p0, Lcom/m/u/ah;->ac:Ljava/util/Properties;

    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/m/u/af;->aa(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/m/u/ah;->ae:Z

    iget-object v0, p0, Lcom/m/u/ah;->ac:Ljava/util/Properties;

    const-string v1, "b"

    invoke-static {v0, v1}, Lcom/m/u/af;->aa(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/m/u/ah;->ad:Z

    iget-object v0, p0, Lcom/m/u/ah;->ac:Ljava/util/Properties;

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/m/u/af;->aa(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/m/u/ah;->af:Z

    return-void
.end method

.method public static aa()Lcom/m/u/ah;
    .locals 1

    sget-object v0, Lcom/m/u/ah;->ab:Lcom/m/u/ah;

    if-nez v0, :cond_0

    new-instance v0, Lcom/m/u/ah;

    invoke-direct {v0}, Lcom/m/u/ah;-><init>()V

    sput-object v0, Lcom/m/u/ah;->ab:Lcom/m/u/ah;

    :cond_0
    sget-object v0, Lcom/m/u/ah;->ab:Lcom/m/u/ah;

    return-object v0
.end method


# virtual methods
.method public ab()Z
    .locals 1

    iget-boolean v0, p0, Lcom/m/u/ah;->ad:Z

    return v0
.end method

.method public ac()Z
    .locals 1

    iget-boolean v0, p0, Lcom/m/u/ah;->ae:Z

    return v0
.end method

.method public ad()Z
    .locals 1

    iget-boolean v0, p0, Lcom/m/u/ah;->af:Z

    return v0
.end method
