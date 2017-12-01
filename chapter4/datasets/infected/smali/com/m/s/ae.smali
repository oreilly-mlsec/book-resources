.class Lcom/m/s/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/m/ab/au;


# instance fields
.field final synthetic aa:Lcom/m/s/sa;


# direct methods
.method constructor <init>(Lcom/m/s/sa;)V
    .locals 0

    iput-object p1, p0, Lcom/m/s/ae;->aa:Lcom/m/s/sa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa(Ljava/lang/Boolean;Lcom/m/ab/ao;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    iget v1, v1, Lcom/m/ab/ap;->ag:I

    const-class v2, Lcom/m/ab/ai;

    invoke-static {v2}, Lcom/m/ab/ab;->aa(Ljava/lang/Class;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v0, p2, Lcom/m/ab/ao;->ab:Ljava/lang/Object;

    check-cast v0, Lcom/m/ab/ai;

    const-string v1, "config"

    invoke-virtual {v0}, Lcom/m/ab/ai;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "config"

    const-string v2, "5"

    invoke-static {v1, v2}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m/s/ae;->aa:Lcom/m/s/sa;

    invoke-static {v1, v0}, Lcom/m/s/sa;->aa(Lcom/m/s/sa;Lcom/m/ab/ai;)V

    return-void

    :cond_0
    const-string v1, "config"

    const-string v2, "4"

    invoke-static {v1, v2}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
