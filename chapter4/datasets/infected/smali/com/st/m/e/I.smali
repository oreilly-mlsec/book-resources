.class public abstract Lcom/st/m/e/I;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:I

.field protected c:Landroid/os/Handler;

.field protected da:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/st/m/e/I;->da:Z

    iput-object p2, p0, Lcom/st/m/e/I;->a:Landroid/content/Context;

    iput p1, p0, Lcom/st/m/e/I;->b:I

    iput-object p3, p0, Lcom/st/m/e/I;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/st/m/e/I;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/st/m/u/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/st/m/e/I;->a(Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Landroid/content/Intent;II)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method
