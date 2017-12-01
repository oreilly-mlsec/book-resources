.class public Lcom/m/u/aq;
.super Ljava/lang/Object;


# direct methods
.method public static aa()V
    .locals 2

    sget-object v0, Lcom/m/ac/aa;->bc:Ljava/lang/String;

    const-class v1, Lcom/ovem/kmi/ProService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/ar;->aa(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/m/ac/aa;->bd:Ljava/lang/String;

    const-class v1, Lcom/ovem/bat/DataService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/ar;->aa(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/m/ac/aa;->be:Ljava/lang/String;

    const-class v1, Lcom/ovem/btm/WalActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/ar;->aa(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/m/ac/aa;->bh:Ljava/lang/String;

    const-class v1, Lcom/ovem/dun/FatReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/ar;->aa(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
