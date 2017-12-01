.class public final Lcom/appbrain/e/e;
.super Lcom/appbrain/c/i;


# instance fields
.field private a:I

.field private b:Lcom/appbrain/e/h;

.field private c:I

.field private d:I

.field private e:Lcom/appbrain/e/f;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/c/i;-><init>()V

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/e;->b:Lcom/appbrain/e/h;

    sget-object v0, Lcom/appbrain/e/f;->a:Lcom/appbrain/e/f;

    iput-object v0, p0, Lcom/appbrain/e/e;->e:Lcom/appbrain/e/f;

    return-void
.end method

.method static synthetic b()Lcom/appbrain/e/e;
    .locals 1

    new-instance v0, Lcom/appbrain/e/e;

    invoke-direct {v0}, Lcom/appbrain/e/e;-><init>()V

    return-object v0
.end method

.method private c()Lcom/appbrain/e/d;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/appbrain/e/d;

    invoke-direct {v2, v1}, Lcom/appbrain/e/d;-><init>(C)V

    iget v3, p0, Lcom/appbrain/e/e;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/appbrain/e/e;->b:Lcom/appbrain/e/h;

    invoke-static {v2, v1}, Lcom/appbrain/e/d;->a(Lcom/appbrain/e/d;Lcom/appbrain/e/h;)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/appbrain/e/e;->c:I

    invoke-static {v2, v1}, Lcom/appbrain/e/d;->a(Lcom/appbrain/e/d;I)V

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/appbrain/e/e;->d:I

    invoke-static {v2, v1}, Lcom/appbrain/e/d;->b(Lcom/appbrain/e/d;I)V

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/appbrain/e/e;->e:Lcom/appbrain/e/f;

    invoke-static {v2, v1}, Lcom/appbrain/e/d;->a(Lcom/appbrain/e/d;Lcom/appbrain/e/f;)V

    invoke-static {v2, v0}, Lcom/appbrain/e/d;->c(Lcom/appbrain/e/d;I)V

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/e;
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

    iget v0, p0, Lcom/appbrain/e/e;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/e;->b:Lcom/appbrain/e/h;

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
    iput-object v0, p0, Lcom/appbrain/e/e;->b:Lcom/appbrain/e/h;

    iget v0, p0, Lcom/appbrain/e/e;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/e;->a:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/appbrain/e/e;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/e;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/e;->c:I

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/appbrain/e/e;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/e/e;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/e/e;->d:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/appbrain/c/d;->f()I

    move-result v0

    invoke-static {v0}, Lcom/appbrain/e/f;->a(I)Lcom/appbrain/e/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/appbrain/e/e;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/appbrain/e/e;->a:I

    iput-object v0, p0, Lcom/appbrain/e/e;->e:Lcom/appbrain/e/f;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
        0x28 -> :sswitch_3
        0x30 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/e;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/e;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/appbrain/e/d;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/e/e;->c()Lcom/appbrain/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/d;->j()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(I)Lcom/appbrain/e/e;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/e;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/e;->a:I

    iput p1, p0, Lcom/appbrain/e/e;->c:I

    return-object p0
.end method

.method public final a(Lcom/appbrain/e/d;)Lcom/appbrain/e/e;
    .locals 3

    invoke-static {}, Lcom/appbrain/e/d;->a()Lcom/appbrain/e/d;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/appbrain/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appbrain/e/d;->c()Lcom/appbrain/e/h;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/e/e;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/appbrain/e/e;->b:Lcom/appbrain/e/h;

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/appbrain/e/e;->b:Lcom/appbrain/e/h;

    invoke-static {v1}, Lcom/appbrain/e/h;->a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/e/i;->a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/i;->b()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/e;->b:Lcom/appbrain/e/h;

    :goto_1
    iget v0, p0, Lcom/appbrain/e/e;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/e;->a:I

    :cond_2
    invoke-virtual {p1}, Lcom/appbrain/e/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/appbrain/e/d;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/e;->a(I)Lcom/appbrain/e/e;

    :cond_3
    invoke-virtual {p1}, Lcom/appbrain/e/d;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/appbrain/e/d;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/e;->b(I)Lcom/appbrain/e/e;

    :cond_4
    invoke-virtual {p1}, Lcom/appbrain/e/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/e/d;->i()Lcom/appbrain/e/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/e;->a(Lcom/appbrain/e/f;)Lcom/appbrain/e/e;

    goto :goto_0

    :cond_5
    iput-object v0, p0, Lcom/appbrain/e/e;->b:Lcom/appbrain/e/h;

    goto :goto_1
.end method

.method public final a(Lcom/appbrain/e/f;)Lcom/appbrain/e/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/e;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/e/e;->a:I

    iput-object p1, p0, Lcom/appbrain/e/e;->e:Lcom/appbrain/e/f;

    return-object p0
.end method

.method public final a(Lcom/appbrain/e/i;)Lcom/appbrain/e/e;
    .locals 1

    invoke-virtual {p1}, Lcom/appbrain/e/i;->a()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/e;->b:Lcom/appbrain/e/h;

    iget v0, p0, Lcom/appbrain/e/e;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/e;->a:I

    return-object p0
.end method

.method public final synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/e;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/appbrain/e/e;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/e;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/e/e;->a:I

    iput p1, p0, Lcom/appbrain/e/e;->d:I

    return-object p0
.end method

.method public final synthetic e()Lcom/appbrain/c/i;
    .locals 2

    new-instance v0, Lcom/appbrain/e/e;

    invoke-direct {v0}, Lcom/appbrain/e/e;-><init>()V

    invoke-direct {p0}, Lcom/appbrain/e/e;->c()Lcom/appbrain/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/e/e;->a(Lcom/appbrain/e/d;)Lcom/appbrain/e/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/appbrain/c/o;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/e/e;->a()Lcom/appbrain/e/d;

    move-result-object v0

    return-object v0
.end method
