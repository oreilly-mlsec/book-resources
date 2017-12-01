.class public Lcom/st/m/u/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/st/m/u/f;


# instance fields
.field private c:Ljava/util/Properties;

.field private da:Z

.field private ef:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/st/m/u/a;->B:[B

    invoke-static {v0}, Lcom/st/m/u/c;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/st/m/u/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/st/m/u/f;->b:Lcom/st/m/u/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/st/m/u/f;->c:Ljava/util/Properties;

    iput-boolean v1, p0, Lcom/st/m/u/f;->da:Z

    iput-boolean v1, p0, Lcom/st/m/u/f;->ef:Z

    iput-boolean v1, p0, Lcom/st/m/u/f;->f:Z

    iget-object v0, p0, Lcom/st/m/u/f;->c:Ljava/util/Properties;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/st/m/u/da;->b()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/st/m/u/f;->c:Ljava/util/Properties;

    :cond_0
    iget-object v0, p0, Lcom/st/m/u/f;->c:Ljava/util/Properties;

    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/st/m/u/da;->a(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/st/m/u/f;->ef:Z

    iget-object v0, p0, Lcom/st/m/u/f;->c:Ljava/util/Properties;

    const-string v1, "b"

    invoke-static {v0, v1}, Lcom/st/m/u/da;->a(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/st/m/u/f;->da:Z

    iget-object v0, p0, Lcom/st/m/u/f;->c:Ljava/util/Properties;

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/st/m/u/da;->a(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/st/m/u/f;->f:Z

    return-void
.end method

.method public static a()Lcom/st/m/u/f;
    .locals 1

    sget-object v0, Lcom/st/m/u/f;->b:Lcom/st/m/u/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/st/m/u/f;

    invoke-direct {v0}, Lcom/st/m/u/f;-><init>()V

    sput-object v0, Lcom/st/m/u/f;->b:Lcom/st/m/u/f;

    :cond_0
    sget-object v0, Lcom/st/m/u/f;->b:Lcom/st/m/u/f;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/st/m/u/f;->da:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/st/m/u/f;->ef:Z

    return v0
.end method

.method public da()Z
    .locals 1

    iget-boolean v0, p0, Lcom/st/m/u/f;->f:Z

    return v0
.end method
