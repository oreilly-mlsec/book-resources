.class public final Lcom/appbrain/e/w;
.super Lcom/appbrain/c/i;


# instance fields
.field private a:I

.field private b:Lcom/appbrain/e/h;

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/c/i;-><init>()V

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/w;->b:Lcom/appbrain/e/h;

    return-void
.end method

.method static synthetic b()Lcom/appbrain/e/w;
    .locals 1

    new-instance v0, Lcom/appbrain/e/w;

    invoke-direct {v0}, Lcom/appbrain/e/w;-><init>()V

    return-object v0
.end method

.method private c()Lcom/appbrain/e/v;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/appbrain/e/v;

    invoke-direct {v2, v1}, Lcom/appbrain/e/v;-><init>(C)V

    iget v3, p0, Lcom/appbrain/e/w;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/appbrain/e/w;->b:Lcom/appbrain/e/h;

    invoke-static {v2, v1}, Lcom/appbrain/e/v;->a(Lcom/appbrain/e/v;Lcom/appbrain/e/h;)V

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/appbrain/e/w;->c:Z

    invoke-static {v2, v1}, Lcom/appbrain/e/v;->a(Lcom/appbrain/e/v;Z)V

    invoke-static {v2, v0}, Lcom/appbrain/e/v;->a(Lcom/appbrain/e/v;I)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/w;
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
    invoke-static {}, Lcom/appbrain/e/h;->av()Lcom/appbrain/e/i;

    move-result-object v2

    iget v0, p0, Lcom/appbrain/e/w;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/w;->b:Lcom/appbrain/e/h;

    invoke-virtual {v2, v0}, Lcom/appbrain/e/i;->a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;

    :cond_1
    invoke-virtual {p1, v2, p2}, Lcom/appbrain/c/d;->a(Lcom/appbrain/c/p;Lcom/appbrain/c/g;)V

    invoke-virtual {v2}, Lcom/appbrain/e/i;->b()Lcom/appbrain/e/h;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/appbrain/e/w;->b:Lcom/appbrain/e/h;

    iget v0, p0, Lcom/appbrain/e/w;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/w;->a:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/appbrain/e/w;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/w;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appbrain/e/w;->c:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/w;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/w;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/appbrain/e/v;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/e/w;->c()Lcom/appbrain/e/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/v;->f()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/appbrain/e/i;)Lcom/appbrain/e/w;
    .locals 1

    invoke-virtual {p1}, Lcom/appbrain/e/i;->a()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/w;->b:Lcom/appbrain/e/h;

    iget v0, p0, Lcom/appbrain/e/w;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/w;->a:I

    return-object p0
.end method

.method public final a(Lcom/appbrain/e/v;)Lcom/appbrain/e/w;
    .locals 3

    invoke-static {}, Lcom/appbrain/e/v;->a()Lcom/appbrain/e/v;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/appbrain/e/v;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appbrain/e/v;->c()Lcom/appbrain/e/h;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/e/w;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/appbrain/e/w;->b:Lcom/appbrain/e/h;

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/appbrain/e/w;->b:Lcom/appbrain/e/h;

    invoke-static {v1}, Lcom/appbrain/e/h;->a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/e/i;->a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/i;->b()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/w;->b:Lcom/appbrain/e/h;

    :goto_1
    iget v0, p0, Lcom/appbrain/e/w;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/w;->a:I

    :cond_2
    invoke-virtual {p1}, Lcom/appbrain/e/v;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/e/v;->e()Z

    move-result v0

    iget v1, p0, Lcom/appbrain/e/w;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/appbrain/e/w;->a:I

    iput-boolean v0, p0, Lcom/appbrain/e/w;->c:Z

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/appbrain/e/w;->b:Lcom/appbrain/e/h;

    goto :goto_1
.end method

.method public final synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/w;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/w;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/appbrain/c/i;
    .locals 2

    new-instance v0, Lcom/appbrain/e/w;

    invoke-direct {v0}, Lcom/appbrain/e/w;-><init>()V

    invoke-direct {p0}, Lcom/appbrain/e/w;->c()Lcom/appbrain/e/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/e/w;->a(Lcom/appbrain/e/v;)Lcom/appbrain/e/w;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/appbrain/c/o;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/e/w;->a()Lcom/appbrain/e/v;

    move-result-object v0

    return-object v0
.end method
