.class Lcom/third/mu/utils/f;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/third/mu/utils/e;


# direct methods
.method constructor <init>(Lcom/third/mu/utils/e;)V
    .locals 0

    iput-object p1, p0, Lcom/third/mu/utils/f;->a:Lcom/third/mu/utils/e;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/third/mu/utils/e;

    iget-object v1, p0, Lcom/third/mu/utils/f;->a:Lcom/third/mu/utils/e;

    invoke-static {v1}, Lcom/third/mu/utils/e;->a(Lcom/third/mu/utils/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/third/mu/utils/f;->a:Lcom/third/mu/utils/e;

    invoke-static {v2}, Lcom/third/mu/utils/e;->b(Lcom/third/mu/utils/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/third/mu/utils/f;->a:Lcom/third/mu/utils/e;

    invoke-static {v3}, Lcom/third/mu/utils/e;->c(Lcom/third/mu/utils/e;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/third/mu/utils/e;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/third/mu/utils/e;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/third/mu/utils/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
