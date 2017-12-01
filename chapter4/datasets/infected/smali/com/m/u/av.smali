.class public Lcom/m/u/av;
.super Ljava/lang/Object;


# static fields
.field public static aa:Landroid/content/Context;

.field public static ab:Lcom/m/u/av;

.field private static final ae:Ljava/lang/String;


# instance fields
.field private ac:Landroid/app/AlarmManager;

.field private ad:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->dz:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/av;->ae:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/m/u/av;->ad:Ljava/util/Random;

    sput-object p1, Lcom/m/u/av;->aa:Landroid/content/Context;

    sget-object v0, Lcom/m/u/av;->aa:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/m/u/av;->ac:Landroid/app/AlarmManager;

    return-void
.end method

.method private aa(ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/m/u/av;->aa:Landroid/content/Context;

    sget-object v2, Lcom/m/ac/aa;->bd:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/m/ac/aa;->br:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    sget-object v1, Lcom/m/ac/aa;->bp:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    sget-object v1, Lcom/m/u/av;->aa:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static aa(Landroid/content/Context;)Lcom/m/u/av;
    .locals 1

    sget-object v0, Lcom/m/u/av;->ab:Lcom/m/u/av;

    if-nez v0, :cond_0

    new-instance v0, Lcom/m/u/av;

    invoke-direct {v0, p0}, Lcom/m/u/av;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/m/u/av;->ab:Lcom/m/u/av;

    :cond_0
    sget-object v0, Lcom/m/u/av;->ab:Lcom/m/u/av;

    return-object v0
.end method


# virtual methods
.method public aa(I)V
    .locals 2

    iget-object v0, p0, Lcom/m/u/av;->ac:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/m/u/av;->aa(ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public aa(JI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/m/u/av;->aa(JILandroid/os/Bundle;)V

    return-void
.end method

.method public aa(JILandroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/m/u/ah;->aa()Lcom/m/u/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m/u/ah;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget-object v0, p0, Lcom/m/u/av;->ad:Ljava/util/Random;

    const v5, 0xea60

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v5, v0

    add-long p1, v3, v5

    :cond_0
    sget-object v0, Lcom/m/u/av;->ae:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/m/u/au;->aa(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m/u/av;->ac:Landroid/app/AlarmManager;

    invoke-direct {p0, p3, p4}, Lcom/m/u/av;->aa(ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public ab(I)V
    .locals 4

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/m/u/av;->aa(JILandroid/os/Bundle;)V

    return-void
.end method
