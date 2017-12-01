.class public Lcom/m/ab/al;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/m/ab/av;
    aa = true
    ab = 0x186a1
.end annotation


# instance fields
.field private aa:Lcom/m/ab/aw;
    .annotation runtime Lcom/m/ab/ac;
        aa = 0x0
    .end annotation
.end field

.field private ab:I
    .annotation runtime Lcom/m/ab/ac;
        aa = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa(I)V
    .locals 0

    iput p1, p0, Lcom/m/ab/al;->ab:I

    return-void
.end method

.method public aa(Lcom/m/ab/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/m/ab/al;->aa:Lcom/m/ab/aw;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/m/ab/al;->aa:Lcom/m/ab/aw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/m/ab/al;->ab:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
