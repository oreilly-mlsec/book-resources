.class public Lcom/st/m/u/l;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Lcom/st/m/u/l;

.field private static final ef:Ljava/lang/String;


# instance fields
.field private c:Landroid/app/AlarmManager;

.field private da:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/st/m/u/a;->Ivc:[B

    invoke-static {v0}, Lcom/st/m/u/c;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/st/m/u/l;->ef:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/st/m/u/l;->da:Ljava/util/Random;

    sput-object p1, Lcom/st/m/u/l;->a:Landroid/content/Context;

    sget-object v0, Lcom/st/m/u/l;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/st/m/u/l;->c:Landroid/app/AlarmManager;

    return-void
.end method

.method private a(ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/st/m/u/l;->a:Landroid/content/Context;

    sget-object v2, Lcom/st/m/da/b;->ks:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/st/m/da/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    sget-object v1, Lcom/st/m/da/b;->mf:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    sget-object v1, Lcom/st/m/u/l;->a:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/st/m/u/l;
    .locals 1

    sget-object v0, Lcom/st/m/u/l;->b:Lcom/st/m/u/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/st/m/u/l;

    invoke-direct {v0, p0}, Lcom/st/m/u/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/st/m/u/l;->b:Lcom/st/m/u/l;

    :cond_0
    sget-object v0, Lcom/st/m/u/l;->b:Lcom/st/m/u/l;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/st/m/u/l;->a(IJZ)V

    return-void
.end method

.method public a(IJZ)V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/st/m/u/l;->ef:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/st/m/u/ef;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/st/m/u/f;->a()Lcom/st/m/u/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/st/m/u/f;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-nez p4, :cond_0

    invoke-static {}, Lcom/st/m/u/f;->a()Lcom/st/m/u/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/st/m/u/f;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/st/m/u/l;->da:Ljava/util/Random;

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    :cond_0
    const/4 v0, 0x2

    sget-object v1, Lcom/st/m/u/l;->ef:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/st/m/u/ks;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/st/m/u/ef;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/st/m/u/l;->c:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/st/m/u/l;->a(ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v6

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x5

    move v4, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/st/m/u/l;->c:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/st/m/u/l;->a(ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x3

    sget-object v1, Lcom/st/m/u/l;->ef:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/st/m/u/ef;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(JI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/st/m/u/l;->a(JILandroid/os/Bundle;)V

    return-void
.end method

.method public a(JILandroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/st/m/u/f;->a()Lcom/st/m/u/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/st/m/u/f;->c()Z

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

    iget-object v0, p0, Lcom/st/m/u/l;->da:Ljava/util/Random;

    const v5, 0xea60

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v5, v0

    add-long p1, v3, v5

    :cond_0
    sget-object v0, Lcom/st/m/u/l;->ef:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/st/m/u/ks;->a(J)Ljava/lang/String;

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

    invoke-static {v0, v2}, Lcom/st/m/u/ef;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/st/m/u/l;->c:Landroid/app/AlarmManager;

    invoke-direct {p0, p3, p4}, Lcom/st/m/u/l;->a(ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/st/m/u/l;->c:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/st/m/u/l;->a(ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public c(I)V
    .locals 4

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/st/m/u/l;->a(JILandroid/os/Bundle;)V

    return-void
.end method
