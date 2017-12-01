.class public Lcom/m/s/s;
.super Lcom/m/s/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m/s/s$aa;
    }
.end annotation


# static fields
.field public static final aa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->ed:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/s/s;->aa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/m/s/i;-><init>(ILandroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic aa(Lcom/m/s/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/m/s/s;->ad()V

    return-void
.end method

.method static synthetic ab(Lcom/m/s/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/m/s/s;->ae()V

    return-void
.end method

.method static synthetic ac(Lcom/m/s/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/m/s/s;->af()V

    return-void
.end method

.method private ad()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/m/s/s;->ac:Landroid/content/Context;

    sget-object v2, Lcom/m/ac/aa;->bc:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/m/ac/aa;->bv:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/m/ac/aa;->bs:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/m/s/s;->ac:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private ae()V
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/m/s/s;->ac:Landroid/content/Context;

    sget-object v3, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/m/ac/aa;->as:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v2, 0x5a0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {}, Lcom/m/u/ah;->aa()Lcom/m/u/ah;

    move-result-object v6

    invoke-virtual {v6}, Lcom/m/u/ah;->ac()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/m/s/s;->ac:Landroid/content/Context;

    invoke-static {v2}, Lcom/m/u/av;->aa(Landroid/content/Context;)Lcom/m/u/av;

    move-result-object v2

    sget-object v3, Lcom/m/s/ad;->aa:Lcom/m/s/ad;

    invoke-virtual {v3}, Lcom/m/s/ad;->ab()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/m/u/av;->aa(JILandroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    sget-object v1, Lcom/m/s/s;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private af()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/m/s/s;->ac:Landroid/content/Context;

    invoke-static {v2}, Lcom/m/u/av;->aa(Landroid/content/Context;)Lcom/m/u/av;

    move-result-object v2

    sget-object v3, Lcom/m/s/ad;->ac:Lcom/m/s/ad;

    invoke-virtual {v3}, Lcom/m/s/ad;->ab()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/m/u/av;->aa(JILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public aa(Landroid/content/Intent;II)V
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/m/s/s;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/m/s/s$aa;

    invoke-direct {v0, p0}, Lcom/m/s/s$aa;-><init>(Lcom/m/s/s;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/m/s/s$aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public aa(Lcom/m/ac/ac;)V
    .locals 0

    return-void
.end method
