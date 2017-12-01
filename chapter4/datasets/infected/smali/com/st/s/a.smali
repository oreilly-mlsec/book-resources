.class Lcom/st/s/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/st/s/StatsService;


# direct methods
.method constructor <init>(Lcom/st/s/StatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/st/s/a;->a:Lcom/st/s/StatsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/st/s/StatsService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/st/m/u/ef;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/st/s/a;->a:Lcom/st/s/StatsService;

    invoke-static {v0}, Lcom/st/s/StatsService;->a(Lcom/st/s/StatsService;)[Lcom/st/m/e/I;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/st/s/a;->a:Lcom/st/s/StatsService;

    invoke-virtual {v0}, Lcom/st/s/StatsService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/st/s/a;->a:Lcom/st/s/StatsService;

    invoke-virtual {v0}, Lcom/st/s/StatsService;->stopSelf()V

    sget-object v0, Lcom/st/s/StatsService;->a:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/st/m/u/ef;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
