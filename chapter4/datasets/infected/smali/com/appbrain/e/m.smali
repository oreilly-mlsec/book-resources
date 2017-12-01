.class public final Lcom/appbrain/e/m;
.super Lcom/appbrain/c/i;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/c/i;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/m;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/m;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic b()Lcom/appbrain/e/m;
    .locals 1

    new-instance v0, Lcom/appbrain/e/m;

    invoke-direct {v0}, Lcom/appbrain/e/m;-><init>()V

    return-object v0
.end method

.method private c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/m;
    .locals 2

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
    invoke-static {}, Lcom/appbrain/e/n;->i()Lcom/appbrain/e/o;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/appbrain/c/d;->a(Lcom/appbrain/c/p;Lcom/appbrain/c/g;)V

    invoke-virtual {v0}, Lcom/appbrain/e/o;->a()Lcom/appbrain/e/n;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/appbrain/e/m;->c()V

    iget-object v1, p0, Lcom/appbrain/e/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/appbrain/e/n;->i()Lcom/appbrain/e/o;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/appbrain/c/d;->a(Lcom/appbrain/c/p;Lcom/appbrain/c/g;)V

    invoke-virtual {v0}, Lcom/appbrain/e/o;->a()Lcom/appbrain/e/n;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/appbrain/e/m;->d()V

    iget-object v1, p0, Lcom/appbrain/e/m;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/appbrain/e/m;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/e/m;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appbrain/e/m;->d:Z

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/appbrain/e/m;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/e/m;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appbrain/e/m;->e:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private c()V
    .locals 2

    iget v0, p0, Lcom/appbrain/e/m;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appbrain/e/m;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/appbrain/e/m;->b:Ljava/util/List;

    iget v0, p0, Lcom/appbrain/e/m;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/m;->a:I

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lcom/appbrain/e/m;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appbrain/e/m;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/appbrain/e/m;->c:Ljava/util/List;

    iget v0, p0, Lcom/appbrain/e/m;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/m;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/m;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/m;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/appbrain/e/l;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/appbrain/e/l;

    invoke-direct {v2, v1}, Lcom/appbrain/e/l;-><init>(C)V

    iget v3, p0, Lcom/appbrain/e/m;->a:I

    iget v4, p0, Lcom/appbrain/e/m;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/appbrain/e/m;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/appbrain/e/m;->b:Ljava/util/List;

    iget v4, p0, Lcom/appbrain/e/m;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/appbrain/e/m;->a:I

    :cond_0
    iget-object v4, p0, Lcom/appbrain/e/m;->b:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/appbrain/e/l;->a(Lcom/appbrain/e/l;Ljava/util/List;)V

    iget v4, p0, Lcom/appbrain/e/m;->a:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/appbrain/e/m;->c:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/appbrain/e/m;->c:Ljava/util/List;

    iget v4, p0, Lcom/appbrain/e/m;->a:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/appbrain/e/m;->a:I

    :cond_1
    iget-object v4, p0, Lcom/appbrain/e/m;->c:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/appbrain/e/l;->b(Lcom/appbrain/e/l;Ljava/util/List;)V

    and-int/lit8 v4, v3, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    :goto_0
    iget-boolean v1, p0, Lcom/appbrain/e/m;->d:Z

    invoke-static {v2, v1}, Lcom/appbrain/e/l;->a(Lcom/appbrain/e/l;Z)V

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-boolean v1, p0, Lcom/appbrain/e/m;->e:Z

    invoke-static {v2, v1}, Lcom/appbrain/e/l;->b(Lcom/appbrain/e/l;Z)V

    invoke-static {v2, v0}, Lcom/appbrain/e/l;->a(Lcom/appbrain/e/l;I)V

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/appbrain/e/l;)Lcom/appbrain/e/m;
    .locals 2

    invoke-static {}, Lcom/appbrain/e/l;->a()Lcom/appbrain/e/l;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/appbrain/e/l;->b(Lcom/appbrain/e/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appbrain/e/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/appbrain/e/l;->b(Lcom/appbrain/e/l;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/m;->b:Ljava/util/List;

    iget v0, p0, Lcom/appbrain/e/m;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appbrain/e/m;->a:I

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/appbrain/e/l;->c(Lcom/appbrain/e/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appbrain/e/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/appbrain/e/l;->c(Lcom/appbrain/e/l;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/m;->c:Ljava/util/List;

    iget v0, p0, Lcom/appbrain/e/m;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/appbrain/e/m;->a:I

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/appbrain/e/l;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/appbrain/e/l;->g()Z

    move-result v0

    iget v1, p0, Lcom/appbrain/e/m;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/appbrain/e/m;->a:I

    iput-boolean v0, p0, Lcom/appbrain/e/m;->d:Z

    :cond_4
    invoke-virtual {p1}, Lcom/appbrain/e/l;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/e/l;->i()Z

    move-result v0

    iget v1, p0, Lcom/appbrain/e/m;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/appbrain/e/m;->a:I

    iput-boolean v0, p0, Lcom/appbrain/e/m;->e:Z

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/appbrain/e/m;->c()V

    iget-object v0, p0, Lcom/appbrain/e/m;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/appbrain/e/l;->b(Lcom/appbrain/e/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/appbrain/e/m;->d()V

    iget-object v0, p0, Lcom/appbrain/e/m;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/appbrain/e/l;->c(Lcom/appbrain/e/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public final synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/m;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/appbrain/c/i;
    .locals 2

    new-instance v0, Lcom/appbrain/e/m;

    invoke-direct {v0}, Lcom/appbrain/e/m;-><init>()V

    invoke-virtual {p0}, Lcom/appbrain/e/m;->a()Lcom/appbrain/e/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/e/m;->a(Lcom/appbrain/e/l;)Lcom/appbrain/e/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/appbrain/c/o;
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/e/m;->a()Lcom/appbrain/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/l;->j()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method
