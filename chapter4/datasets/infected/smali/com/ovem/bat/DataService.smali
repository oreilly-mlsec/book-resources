.class public Lcom/ovem/bat/DataService;
.super Landroid/app/Service;


# static fields
.field public static final aa:Ljava/lang/String;


# instance fields
.field public ab:Lcom/ovem/dun/FatReceiver;

.field public ac:Lcom/ovem/dun/FatReceiver;

.field public ad:Landroid/os/Handler;

.field private ae:[Lcom/m/s/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->dv:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ovem/bat/DataService;->aa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lcom/m/s/ad;->aa()I

    move-result v0

    new-array v0, v0, [Lcom/m/s/i;

    iput-object v0, p0, Lcom/ovem/bat/DataService;->ae:[Lcom/m/s/i;

    new-instance v0, Lcom/ovem/dun/FatReceiver;

    invoke-direct {v0}, Lcom/ovem/dun/FatReceiver;-><init>()V

    iput-object v0, p0, Lcom/ovem/bat/DataService;->ab:Lcom/ovem/dun/FatReceiver;

    new-instance v0, Lcom/ovem/dun/FatReceiver;

    invoke-direct {v0}, Lcom/ovem/dun/FatReceiver;-><init>()V

    iput-object v0, p0, Lcom/ovem/bat/DataService;->ac:Lcom/ovem/dun/FatReceiver;

    new-instance v0, Lcom/ovem/bat/aa;

    invoke-direct {v0, p0}, Lcom/ovem/bat/aa;-><init>(Lcom/ovem/bat/DataService;)V

    iput-object v0, p0, Lcom/ovem/bat/DataService;->ad:Landroid/os/Handler;

    return-void
.end method

.method static synthetic aa(Lcom/ovem/bat/DataService;)[Lcom/m/s/i;
    .locals 1

    iget-object v0, p0, Lcom/ovem/bat/DataService;->ae:[Lcom/m/s/i;

    return-object v0
.end method


# virtual methods
.method public aa()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ovem/bat/DataService;->ae:[Lcom/m/s/i;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    aget-object v4, v2, v1

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public ab()V
    .locals 2

    iget-object v0, p0, Lcom/ovem/bat/DataService;->ab:Lcom/ovem/dun/FatReceiver;

    invoke-virtual {p0}, Lcom/ovem/bat/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/as;->aa(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ovem/bat/DataService;->ac:Lcom/ovem/dun/FatReceiver;

    invoke-virtual {p0}, Lcom/ovem/bat/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/as;->ab(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public ac()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ovem/bat/DataService;->ab:Lcom/ovem/dun/FatReceiver;

    invoke-virtual {p0}, Lcom/ovem/bat/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/as;->ac(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ovem/bat/DataService;->ac:Lcom/ovem/dun/FatReceiver;

    invoke-virtual {p0}, Lcom/ovem/bat/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/as;->ac(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/m/u/aq;->aa()V

    invoke-static {}, Lcom/m/aa/aa;->aa()Lcom/m/aa/aa;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ovem/bat/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m/aa/aa;->aa(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ovem/bat/DataService;->ab()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/ovem/bat/DataService;->ac()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/ovem/bat/DataService;->aa:Ljava/lang/String;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ovem/bat/DataService;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ovem/bat/DataService;->stopSelf()V

    sget-object v0, Lcom/ovem/bat/DataService;->aa:Ljava/lang/String;

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->br:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/ovem/bat/DataService;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "5    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ovem/bat/DataService;->ae:[Lcom/m/s/i;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ovem/bat/DataService;->ae:[Lcom/m/s/i;

    invoke-virtual {p0}, Lcom/ovem/bat/DataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ovem/bat/DataService;->ad:Landroid/os/Handler;

    invoke-static {v0, v2, v3}, Lcom/m/s/ad;->aa(ILandroid/content/Context;Landroid/os/Handler;)Lcom/m/s/i;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_3
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/ovem/bat/DataService;->ae:[Lcom/m/s/i;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ovem/bat/DataService;->ae:[Lcom/m/s/i;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/m/s/i;->aa(Landroid/content/Intent;II)V

    goto :goto_0
.end method
