.class public final Lcom/appbrain/e/q;
.super Lcom/appbrain/c/i;


# instance fields
.field private a:I

.field private b:Lcom/appbrain/e/h;

.field private c:Ljava/lang/Object;

.field private d:Lcom/appbrain/e/b;

.field private e:J

.field private f:J

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/c/i;-><init>()V

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/q;->b:Lcom/appbrain/e/h;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/q;->c:Ljava/lang/Object;

    sget-object v0, Lcom/appbrain/e/b;->a:Lcom/appbrain/e/b;

    iput-object v0, p0, Lcom/appbrain/e/q;->d:Lcom/appbrain/e/b;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/q;->g:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/q;->h:Ljava/lang/Object;

    return-void
.end method

.method static synthetic c()Lcom/appbrain/e/q;
    .locals 1

    new-instance v0, Lcom/appbrain/e/q;

    invoke-direct {v0}, Lcom/appbrain/e/q;-><init>()V

    return-object v0
.end method

.method private c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/q;
    .locals 4

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

    iget v0, p0, Lcom/appbrain/e/q;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/q;->b:Lcom/appbrain/e/h;

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
    iput-object v0, p0, Lcom/appbrain/e/q;->b:Lcom/appbrain/e/h;

    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/q;->c:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/appbrain/c/d;->f()I

    move-result v0

    invoke-static {v0}, Lcom/appbrain/e/b;->a(I)Lcom/appbrain/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/appbrain/e/q;->a:I

    iput-object v0, p0, Lcom/appbrain/e/q;->d:Lcom/appbrain/e/b;

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appbrain/e/q;->e:J

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appbrain/e/q;->f:J

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/q;->g:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/q;->h:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/q;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/q;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/appbrain/e/p;
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/e/q;->b()Lcom/appbrain/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/p;->p()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final a(J)Lcom/appbrain/e/q;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    iput-wide p1, p0, Lcom/appbrain/e/q;->e:J

    return-object p0
.end method

.method public final a(Lcom/appbrain/e/b;)Lcom/appbrain/e/q;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    iput-object p1, p0, Lcom/appbrain/e/q;->d:Lcom/appbrain/e/b;

    return-object p0
.end method

.method public final a(Lcom/appbrain/e/i;)Lcom/appbrain/e/q;
    .locals 1

    invoke-virtual {p1}, Lcom/appbrain/e/i;->a()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/q;->b:Lcom/appbrain/e/h;

    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    return-object p0
.end method

.method public final a(Lcom/appbrain/e/p;)Lcom/appbrain/e/q;
    .locals 3

    invoke-static {}, Lcom/appbrain/e/p;->a()Lcom/appbrain/e/p;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/appbrain/e/p;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appbrain/e/p;->c()Lcom/appbrain/e/h;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/e/q;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/appbrain/e/q;->b:Lcom/appbrain/e/h;

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v2

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/appbrain/e/q;->b:Lcom/appbrain/e/h;

    invoke-static {v1}, Lcom/appbrain/e/h;->a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/e/i;->a(Lcom/appbrain/e/h;)Lcom/appbrain/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/i;->b()Lcom/appbrain/e/h;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/q;->b:Lcom/appbrain/e/h;

    :goto_1
    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    :cond_2
    invoke-virtual {p1}, Lcom/appbrain/e/p;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/appbrain/e/p;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/q;->a(Ljava/lang/String;)Lcom/appbrain/e/q;

    :cond_3
    invoke-virtual {p1}, Lcom/appbrain/e/p;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/appbrain/e/p;->g()Lcom/appbrain/e/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/q;->a(Lcom/appbrain/e/b;)Lcom/appbrain/e/q;

    :cond_4
    invoke-virtual {p1}, Lcom/appbrain/e/p;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/appbrain/e/p;->i()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appbrain/e/q;->a(J)Lcom/appbrain/e/q;

    :cond_5
    invoke-virtual {p1}, Lcom/appbrain/e/p;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/appbrain/e/p;->k()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appbrain/e/q;->b(J)Lcom/appbrain/e/q;

    :cond_6
    invoke-virtual {p1}, Lcom/appbrain/e/p;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/appbrain/e/p;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/q;->b(Ljava/lang/String;)Lcom/appbrain/e/q;

    :cond_7
    invoke-virtual {p1}, Lcom/appbrain/e/p;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/e/p;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/e/q;->c(Ljava/lang/String;)Lcom/appbrain/e/q;

    goto :goto_0

    :cond_8
    iput-object v0, p0, Lcom/appbrain/e/q;->b:Lcom/appbrain/e/h;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/appbrain/e/q;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    iput-object p1, p0, Lcom/appbrain/e/q;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/appbrain/e/q;->c(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/e/q;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/appbrain/e/p;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/appbrain/e/p;

    invoke-direct {v2, v1}, Lcom/appbrain/e/p;-><init>(C)V

    iget v3, p0, Lcom/appbrain/e/q;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/appbrain/e/q;->b:Lcom/appbrain/e/h;

    invoke-static {v2, v1}, Lcom/appbrain/e/p;->a(Lcom/appbrain/e/p;Lcom/appbrain/e/h;)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/appbrain/e/q;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/e/p;->a(Lcom/appbrain/e/p;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/appbrain/e/q;->d:Lcom/appbrain/e/b;

    invoke-static {v2, v1}, Lcom/appbrain/e/p;->a(Lcom/appbrain/e/p;Lcom/appbrain/e/b;)V

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/appbrain/e/q;->e:J

    invoke-static {v2, v4, v5}, Lcom/appbrain/e/p;->a(Lcom/appbrain/e/p;J)V

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-wide v4, p0, Lcom/appbrain/e/q;->f:J

    invoke-static {v2, v4, v5}, Lcom/appbrain/e/p;->b(Lcom/appbrain/e/p;J)V

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/appbrain/e/q;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/e/p;->b(Lcom/appbrain/e/p;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/appbrain/e/q;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/e/p;->c(Lcom/appbrain/e/p;Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/appbrain/e/p;->a(Lcom/appbrain/e/p;I)V

    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public final b(J)Lcom/appbrain/e/q;
    .locals 1

    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    iput-wide p1, p0, Lcom/appbrain/e/q;->f:J

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/appbrain/e/q;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    iput-object p1, p0, Lcom/appbrain/e/q;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/appbrain/e/q;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/q;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/appbrain/e/q;->a:I

    iput-object p1, p0, Lcom/appbrain/e/q;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic e()Lcom/appbrain/c/i;
    .locals 2

    new-instance v0, Lcom/appbrain/e/q;

    invoke-direct {v0}, Lcom/appbrain/e/q;-><init>()V

    invoke-virtual {p0}, Lcom/appbrain/e/q;->b()Lcom/appbrain/e/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/e/q;->a(Lcom/appbrain/e/p;)Lcom/appbrain/e/q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/appbrain/c/o;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/e/q;->a()Lcom/appbrain/e/p;

    move-result-object v0

    return-object v0
.end method
