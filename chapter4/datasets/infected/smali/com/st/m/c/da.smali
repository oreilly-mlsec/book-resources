.class public Lcom/st/m/c/da;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/st/m/c/pcv;
    a = true
    b = 0x19641
.end annotation


# instance fields
.field private a:Lcom/st/m/c/qr;
    .annotation runtime Lcom/st/m/c/b;
        a = 0x0
    .end annotation
.end field

.field private b:B
    .annotation runtime Lcom/st/m/c/b;
        a = 0x1
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/st/m/c/b;
        a = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/st/m/c/qr;

    invoke-direct {v0}, Lcom/st/m/c/qr;-><init>()V

    iput-object v0, p0, Lcom/st/m/c/da;->a:Lcom/st/m/c/qr;

    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/st/m/c/da;->b:B

    return-void
.end method

.method public a(Lcom/st/m/c/qr;)V
    .locals 0

    iput-object p1, p0, Lcom/st/m/c/da;->a:Lcom/st/m/c/qr;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/st/m/c/da;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetCommonConfigReq [terminalInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/st/m/c/da;->a:Lcom/st/m/c/qr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMajor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/st/m/c/da;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", magicData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/st/m/c/da;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
