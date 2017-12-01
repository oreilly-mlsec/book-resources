.class public Lcom/st/m/c/f;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/st/m/c/pcv;
    a = true
    b = 0x19642
.end annotation


# instance fields
.field private a:Lcom/st/m/c/qr;
    .annotation runtime Lcom/st/m/c/b;
        a = 0x0
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation runtime Lcom/st/m/c/b;
        a = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/st/m/b/b;",
            ">;"
        }
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

    iput-object v0, p0, Lcom/st/m/c/f;->a:Lcom/st/m/c/qr;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/st/m/c/f;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/st/m/c/qr;)V
    .locals 0

    iput-object p1, p0, Lcom/st/m/c/f;->a:Lcom/st/m/c/qr;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/st/m/c/f;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/st/m/b/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/st/m/c/f;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetDataInfoReq [termInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/st/m/c/f;->a:Lcom/st/m/c/qr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/st/m/c/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", magicData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/st/m/c/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
