.class Lcom/m/s/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/m/ab/au;


# instance fields
.field final synthetic aa:Lcom/m/s/c$aa;


# direct methods
.method constructor <init>(Lcom/m/s/c$aa;)V
    .locals 0

    iput-object p1, p0, Lcom/m/s/aa;->aa:Lcom/m/s/c$aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa(Ljava/lang/Boolean;Lcom/m/ab/ao;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    iget v0, v0, Lcom/m/ab/ap;->ag:I

    const-class v1, Lcom/m/ab/ak;

    invoke-static {v1}, Lcom/m/ab/ab;->aa(Ljava/lang/Class;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/m/s/aa;->aa:Lcom/m/s/c$aa;

    invoke-static {v0}, Lcom/m/s/c$aa;->aa(Lcom/m/s/c$aa;)Lcom/m/s/c;

    move-result-object v0

    iget-object v0, v0, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v1, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->as:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p2, Lcom/m/ab/ao;->ab:Ljava/lang/Object;

    check-cast v0, Lcom/m/ab/ak;

    sget-object v1, Lcom/m/s/c;->aa:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m/ab/ak;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/m/ab/ak;->ae()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    sget-object v2, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/m/s/aa;->aa:Lcom/m/s/c$aa;

    invoke-static {v1}, Lcom/m/s/c$aa;->aa(Lcom/m/s/c$aa;)Lcom/m/s/c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/m/s/c;->aa(Lcom/m/s/c;Lcom/m/ab/ak;)V

    :cond_0
    :goto_0
    sput-boolean v4, Lcom/m/s/c;->ab:Z

    iget-object v0, p0, Lcom/m/s/aa;->aa:Lcom/m/s/c$aa;

    invoke-static {v0}, Lcom/m/s/c$aa;->aa(Lcom/m/s/c$aa;)Lcom/m/s/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m/s/c;->ac()V

    return-void

    :cond_1
    const/4 v0, 0x7

    sget-object v1, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
