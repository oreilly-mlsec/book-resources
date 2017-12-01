.class Lcom/m/u/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/m/ab/au;


# instance fields
.field private final synthetic aa:Ljava/util/ArrayList;

.field private final synthetic ab:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/m/u/bc;->aa:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/m/u/bc;->ab:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa(Ljava/lang/Boolean;Lcom/m/ab/ao;)V
    .locals 6

    const/16 v5, 0x10

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    iget v0, v0, Lcom/m/ab/ap;->ag:I

    const-class v2, Lcom/m/ab/ag;

    invoke-static {v2}, Lcom/m/ab/ab;->aa(Ljava/lang/Class;)I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p2, Lcom/m/ab/ao;->ab:Ljava/lang/Object;

    check-cast v0, Lcom/m/ab/ag;

    const/4 v2, 0x1

    sget-object v3, Lcom/m/u/bb;->aa:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/m/u/bb;->aa:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/m/ab/ag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/m/u/ag;->ac(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/m/ab/ag;->ae()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    move v2, v1

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/m/u/bc;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/m/u/bc;->ab:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "devEvent"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/m/u/bc;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m/ab/aa;

    invoke-virtual {v0}, Lcom/m/ab/aa;->ab()S

    move-result v3

    if-ne v3, v5, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/m/ab/aa;->aa()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    sget-object v2, Lcom/m/u/bb;->aa:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    move v2, v1

    move-object v1, v0

    :goto_3
    iget-object v0, p0, Lcom/m/u/bc;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    iget-object v0, p0, Lcom/m/u/bc;->ab:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "devEvent"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/m/u/bc;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m/ab/aa;

    invoke-virtual {v0}, Lcom/m/ab/aa;->ab()S

    move-result v3

    if-ne v3, v5, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/m/ab/aa;->aa()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
