.class public Lcom/st/m/c/ef;
.super Lcom/st/m/c/ks;


# annotations
.annotation runtime Lcom/st/m/c/pcv;
    a = true
    b = 0x31ce1
.end annotation


# instance fields
.field private a:B
    .annotation runtime Lcom/st/m/c/b;
        a = 0x2
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/st/m/c/b;
        a = 0x3
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/st/m/c/b;
        a = 0x4
    .end annotation
.end field

.field private da:Ljava/lang/String;
    .annotation runtime Lcom/st/m/c/b;
        a = 0x5
    .end annotation
.end field

.field private ef:I
    .annotation runtime Lcom/st/m/c/b;
        a = 0x6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/st/m/c/ks;-><init>()V

    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    iget-byte v0, p0, Lcom/st/m/c/ef;->a:B

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/st/m/c/ef;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/st/m/c/ef;->c:Ljava/lang/String;

    return-object v0
.end method

.method public da()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/st/m/c/ef;->da:Ljava/lang/String;

    return-object v0
.end method

.method public ef()I
    .locals 1

    iget v0, p0, Lcom/st/m/c/ef;->ef:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetConfigResp [configSwitch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/st/m/c/ef;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqRelativeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/st/m/c/ef;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/st/m/c/ef;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", magicData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/st/m/c/ef;->da:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/st/m/c/ef;->ef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
