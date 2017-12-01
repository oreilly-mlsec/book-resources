.class public final Lcom/appbrain/e/s;
.super Lcom/appbrain/c/i;


# instance fields
.field private a:I

.field private b:Lcom/appbrain/e/h;

.field private c:Lcom/appbrain/c/n;

.field private d:Lcom/appbrain/c/n;

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/c/i;-><init>()V

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/s;->b:Lcom/appbrain/e/h;

    sget-object v0, Lcom/appbrain/c/m;->a:Lcom/appbrain/c/n;

    iput-object v0, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    sget-object v0, Lcom/appbrain/c/m;->a:Lcom/appbrain/c/n;

    iput-object v0, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/s;->e:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b()Lcom/appbrain/e/s;
    .locals 1

    new-instance v0, Lcom/appbrain/e/s;

    invoke-direct {v0}, Lcom/appbrain/e/s;-><init>()V

    return-object v0
.end method

.method private c()Lcom/appbrain/e/r;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/appbrain/e/r;

    invoke-direct {v2, v1}, Lcom/appbrain/e/r;-><init>(C)V

    iget v3, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/appbrain/e/s;->b:Lcom/appbrain/e/h;

    invoke-static {v2, v1}, Lcom/appbrain/e/r;->a(Lcom/appbrain/e/r;Lcom/appbrain/e/h;)V

    iget v1, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    new-instance v1, Lcom/appbrain/c/r;

    iget-object v4, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    invoke-direct {v1, v4}, Lcom/appbrain/c/r;-><init>(Lcom/appbrain/c/n;)V

    iput-object v1, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    iget v1, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/appbrain/e/s;->a:I

    :cond_0
    iget-object v1, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    invoke-static {v2, v1}, Lcom/appbrain/e/r;->a(Lcom/appbrain/e/r;Lcom/appbrain/c/n;)V

    iget v1, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    new-instance v1, Lcom/appbrain/c/r;

    iget-object v4, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    invoke-direct {v1, v4}, Lcom/appbrain/c/r;-><init>(Lcom/appbrain/c/n;)V

    iput-object v1, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    iget v1, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/appbrain/e/s;->a:I

    :cond_1
    iget-object v1, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    invoke-static {v2, v1}, Lcom/appbrain/e/r;->b(Lcom/appbrain/e/r;Lcom/appbrain/c/n;)V

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object v1, p0, Lcom/appbrain/e/s;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/e/r;->a(Lcom/appbrain/e/r;Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/appbrain/e/r;->a(Lcom/appbrain/e/r;I)V

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/s;
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

    iget v0, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/s;->b:Lcom/appbrain/e/h;

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
    iput-object v0, p0, Lcom/appbrain/e/s;->b:Lcom/appbrain/e/h;

    iget v0, p0, Lcom/appbrain/e/s;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/s;->a:I

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/appbrain/e/s;->d()V

    iget-object v0, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/appbrain/c/n;->a(Lcom/appbrain/c/c;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/appbrain/e/s;->h()V

    iget-object v0, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/appbrain/c/n;->a(Lcom/appbrain/c/c;)V

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/appbrain/e/s;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/e/s;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/s;->e:Ljava/lang/Object;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/appbrain/c/m;

    iget-object v1, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    invoke-direct {v0, v1}, Lcom/appbrain/c/m;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    iget v0, p0, Lcom/appbrain/e/s;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/s;->a:I

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget v0, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/appbrain/c/m;

    iget-object v1, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    invoke-direct {v0, v1}, Lcom/appbrain/c/m;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    iget v0, p0, Lcom/appbrain/e/s;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/e/s;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/s;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/s;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/appbrain/e/r;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/e/s;->c()Lcom/appbrain/e/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/r;->f()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/appbrain/e/i;)Lcom/appbrain/e/s;
    .locals 1

    invoke-virtual {p1}, Lcom/appbrain/e/i;->a()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/s;->b:Lcom/appbrain/e/h;

    iget v0, p0, Lcom/appbrain/e/s;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/s;->a:I

    return-object p0
.end method

.method public final a(Lcom/appbrain/e/r;)Lcom/appbrain/e/s;
    .locals 3

    invoke-static {}, Lcom/appbrain/e/r;->a()Lcom/appbrain/e/r;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/appbrain/e/r;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appbrain/e/r;->c()Lcom/appbrain/e/h;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/appbrain/e/s;->b:Lcom/appbrain/e/h;

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/appbrain/e/s;->b:Lcom/appbrain/e/h;

    invoke-static {v1}, Lcom/appbrain/e/h;->a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/e/i;->a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/i;->b()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/s;->b:Lcom/appbrain/e/h;

    :goto_1
    iget v0, p0, Lcom/appbrain/e/s;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/s;->a:I

    :cond_2
    invoke-static {p1}, Lcom/appbrain/e/r;->a(Lcom/appbrain/e/r;)Lcom/appbrain/c/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/c/n;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    invoke-interface {v0}, Lcom/appbrain/c/n;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/appbrain/e/r;->a(Lcom/appbrain/e/r;)Lcom/appbrain/c/n;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    iget v0, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/appbrain/e/s;->a:I

    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/appbrain/e/r;->b(Lcom/appbrain/e/r;)Lcom/appbrain/c/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/c/n;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    invoke-interface {v0}, Lcom/appbrain/c/n;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/appbrain/e/r;->b(Lcom/appbrain/e/r;)Lcom/appbrain/c/n;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    iget v0, p0, Lcom/appbrain/e/s;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/appbrain/e/s;->a:I

    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/appbrain/e/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/e/r;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/s;->c(Ljava/lang/String;)Lcom/appbrain/e/s;

    goto :goto_0

    :cond_5
    iput-object v0, p0, Lcom/appbrain/e/s;->b:Lcom/appbrain/e/h;

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/appbrain/e/s;->d()V

    iget-object v0, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    invoke-static {p1}, Lcom/appbrain/e/r;->a(Lcom/appbrain/e/r;)Lcom/appbrain/c/n;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appbrain/c/n;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/appbrain/e/s;->h()V

    iget-object v0, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    invoke-static {p1}, Lcom/appbrain/e/r;->b(Lcom/appbrain/e/r;)Lcom/appbrain/c/n;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appbrain/c/n;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)Lcom/appbrain/e/s;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/appbrain/e/s;->d()V

    iget-object v0, p0, Lcom/appbrain/e/s;->c:Lcom/appbrain/c/n;

    invoke-interface {v0, p1}, Lcom/appbrain/c/n;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/s;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/s;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/appbrain/e/s;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/appbrain/e/s;->h()V

    iget-object v0, p0, Lcom/appbrain/e/s;->d:Lcom/appbrain/c/n;

    invoke-interface {v0, p1}, Lcom/appbrain/c/n;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/appbrain/e/s;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/s;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/e/s;->a:I

    iput-object p1, p0, Lcom/appbrain/e/s;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic e()Lcom/appbrain/c/i;
    .locals 2

    new-instance v0, Lcom/appbrain/e/s;

    invoke-direct {v0}, Lcom/appbrain/e/s;-><init>()V

    invoke-direct {p0}, Lcom/appbrain/e/s;->c()Lcom/appbrain/e/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/e/s;->a(Lcom/appbrain/e/r;)Lcom/appbrain/e/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/appbrain/c/o;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/e/s;->a()Lcom/appbrain/e/r;

    move-result-object v0

    return-object v0
.end method
