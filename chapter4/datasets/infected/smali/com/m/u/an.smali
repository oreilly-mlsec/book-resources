.class Lcom/m/u/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/m/ab/au;


# instance fields
.field final synthetic aa:Lcom/m/u/am;

.field private final synthetic ab:Lcom/m/u/am$aa;

.field private final synthetic ac:Lcom/m/ab/al;

.field private final synthetic ad:Lcom/m/ab/an;


# direct methods
.method constructor <init>(Lcom/m/u/am;Lcom/m/u/am$aa;Lcom/m/ab/al;Lcom/m/ab/an;)V
    .locals 0

    iput-object p1, p0, Lcom/m/u/an;->aa:Lcom/m/u/am;

    iput-object p2, p0, Lcom/m/u/an;->ab:Lcom/m/u/am$aa;

    iput-object p3, p0, Lcom/m/u/an;->ac:Lcom/m/ab/al;

    iput-object p4, p0, Lcom/m/u/an;->ad:Lcom/m/ab/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa(Ljava/lang/Boolean;Lcom/m/ab/ao;)V
    .locals 7

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    iget v0, v0, Lcom/m/ab/ap;->ag:I

    const-class v1, Lcom/m/ab/am;

    invoke-static {v1}, Lcom/m/ab/ab;->aa(Ljava/lang/Class;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lcom/m/ab/ao;->ab:Ljava/lang/Object;

    check-cast v0, Lcom/m/ab/am;

    sget-object v1, Lcom/m/ac/aa;->ca:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/m/ab/am;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/m/u/ag;->aa(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/m/ab/am;->ae()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/m/u/an;->ab:Lcom/m/u/am$aa;

    iget-object v2, p0, Lcom/m/u/an;->aa:Lcom/m/u/am;

    invoke-virtual {v0}, Lcom/m/ab/am;->aa()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/m/u/am;->aa(Lcom/m/u/am;Ljava/util/ArrayList;)Lcom/m/ac/ac;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/m/u/am$aa;->aa(Lcom/m/ac/ac;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/m/u/an;->ab:Lcom/m/u/am$aa;

    invoke-interface {v1}, Lcom/m/u/am$aa;->aa()V

    const/4 v1, 0x4

    sget-object v2, Lcom/m/ac/aa;->ca:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/m/ab/am;->af()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/m/u/ag;->aa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/m/u/an;->aa:Lcom/m/u/am;

    invoke-static {v0}, Lcom/m/u/am;->aa(Lcom/m/u/am;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/m/u/am;->aa(Lcom/m/u/am;I)V

    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcom/m/u/an;->aa:Lcom/m/u/am;

    iget-object v1, p0, Lcom/m/u/an;->ab:Lcom/m/u/am$aa;

    iget-object v2, p0, Lcom/m/u/an;->ac:Lcom/m/ab/al;

    iget-object v3, p0, Lcom/m/u/an;->ad:Lcom/m/ab/an;

    iget-object v4, p0, Lcom/m/u/an;->aa:Lcom/m/u/am;

    iget-object v5, p0, Lcom/m/u/an;->aa:Lcom/m/u/am;

    invoke-static {v5}, Lcom/m/u/am;->ab(Lcom/m/u/am;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/m/u/an;->aa:Lcom/m/u/am;

    invoke-static {v6}, Lcom/m/u/am;->aa(Lcom/m/u/am;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/m/u/am;->aa(Lcom/m/u/am;Landroid/content/Context;I)Lcom/m/ab/at;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/m/u/am;->aa(Lcom/m/u/am;Lcom/m/u/am$aa;Lcom/m/ab/al;Lcom/m/ab/an;Lcom/m/ab/at;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/m/u/an;->ab:Lcom/m/u/am$aa;

    invoke-interface {v0}, Lcom/m/u/am$aa;->aa()V

    const/4 v0, 0x5

    sget-object v1, Lcom/m/ac/aa;->ca:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->aa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
