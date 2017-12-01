.class final Lcom/appbrain/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appbrain/a/l;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appbrain/a/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/m;->a:Lcom/appbrain/a/l;

    iput-object p2, p0, Lcom/appbrain/a/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appbrain/a/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/appbrain/a/m;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/appbrain/e/r;->g()Lcom/appbrain/e/s;

    move-result-object v2

    iget-object v1, p0, Lcom/appbrain/a/m;->b:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    iget-object v1, p0, Lcom/appbrain/a/m;->c:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/appbrain/a/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/appbrain/e/s;->c(Ljava/lang/String;)Lcom/appbrain/e/s;

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/m;->a:Lcom/appbrain/a/l;

    # getter for: Lcom/appbrain/a/l;->b:Landroid/content/Context;
    invoke-static {v0}, Lcom/appbrain/a/l;->access$0(Lcom/appbrain/a/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/q;->a(Landroid/content/Context;)Lcom/appbrain/a/q;

    move-result-object v0

    invoke-virtual {v2}, Lcom/appbrain/e/s;->a()Lcom/appbrain/e/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/a/q;->a(Lcom/appbrain/e/r;)Lcom/appbrain/e/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appbrain/a/m;->a:Lcom/appbrain/a/l;

    # getter for: Lcom/appbrain/a/l;->b:Landroid/content/Context;
    invoke-static {v1}, Lcom/appbrain/a/l;->access$0(Lcom/appbrain/a/l;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appbrain/e/j;->c()Lcom/appbrain/e/l;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appbrain/a/n;->a(Landroid/content/Context;Lcom/appbrain/e/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    aget-object v5, v3, v1

    iget-object v6, p0, Lcom/appbrain/a/m;->a:Lcom/appbrain/a/l;

    # getter for: Lcom/appbrain/a/l;->b:Landroid/content/Context;
    invoke-static {v6}, Lcom/appbrain/a/l;->access$0(Lcom/appbrain/a/l;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/appbrain/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5}, Lcom/appbrain/e/s;->b(Ljava/lang/String;)Lcom/appbrain/e/s;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Lcom/appbrain/e/s;->a(Ljava/lang/String;)Lcom/appbrain/e/s;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
