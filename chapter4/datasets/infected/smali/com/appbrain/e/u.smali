.class public final Lcom/appbrain/e/u;
.super Lcom/appbrain/c/i;


# instance fields
.field private a:I

.field private b:Lcom/appbrain/e/p;

.field private c:Z

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/c/i;-><init>()V

    invoke-static {}, Lcom/appbrain/e/p;->a()Lcom/appbrain/e/p;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/u;->b:Lcom/appbrain/e/p;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/u;)Lcom/appbrain/e/t;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/e/u;->c()Lcom/appbrain/e/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/t;->h()Z

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

.method static synthetic b()Lcom/appbrain/e/u;
    .locals 1

    new-instance v0, Lcom/appbrain/e/u;

    invoke-direct {v0}, Lcom/appbrain/e/u;-><init>()V

    return-object v0
.end method

.method private c()Lcom/appbrain/e/t;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/appbrain/e/t;

    invoke-direct {v2, v1}, Lcom/appbrain/e/t;-><init>(C)V

    iget v3, p0, Lcom/appbrain/e/u;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/appbrain/e/u;->b:Lcom/appbrain/e/p;

    invoke-static {v2, v1}, Lcom/appbrain/e/t;->a(Lcom/appbrain/e/t;Lcom/appbrain/e/p;)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/appbrain/e/u;->c:Z

    invoke-static {v2, v1}, Lcom/appbrain/e/t;->a(Lcom/appbrain/e/t;Z)V

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/appbrain/e/u;->d:I

    invoke-static {v2, v1}, Lcom/appbrain/e/t;->a(Lcom/appbrain/e/t;I)V

    invoke-static {v2, v0}, Lcom/appbrain/e/t;->b(Lcom/appbrain/e/t;I)V

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/u;
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
    invoke-static {}, Lcom/appbrain/e/p;->q()Lcom/appbrain/e/q;

    move-result-object v2

    iget v0, p0, Lcom/appbrain/e/u;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/u;->b:Lcom/appbrain/e/p;

    invoke-virtual {v2, v0}, Lcom/appbrain/e/q;->a(Lcom/appbrain/e/p;)Lcom/appbrain/e/q;

    :cond_1
    invoke-virtual {p1, v2, p2}, Lcom/appbrain/c/d;->a(Lcom/appbrain/c/p;Lcom/appbrain/c/g;)V

    invoke-virtual {v2}, Lcom/appbrain/e/q;->b()Lcom/appbrain/e/p;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/appbrain/e/u;->b:Lcom/appbrain/e/p;

    iget v0, p0, Lcom/appbrain/e/u;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/u;->a:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/appbrain/e/u;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/u;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appbrain/e/u;->c:Z

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/appbrain/e/u;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/e/u;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/u;->d:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/u;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/u;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/appbrain/e/t;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/e/u;->c()Lcom/appbrain/e/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/t;->h()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(I)Lcom/appbrain/e/u;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/u;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/e/u;->a:I

    iput p1, p0, Lcom/appbrain/e/u;->d:I

    return-object p0
.end method

.method public final a(Lcom/appbrain/e/q;)Lcom/appbrain/e/u;
    .locals 1

    invoke-virtual {p1}, Lcom/appbrain/e/q;->a()Lcom/appbrain/e/p;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/u;->b:Lcom/appbrain/e/p;

    iget v0, p0, Lcom/appbrain/e/u;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/u;->a:I

    return-object p0
.end method

.method public final a(Lcom/appbrain/e/t;)Lcom/appbrain/e/u;
    .locals 3

    invoke-static {}, Lcom/appbrain/e/t;->a()Lcom/appbrain/e/t;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/appbrain/e/t;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appbrain/e/t;->c()Lcom/appbrain/e/p;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/e/u;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/appbrain/e/u;->b:Lcom/appbrain/e/p;

    invoke-static {}, Lcom/appbrain/e/p;->a()Lcom/appbrain/e/p;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/appbrain/e/u;->b:Lcom/appbrain/e/p;

    invoke-static {v1}, Lcom/appbrain/e/p;->a(Lcom/appbrain/e/p;)Lcom/appbrain/e/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/e/q;->a(Lcom/appbrain/e/p;)Lcom/appbrain/e/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/q;->b()Lcom/appbrain/e/p;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/u;->b:Lcom/appbrain/e/p;

    :goto_1
    iget v0, p0, Lcom/appbrain/e/u;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/u;->a:I

    :cond_2
    invoke-virtual {p1}, Lcom/appbrain/e/t;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/appbrain/e/t;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/u;->a(Z)Lcom/appbrain/e/u;

    :cond_3
    invoke-virtual {p1}, Lcom/appbrain/e/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/e/t;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/u;->a(I)Lcom/appbrain/e/u;

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/appbrain/e/u;->b:Lcom/appbrain/e/p;

    goto :goto_1
.end method

.method public final a(Z)Lcom/appbrain/e/u;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/u;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/u;->a:I

    iput-boolean p1, p0, Lcom/appbrain/e/u;->c:Z

    return-object p0
.end method

.method public final synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/u;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/appbrain/c/i;
    .locals 2

    new-instance v0, Lcom/appbrain/e/u;

    invoke-direct {v0}, Lcom/appbrain/e/u;-><init>()V

    invoke-direct {p0}, Lcom/appbrain/e/u;->c()Lcom/appbrain/e/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/e/u;->a(Lcom/appbrain/e/t;)Lcom/appbrain/e/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/appbrain/c/o;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/e/u;->a()Lcom/appbrain/e/t;

    move-result-object v0

    return-object v0
.end method
