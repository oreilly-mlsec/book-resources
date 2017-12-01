.class public final Lcom/appbrain/e/o;
.super Lcom/appbrain/c/i;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/c/i;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/o;->b:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/e/o;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/appbrain/c/d;)Lcom/appbrain/e/o;
    .locals 1

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
    iget v0, p0, Lcom/appbrain/e/o;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/e/o;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/o;->b:Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/appbrain/e/o;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/e/o;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->e()Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/o;->c:Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/appbrain/e/o;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/e/o;->a:I

    invoke-virtual {p1}, Lcom/appbrain/c/d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appbrain/e/o;->d:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic b()Lcom/appbrain/e/o;
    .locals 1

    new-instance v0, Lcom/appbrain/e/o;

    invoke-direct {v0}, Lcom/appbrain/e/o;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appbrain/e/o;->a(Lcom/appbrain/c/d;)Lcom/appbrain/e/o;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/appbrain/e/n;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/appbrain/e/n;

    invoke-direct {v2, v1}, Lcom/appbrain/e/n;-><init>(C)V

    iget v3, p0, Lcom/appbrain/e/o;->a:I

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/appbrain/e/o;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/e/n;->a(Lcom/appbrain/e/n;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/appbrain/e/o;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/appbrain/e/n;->b(Lcom/appbrain/e/n;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-boolean v1, p0, Lcom/appbrain/e/o;->d:Z

    invoke-static {v2, v1}, Lcom/appbrain/e/n;->a(Lcom/appbrain/e/n;Z)V

    invoke-static {v2, v0}, Lcom/appbrain/e/n;->a(Lcom/appbrain/e/n;I)V

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/appbrain/e/n;)Lcom/appbrain/e/o;
    .locals 2

    invoke-static {}, Lcom/appbrain/e/n;->a()Lcom/appbrain/e/n;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/appbrain/e/n;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/appbrain/e/n;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iget v1, p0, Lcom/appbrain/e/o;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appbrain/e/o;->a:I

    iput-object v0, p0, Lcom/appbrain/e/o;->b:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/appbrain/e/n;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/appbrain/e/n;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iget v1, p0, Lcom/appbrain/e/o;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/appbrain/e/o;->a:I

    iput-object v0, p0, Lcom/appbrain/e/o;->c:Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1}, Lcom/appbrain/e/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/e/n;->g()Z

    move-result v0

    iget v1, p0, Lcom/appbrain/e/o;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/appbrain/e/o;->a:I

    iput-boolean v0, p0, Lcom/appbrain/e/o;->d:Z

    goto :goto_0
.end method

.method public final synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-direct {p0, p1}, Lcom/appbrain/e/o;->a(Lcom/appbrain/c/d;)Lcom/appbrain/e/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/appbrain/c/i;
    .locals 2

    new-instance v0, Lcom/appbrain/e/o;

    invoke-direct {v0}, Lcom/appbrain/e/o;-><init>()V

    invoke-virtual {p0}, Lcom/appbrain/e/o;->a()Lcom/appbrain/e/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/e/o;->a(Lcom/appbrain/e/n;)Lcom/appbrain/e/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/appbrain/c/o;
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/e/o;->a()Lcom/appbrain/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/n;->h()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/appbrain/c/q;

    invoke-direct {v0}, Lcom/appbrain/c/q;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method
