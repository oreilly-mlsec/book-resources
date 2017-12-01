.class public Lcom/nx/a/i;
.super Lcom/nx/a/h;


# instance fields
.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;

.field private j:Ljava/lang/reflect/Method;

.field private k:Ljava/lang/reflect/Method;

.field private l:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nx/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;II)I
    .locals 6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/nx/a/i;->i:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    const-string v2, "onStartCommand"

    invoke-static {v0, v2}, Lcom/nx/a/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/i;->i:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/nx/a/i;->i:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/nx/a/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    iget-object v0, p0, Lcom/nx/a/i;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/nx/a/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/i;->f:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nx/a/i;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nx/a/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nx/a/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nx/a/k;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/nx/a/i;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/app/Service;)V
    .locals 4

    iget-object v0, p0, Lcom/nx/a/i;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    const-string v1, "ss"

    invoke-static {v0, v1}, Lcom/nx/a/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/i;->c:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nx/a/i;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nx/a/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Landroid/content/Intent;I)V
    .locals 5

    iget-object v0, p0, Lcom/nx/a/i;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/nx/a/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/i;->e:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nx/a/i;->e:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nx/a/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/nx/a/i;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/nx/a/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/i;->j:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nx/a/i;->j:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nx/a/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SM:\ufffd\u06ba\u02f6\ufffd\u04e6\ufffd\ufffdClass\u02b5\ufffd\ufffd\u03aa\ufffd\u0563\ufffd\ufffd\u07b7\ufffd\ufffd\ufffd\ufffd\ufffd..."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/nx/a/h;->b:Ljava/lang/Object;

    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/nx/a/i;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/nx/a/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/i;->d:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nx/a/i;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nx/a/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Landroid/content/Intent;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nx/a/i;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    const-string v2, "onUnbind"

    invoke-static {v0, v2}, Lcom/nx/a/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/i;->g:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/nx/a/i;->g:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/nx/a/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    iget-object v0, p0, Lcom/nx/a/i;->k:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/nx/a/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/i;->k:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nx/a/i;->k:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nx/a/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/nx/a/i;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Lcom/nx/a/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/i;->h:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nx/a/i;->h:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nx/a/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected d()V
    .locals 3

    iget-object v0, p0, Lcom/nx/a/i;->l:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/nx/a/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nx/a/i;->l:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/nx/a/i;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nx/a/i;->l:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nx/a/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
