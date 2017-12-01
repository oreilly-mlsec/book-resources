.class public Lcom/ovem/kmi/ProService;
.super Landroid/app/Service;


# static fields
.field public static final aa:Ljava/lang/String;

.field private static final ac:Ljava/lang/String;


# instance fields
.field ab:Lcom/ovem/dun/FatReceiver;

.field private ad:Landroid/content/res/AssetManager;

.field private ae:Landroid/content/res/Resources;

.field private af:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->dw:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ovem/kmi/ProService;->ac:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->fy:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ovem/kmi/ProService;->aa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/ovem/dun/FatReceiver;

    invoke-direct {v0}, Lcom/ovem/dun/FatReceiver;-><init>()V

    iput-object v0, p0, Lcom/ovem/kmi/ProService;->ab:Lcom/ovem/dun/FatReceiver;

    return-void
.end method

.method static synthetic aa(Lcom/ovem/kmi/ProService;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/ovem/kmi/ProService;->ae:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic aa()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ovem/kmi/ProService;->ac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aa(Lcom/ovem/kmi/ProService;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ovem/kmi/ProService;->aa(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic aa(Lcom/ovem/kmi/ProService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ovem/kmi/ProService;->aa(Ljava/lang/String;)V

    return-void
.end method

.method private aa(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    check-cast p1, Landroid/app/Service;

    iput-object p1, p0, Lcom/ovem/kmi/ProService;->af:Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private aa(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/m/u/as;->aa(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ovem/kmi/ProService;->ad:Landroid/content/res/AssetManager;

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/ovem/kmi/ProService;->ad:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/ovem/kmi/ProService;->ae:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected aa(Ljava/lang/String;Landroid/content/Intent;II)V
    .locals 6

    sget-object v0, Lcom/ovem/kmi/ProService;->ac:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/ag;->ac(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ovem/kmi/ProService;->af:Landroid/app/Service;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ovem/kmi/ProService;->ac:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/m/u/ag;->ac(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/m/u/o;

    invoke-virtual {p0}, Lcom/ovem/kmi/ProService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/m/u/o;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/ovem/kmi/aa;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ovem/kmi/aa;-><init>(Lcom/ovem/kmi/ProService;Lcom/m/u/o;Landroid/content/Intent;II)V

    invoke-virtual {v2, p1, v0}, Lcom/m/u/o;->aa(Ljava/lang/String;Lcom/m/u/ao;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ovem/kmi/ProService;->ac:Ljava/lang/String;

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/m/u/ag;->ac(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ovem/kmi/ProService;->af:Landroid/app/Service;

    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/m/ac/aa;->bs:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/ovem/kmi/ProService;->ac:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "5    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ac(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/ovem/kmi/ProService;->ae:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ovem/kmi/ProService;->ae:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcom/m/u/aq;->aa()V

    invoke-static {}, Lcom/m/u/n;->getInstance()Lcom/m/u/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/m/u/n;->startPro(Landroid/content/Context;)V

    invoke-static {}, Lcom/m/aa/aa;->aa()Lcom/m/aa/aa;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ovem/kmi/ProService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m/aa/aa;->aa(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ovem/kmi/ProService;->ab:Lcom/ovem/dun/FatReceiver;

    invoke-virtual {p0}, Lcom/ovem/kmi/ProService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/as;->aa(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/ovem/kmi/ProService;->ab:Lcom/ovem/dun/FatReceiver;

    invoke-virtual {p0}, Lcom/ovem/kmi/ProService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/as;->ac(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, ""

    sget-object v0, Lcom/ovem/kmi/ProService;->ac:Ljava/lang/String;

    const-string v1, "6"

    invoke-static {v0, v1}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/m/u/aa;->aa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/m/ac/aa;->bv:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/ovem/kmi/ProService;->aa:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ovem/kmi/ProService;->aa(Ljava/lang/String;Landroid/content/Intent;II)V

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/m/ac/aa;->bu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ovem/kmi/ProService;->aa(Ljava/lang/String;Landroid/content/Intent;II)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/ovem/kmi/ProService;->ac:Ljava/lang/String;

    const-string v1, "7"

    invoke-static {v0, v1}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
