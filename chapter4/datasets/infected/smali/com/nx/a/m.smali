.class public Lcom/nx/a/m;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG_TYPE_DEVEL:I = -0x1

.field private static a:Lcom/nx/a/m;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/m;->b:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nx/a/f;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nx/a/m;
    .locals 1

    sget-object v0, Lcom/nx/a/m;->a:Lcom/nx/a/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nx/a/m;

    invoke-direct {v0, p0}, Lcom/nx/a/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nx/a/m;->a:Lcom/nx/a/m;

    :cond_0
    sget-object v0, Lcom/nx/a/m;->a:Lcom/nx/a/m;

    return-object v0
.end method


# virtual methods
.method public initAD()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/nx/a/m;->b:Landroid/content/Context;

    const-class v1, Lcom/nx/a/a;

    invoke-static {v0, v1}, Lcom/nx/a/b;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/nx/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/nx/a/k;->B:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nx/a/m;->b:Landroid/content/Context;

    const-class v2, Lcom/nx/a/er;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nx/a/m;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isEnable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nx/a/m;->setSilentTime(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x34fd9000

    invoke-virtual {p0, v0}, Lcom/nx/a/m;->setSilentTimeMinuteUnlimited(I)V

    goto :goto_0
.end method

.method public setDebugAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nx/a/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nx/a/l;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/nx/a/k;->m:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/nx/a/k;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setDebugMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/nx/a/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nx/a/l;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/nx/a/k;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setGapTime(J)V
    .locals 2

    iget-object v0, p0, Lcom/nx/a/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/nx/a/l;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/nx/a/k;->r:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSilentTime(I)V
    .locals 4

    const-wide/16 v0, 0x0

    if-lez p1, :cond_0

    const/16 v2, 0x2d0

    if-ge p1, v2, :cond_0

    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :cond_0
    iget-object v2, p0, Lcom/nx/a/m;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/nx/a/l;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/nx/a/k;->p:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSilentTimeMinuteUnlimited(I)V
    .locals 4

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/nx/a/m;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/nx/a/l;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/nx/a/k;->p:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
