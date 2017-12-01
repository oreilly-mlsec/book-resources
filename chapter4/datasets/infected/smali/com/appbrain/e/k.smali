.class public final Lcom/appbrain/e/k;
.super Lcom/appbrain/c/i;


# instance fields
.field private a:I

.field private b:Lcom/appbrain/e/l;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/c/i;-><init>()V

    invoke-static {}, Lcom/appbrain/e/l;->a()Lcom/appbrain/e/l;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/k;->b:Lcom/appbrain/e/l;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/k;)Lcom/appbrain/e/j;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/e/k;->b()Lcom/appbrain/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/j;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    invoke-virtual {v0}, Lcom/appbrain/c/q;->a()Lcom/appbrain/c/l;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method static synthetic a()Lcom/appbrain/e/k;
    .locals 1

    new-instance v0, Lcom/appbrain/e/k;

    invoke-direct {v0}, Lcom/appbrain/e/k;-><init>()V

    return-object v0
.end method

.method private b()Lcom/appbrain/e/j;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/appbrain/e/j;

    invoke-direct {v2, v1}, Lcom/appbrain/e/j;-><init>(C)V

    iget v3, p0, Lcom/appbrain/e/k;->a:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/appbrain/e/k;->b:Lcom/appbrain/e/l;

    invoke-static {v2, v1}, Lcom/appbrain/e/j;->a(Lcom/appbrain/e/j;Lcom/appbrain/e/l;)V

    invoke-static {v2, v0}, Lcom/appbrain/e/j;->a(Lcom/appbrain/e/j;I)V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/k;
    .locals 3

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/appbrain/c/d;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/appbrain/c/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-static {}, Lcom/appbrain/e/l;->k()Lcom/appbrain/e/m;

    move-result-object v2

    iget v0, p0, Lcom/appbrain/e/k;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/k;->b:Lcom/appbrain/e/l;

    invoke-virtual {v2, v0}, Lcom/appbrain/e/m;->a(Lcom/appbrain/e/l;)Lcom/appbrain/e/m;

    :cond_1
    invoke-virtual {p1, v2, p2}, Lcom/appbrain/c/d;->a(Lcom/appbrain/c/p;Lcom/appbrain/c/g;)V

    invoke-virtual {v2}, Lcom/appbrain/e/m;->a()Lcom/appbrain/e/l;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/appbrain/e/k;->b:Lcom/appbrain/e/l;

    iget v0, p0, Lcom/appbrain/e/k;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/k;->a:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/k;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/e/j;)Lcom/appbrain/e/k;
    .locals 3

    invoke-static {}, Lcom/appbrain/e/j;->a()Lcom/appbrain/e/j;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/appbrain/e/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/e/j;->c()Lcom/appbrain/e/l;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/e/k;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/appbrain/e/k;->b:Lcom/appbrain/e/l;

    invoke-static {}, Lcom/appbrain/e/l;->a()Lcom/appbrain/e/l;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/appbrain/e/k;->b:Lcom/appbrain/e/l;

    invoke-static {v1}, Lcom/appbrain/e/l;->a(Lcom/appbrain/e/l;)Lcom/appbrain/e/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/e/m;->a(Lcom/appbrain/e/l;)Lcom/appbrain/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/m;->a()Lcom/appbrain/e/l;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/k;->b:Lcom/appbrain/e/l;

    :goto_1
    iget v0, p0, Lcom/appbrain/e/k;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/k;->a:I

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/appbrain/e/k;->b:Lcom/appbrain/e/l;

    goto :goto_1
.end method

.method public final synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/k;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/appbrain/c/i;
    .locals 2

    new-instance v0, Lcom/appbrain/e/k;

    invoke-direct {v0}, Lcom/appbrain/e/k;-><init>()V

    invoke-direct {p0}, Lcom/appbrain/e/k;->b()Lcom/appbrain/e/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/e/k;->a(Lcom/appbrain/e/j;)Lcom/appbrain/e/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/appbrain/c/o;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/e/k;->b()Lcom/appbrain/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/j;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method
