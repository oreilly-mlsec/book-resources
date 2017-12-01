.class Lcom/ovem/kmi/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/m/u/ao;


# instance fields
.field final synthetic aa:Lcom/ovem/kmi/ProService;

.field private final synthetic ab:Lcom/m/u/o;

.field private final synthetic ac:Landroid/content/Intent;

.field private final synthetic ad:I

.field private final synthetic ae:I


# direct methods
.method constructor <init>(Lcom/ovem/kmi/ProService;Lcom/m/u/o;Landroid/content/Intent;II)V
    .locals 0

    iput-object p1, p0, Lcom/ovem/kmi/aa;->aa:Lcom/ovem/kmi/ProService;

    iput-object p2, p0, Lcom/ovem/kmi/aa;->ab:Lcom/m/u/o;

    iput-object p3, p0, Lcom/ovem/kmi/aa;->ac:Landroid/content/Intent;

    iput p4, p0, Lcom/ovem/kmi/aa;->ad:I

    iput p5, p0, Lcom/ovem/kmi/aa;->ae:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa(ZLjava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/ovem/kmi/ProService;->aa()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3 "

    invoke-static {v0, v1}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ovem/kmi/aa;->aa:Lcom/ovem/kmi/ProService;

    invoke-static {}, Lcom/m/u/al;->aa()Lcom/m/u/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/m/u/al;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ovem/kmi/ProService;->aa(Lcom/ovem/kmi/ProService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ovem/kmi/aa;->ab:Lcom/m/u/o;

    invoke-virtual {v0}, Lcom/m/u/o;->aa()Lcom/m/u/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m/u/al;->ad()Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/ovem/kmi/aa;->aa:Lcom/ovem/kmi/ProService;

    invoke-static {v1, v0}, Lcom/ovem/kmi/ProService;->aa(Lcom/ovem/kmi/ProService;Ljava/lang/Object;)V

    sget-object v1, Lcom/m/u/ac;->fx:[B

    invoke-static {v1}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/res/Resources;

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ovem/kmi/aa;->aa:Lcom/ovem/kmi/ProService;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ovem/kmi/aa;->aa:Lcom/ovem/kmi/ProService;

    invoke-static {v4}, Lcom/ovem/kmi/ProService;->aa(Lcom/ovem/kmi/ProService;)Landroid/content/res/Resources;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Lcom/m/u/ac;->fw:[B

    invoke-static {v1}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ovem/kmi/aa;->ac:Landroid/content/Intent;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/ovem/kmi/aa;->ad:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/ovem/kmi/aa;->ae:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ovem/kmi/aa;->aa:Lcom/ovem/kmi/ProService;

    invoke-virtual {v0}, Lcom/ovem/kmi/ProService;->stopSelf()V

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/ovem/kmi/aa;->aa:Lcom/ovem/kmi/ProService;

    invoke-virtual {v0}, Lcom/ovem/kmi/ProService;->stopSelf()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
