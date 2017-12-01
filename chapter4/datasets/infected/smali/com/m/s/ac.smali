.class Lcom/m/s/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/m/u/am$aa;


# instance fields
.field final synthetic aa:Lcom/m/s/i;


# direct methods
.method constructor <init>(Lcom/m/s/i;)V
    .locals 0

    iput-object p1, p0, Lcom/m/s/ac;->aa:Lcom/m/s/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa()V
    .locals 1

    iget-object v0, p0, Lcom/m/s/ac;->aa:Lcom/m/s/i;

    invoke-virtual {v0}, Lcom/m/s/i;->aa()V

    return-void
.end method

.method public aa(Lcom/m/ac/ac;)V
    .locals 4

    iget-object v0, p0, Lcom/m/s/ac;->aa:Lcom/m/s/i;

    iget-object v0, v0, Lcom/m/s/i;->ac:Landroid/content/Context;

    sget-object v1, Lcom/m/ac/aa;->aq:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->ai:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->aj:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/m/ac/ac;->aa()Lcom/m/ab/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/m/ab/at;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->ak:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/m/ac/ac;->ab()Lcom/m/ab/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/m/ab/at;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->al:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/m/ac/ac;->ac()Lcom/m/ab/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/m/ab/at;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/m/s/ac;->aa:Lcom/m/s/i;

    invoke-virtual {v0, p1}, Lcom/m/s/i;->aa(Lcom/m/ac/ac;)V

    return-void
.end method
