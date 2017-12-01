.class public final Lcom/appbrain/b/d;
.super Lcom/appbrain/c/i;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Lcom/appbrain/c/c;

.field private d:Lcom/appbrain/c/c;

.field private e:J

.field private f:Lcom/appbrain/b/e;

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:Z

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:I

.field private p:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/c/i;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/b/d;->b:Ljava/lang/Object;

    sget-object v0, Lcom/appbrain/c/c;->a:Lcom/appbrain/c/c;

    iput-object v0, p0, Lcom/appbrain/b/d;->c:Lcom/appbrain/c/c;

    sget-object v0, Lcom/appbrain/c/c;->a:Lcom/appbrain/c/c;

    iput-object v0, p0, Lcom/appbrain/b/d;->d:Lcom/appbrain/c/c;

    sget-object v0, Lcom/appbrain/b/e;->a:Lcom/appbrain/b/e;

    iput-object v0, p0, Lcom/appbrain/b/d;->f:Lcom/appbrain/b/e;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/b/d;->h:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/b/d;->j:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/b/d;->k:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/b/d;->l:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/b/d;->m:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/b/d;->n:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/b/d;->p:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/b/d;)Lcom/appbrain/b/c;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/b/d;->i()Lcom/appbrain/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/b/c;->F()Z

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

.method private a(Lcom/appbrain/c/d;)Lcom/appbrain/b/d;
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
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/d;->j:Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/d;->k:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/d;->l:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/d;->m:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/d;->n:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->c()I

    move-result v0

    iput v0, p0, Lcom/appbrain/b/d;->o:I

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/d;->p:Ljava/lang/Object;

    goto :goto_0

    :sswitch_8
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/d;->b:Ljava/lang/Object;

    goto :goto_0

    :sswitch_9
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/d;->c:Lcom/appbrain/c/c;

    goto/16 :goto_0

    :sswitch_a
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/b/d;->e:J

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/appbrain/c/d;->f()I

    move-result v0

    invoke-static {v0}, Lcom/appbrain/b/e;->a(I)Lcom/appbrain/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-object v0, p0, Lcom/appbrain/b/d;->f:Lcom/appbrain/b/e;

    goto/16 :goto_0

    :sswitch_c
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appbrain/b/d;->g:Z

    goto/16 :goto_0

    :sswitch_d
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/d;->h:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_e
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appbrain/b/d;->i:Z

    goto/16 :goto_0

    :sswitch_f
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/d;->d:Lcom/appbrain/c/c;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x58 -> :sswitch_a
        0x60 -> :sswitch_b
        0x68 -> :sswitch_c
        0x72 -> :sswitch_d
        0x78 -> :sswitch_e
        0x82 -> :sswitch_f
    .end sparse-switch
.end method

.method static synthetic h()Lcom/appbrain/b/d;
    .locals 1

    new-instance v0, Lcom/appbrain/b/d;

    invoke-direct {v0}, Lcom/appbrain/b/d;-><init>()V

    return-object v0
.end method

.method private i()Lcom/appbrain/b/c;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/appbrain/b/c;

    invoke-direct {v2, v1}, Lcom/appbrain/b/c;-><init>(C)V

    iget v3, p0, Lcom/appbrain/b/d;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_e

    :goto_0
    iget-object v1, p0, Lcom/appbrain/b/d;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->a(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/appbrain/b/d;->c:Lcom/appbrain/c/c;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->a(Lcom/appbrain/b/c;Lcom/appbrain/c/c;)Lcom/appbrain/c/c;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/appbrain/b/d;->d:Lcom/appbrain/c/c;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->b(Lcom/appbrain/b/c;Lcom/appbrain/c/c;)Lcom/appbrain/c/c;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/appbrain/b/d;->e:J

    invoke-static {v2, v4, v5}, Lcom/appbrain/b/c;->a(Lcom/appbrain/b/c;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/appbrain/b/d;->f:Lcom/appbrain/b/e;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->a(Lcom/appbrain/b/c;Lcom/appbrain/b/e;)Lcom/appbrain/b/e;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-boolean v1, p0, Lcom/appbrain/b/d;->g:Z

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->a(Lcom/appbrain/b/c;Z)Z

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/appbrain/b/d;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->b(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-boolean v1, p0, Lcom/appbrain/b/d;->i:Z

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->b(Lcom/appbrain/b/c;Z)Z

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v1, p0, Lcom/appbrain/b/d;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->c(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-object v1, p0, Lcom/appbrain/b/d;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->d(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget-object v1, p0, Lcom/appbrain/b/d;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->e(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget-object v1, p0, Lcom/appbrain/b/d;->m:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->f(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget-object v1, p0, Lcom/appbrain/b/d;->n:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->g(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget v1, p0, Lcom/appbrain/b/d;->o:I

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->a(Lcom/appbrain/b/c;I)I

    and-int/lit16 v1, v3, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_d

    or-int/lit16 v0, v0, 0x4000

    :cond_d
    iget-object v1, p0, Lcom/appbrain/b/d;->p:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/b/c;->h(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/appbrain/b/c;->b(Lcom/appbrain/b/c;I)I

    return-object v2

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lcom/appbrain/b/d;
    .locals 2

    new-instance v0, Lcom/appbrain/b/d;

    invoke-direct {v0}, Lcom/appbrain/b/d;-><init>()V

    invoke-direct {p0}, Lcom/appbrain/b/d;->i()Lcom/appbrain/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/b/d;->a(Lcom/appbrain/b/c;)Lcom/appbrain/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/appbrain/b/d;
    .locals 1

    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    iput-wide p1, p0, Lcom/appbrain/b/d;->e:J

    return-object p0
.end method

.method public final a(Lcom/appbrain/b/c;)Lcom/appbrain/b/d;
    .locals 2

    invoke-static {}, Lcom/appbrain/b/c;->a()Lcom/appbrain/b/c;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/appbrain/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/appbrain/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/b/d;->a(Ljava/lang/String;)Lcom/appbrain/b/d;

    :cond_2
    invoke-virtual {p1}, Lcom/appbrain/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/appbrain/b/c;->e()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/b/d;->a(Lcom/appbrain/c/c;)Lcom/appbrain/b/d;

    :cond_3
    invoke-virtual {p1}, Lcom/appbrain/b/c;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/appbrain/b/c;->g()Lcom/appbrain/c/c;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-object v0, p0, Lcom/appbrain/b/d;->d:Lcom/appbrain/c/c;

    :cond_5
    invoke-virtual {p1}, Lcom/appbrain/b/c;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/appbrain/b/c;->i()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appbrain/b/d;->a(J)Lcom/appbrain/b/d;

    :cond_6
    invoke-virtual {p1}, Lcom/appbrain/b/c;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/appbrain/b/c;->k()Lcom/appbrain/b/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/b/d;->a(Lcom/appbrain/b/e;)Lcom/appbrain/b/d;

    :cond_7
    invoke-virtual {p1}, Lcom/appbrain/b/c;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/appbrain/b/c;->m()Z

    move-result v0

    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-boolean v0, p0, Lcom/appbrain/b/d;->g:Z

    :cond_8
    invoke-virtual {p1}, Lcom/appbrain/b/c;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/appbrain/b/c;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_9
    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-object v0, p0, Lcom/appbrain/b/d;->h:Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1}, Lcom/appbrain/b/c;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/appbrain/b/c;->q()Z

    move-result v0

    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-boolean v0, p0, Lcom/appbrain/b/d;->i:Z

    :cond_b
    invoke-virtual {p1}, Lcom/appbrain/b/c;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/appbrain/b/c;->s()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_c
    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-object v0, p0, Lcom/appbrain/b/d;->j:Ljava/lang/Object;

    :cond_d
    invoke-virtual {p1}, Lcom/appbrain/b/c;->t()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/appbrain/b/c;->u()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_e
    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-object v0, p0, Lcom/appbrain/b/d;->k:Ljava/lang/Object;

    :cond_f
    invoke-virtual {p1}, Lcom/appbrain/b/c;->v()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/appbrain/b/c;->w()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_10
    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-object v0, p0, Lcom/appbrain/b/d;->l:Ljava/lang/Object;

    :cond_11
    invoke-virtual {p1}, Lcom/appbrain/b/c;->x()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/appbrain/b/c;->y()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_12
    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-object v0, p0, Lcom/appbrain/b/d;->m:Ljava/lang/Object;

    :cond_13
    invoke-virtual {p1}, Lcom/appbrain/b/c;->z()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/appbrain/b/c;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_14
    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-object v0, p0, Lcom/appbrain/b/d;->n:Ljava/lang/Object;

    :cond_15
    invoke-virtual {p1}, Lcom/appbrain/b/c;->B()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/appbrain/b/c;->C()I

    move-result v0

    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput v0, p0, Lcom/appbrain/b/d;->o:I

    :cond_16
    invoke-virtual {p1}, Lcom/appbrain/b/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/b/c;->E()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_17
    iget v1, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/appbrain/b/d;->a:I

    iput-object v0, p0, Lcom/appbrain/b/d;->p:Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public final a(Lcom/appbrain/b/e;)Lcom/appbrain/b/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    iput-object p1, p0, Lcom/appbrain/b/d;->f:Lcom/appbrain/b/e;

    return-object p0
.end method

.method public final a(Lcom/appbrain/c/c;)Lcom/appbrain/b/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    iput-object p1, p0, Lcom/appbrain/b/d;->c:Lcom/appbrain/c/c;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/appbrain/b/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/appbrain/b/d;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    iput-object p1, p0, Lcom/appbrain/b/d;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appbrain/b/d;->a(Lcom/appbrain/c/d;)Lcom/appbrain/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/appbrain/b/c;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/b/d;->i()Lcom/appbrain/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/b/c;->F()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appbrain/b/d;->a(Lcom/appbrain/c/d;)Lcom/appbrain/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/appbrain/b/d;
    .locals 2

    iget v0, p0, Lcom/appbrain/b/d;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appbrain/b/d;->e:J

    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/b/d;->a()Lcom/appbrain/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/appbrain/b/d;
    .locals 1

    iget v0, p0, Lcom/appbrain/b/d;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/appbrain/b/d;->a:I

    sget-object v0, Lcom/appbrain/b/e;->a:Lcom/appbrain/b/e;

    iput-object v0, p0, Lcom/appbrain/b/d;->f:Lcom/appbrain/b/e;

    return-object p0
.end method

.method public final synthetic e()Lcom/appbrain/c/i;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/b/d;->a()Lcom/appbrain/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic f()Lcom/appbrain/c/b;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/b/d;->a()Lcom/appbrain/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/appbrain/c/o;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/b/d;->b()Lcom/appbrain/b/c;

    move-result-object v0

    return-object v0
.end method
