.class final Lcom/m/s/c$ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m/s/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ab"
.end annotation


# instance fields
.field final synthetic aa:Lcom/m/s/c;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/io/File;

.field private ad:Lcom/m/u/ba;

.field private ae:Ljava/lang/String;

.field private af:I

.field private ag:I


# direct methods
.method public constructor <init>(Lcom/m/s/c;Ljava/lang/String;ILjava/lang/String;Ljava/io/File;)V
    .locals 1

    iput-object p1, p0, Lcom/m/s/c$ab;->aa:Lcom/m/s/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/m/s/c$ab;->ag:I

    iput-object p4, p0, Lcom/m/s/c$ab;->ae:Ljava/lang/String;

    iput-object p2, p0, Lcom/m/s/c$ab;->ab:Ljava/lang/String;

    iput p3, p0, Lcom/m/s/c$ab;->af:I

    iput-object p5, p0, Lcom/m/s/c$ab;->ac:Ljava/io/File;

    return-void
.end method

.method static synthetic aa(Lcom/m/s/c$ab;)I
    .locals 1

    iget v0, p0, Lcom/m/s/c$ab;->ag:I

    return v0
.end method

.method static synthetic aa(Lcom/m/s/c$ab;I)V
    .locals 0

    iput p1, p0, Lcom/m/s/c$ab;->ag:I

    return-void
.end method

.method static synthetic ab(Lcom/m/s/c$ab;)Lcom/m/u/ba;
    .locals 1

    iget-object v0, p0, Lcom/m/s/c$ab;->ad:Lcom/m/u/ba;

    return-object v0
.end method

.method static synthetic ac(Lcom/m/s/c$ab;)Lcom/m/s/c;
    .locals 1

    iget-object v0, p0, Lcom/m/s/c$ab;->aa:Lcom/m/s/c;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0xa

    :try_start_0
    iput v0, p0, Lcom/m/s/c$ab;->ag:I

    sget-object v0, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/m/s/c$ab;->ag:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/m/s/c$ab;->ae:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/m/s/c$ab;->ac:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/m/u/ba;

    iget-object v1, p0, Lcom/m/s/c$ab;->aa:Lcom/m/s/c;

    iget-object v1, v1, Lcom/m/s/c;->ac:Landroid/content/Context;

    iget-object v2, p0, Lcom/m/s/c$ab;->ab:Ljava/lang/String;

    iget-object v3, p0, Lcom/m/s/c$ab;->ae:Ljava/lang/String;

    iget-object v4, p0, Lcom/m/s/c$ab;->ac:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/m/u/ba;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    iput-object v0, p0, Lcom/m/s/c$ab;->ad:Lcom/m/u/ba;

    iget-object v0, p0, Lcom/m/s/c$ab;->ad:Lcom/m/u/ba;

    new-instance v1, Lcom/m/s/ab;

    invoke-direct {v1, p0}, Lcom/m/s/ab;-><init>(Lcom/m/s/c$ab;)V

    invoke-virtual {v0, v1}, Lcom/m/u/ba;->aa(Lcom/m/u/ay;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0xe

    iput v1, p0, Lcom/m/s/c$ab;->ag:I

    sget-object v1, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/m/s/c$ab;->ag:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/m/s/c$ab;->ad:Lcom/m/u/ba;

    invoke-virtual {v0}, Lcom/m/u/ba;->aa()V

    goto :goto_0
.end method
