.class public Lcom/ose/a/f;
.super Lcom/ose/a/e;


# instance fields
.field private c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ose/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ose/a/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ose/a/h;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/ose/a/f;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/ose/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/ose/a/f;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ose/a/f;->b:Ljava/lang/Object;

    const-string v1, "ori"

    invoke-static {v0, v1}, Lcom/ose/a/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ose/a/f;->c:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lcom/ose/a/f;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ose/a/f;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ose/a/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ose/a/f;->b:Ljava/lang/Object;

    return-void
.end method
