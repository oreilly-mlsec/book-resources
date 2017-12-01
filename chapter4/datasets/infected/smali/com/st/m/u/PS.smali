.class public Lcom/st/m/u/PS;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 2

    sget-object v0, Lcom/st/m/da/b;->ks:Ljava/lang/String;

    const-class v1, Lcom/st/s/StatsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/st/m/u/PPS;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/st/m/da/b;->l:Ljava/lang/String;

    const-class v1, Lcom/st/r/StatsReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/st/m/u/PPS;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
