.class Lcom/m/s/c$aa;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m/s/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "aa"
.end annotation


# instance fields
.field aa:Lcom/m/ac/ac;

.field final synthetic ab:Lcom/m/s/c;


# direct methods
.method public constructor <init>(Lcom/m/s/c;Lcom/m/ac/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/m/s/c$aa;->ab:Lcom/m/s/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Lcom/m/s/c$aa;->aa:Lcom/m/ac/ac;

    return-void
.end method

.method static synthetic aa(Lcom/m/s/c$aa;)Lcom/m/s/c;
    .locals 1

    iget-object v0, p0, Lcom/m/s/c$aa;->ab:Lcom/m/s/c;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/m/ab/aj;

    invoke-direct {v0}, Lcom/m/ab/aj;-><init>()V

    iget-object v1, p0, Lcom/m/s/c$aa;->ab:Lcom/m/s/c;

    iget-object v1, v1, Lcom/m/s/c;->ac:Landroid/content/Context;

    invoke-static {v1}, Lcom/m/u/at;->aa(Landroid/content/Context;)Lcom/m/ab/aw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m/ab/aj;->aa(Lcom/m/ab/aw;)V

    iget-object v1, p0, Lcom/m/s/c$aa;->ab:Lcom/m/s/c;

    iget-object v1, v1, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v2, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/m/ac/aa;->bb:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m/ab/aj;->aa(Ljava/lang/String;)V

    sget-object v1, Lcom/m/s/c;->aa:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/m/ab/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/m/ab/an;->aa()Lcom/m/ab/an;

    move-result-object v1

    iget-object v2, p0, Lcom/m/s/c$aa;->aa:Lcom/m/ac/ac;

    invoke-virtual {v2}, Lcom/m/ac/ac;->ac()Lcom/m/ab/at;

    move-result-object v2

    new-instance v3, Lcom/m/s/aa;

    invoke-direct {v3, p0}, Lcom/m/s/aa;-><init>(Lcom/m/s/c$aa;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/m/ab/an;->aa(Lcom/m/ab/at;Ljava/lang/Object;Lcom/m/ab/au;)V

    return-void
.end method
