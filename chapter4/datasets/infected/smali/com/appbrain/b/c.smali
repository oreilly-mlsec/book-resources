.class public final Lcom/appbrain/b/c;
.super Lcom/appbrain/c/h;


# static fields
.field private static final a:Lcom/appbrain/b/c;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Lcom/appbrain/c/c;

.field private e:Lcom/appbrain/c/c;

.field private f:J

.field private g:Lcom/appbrain/b/e;

.field private h:Z

.field private i:Ljava/lang/Object;

.field private j:Z

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:I

.field private q:Ljava/lang/Object;

.field private r:B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/appbrain/b/c;

    invoke-direct {v0, v3}, Lcom/appbrain/b/c;-><init>(B)V

    sput-object v0, Lcom/appbrain/b/c;->a:Lcom/appbrain/b/c;

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/b/c;->c:Ljava/lang/Object;

    sget-object v1, Lcom/appbrain/c/c;->a:Lcom/appbrain/c/c;

    iput-object v1, v0, Lcom/appbrain/b/c;->d:Lcom/appbrain/c/c;

    sget-object v1, Lcom/appbrain/c/c;->a:Lcom/appbrain/c/c;

    iput-object v1, v0, Lcom/appbrain/b/c;->e:Lcom/appbrain/c/c;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/appbrain/b/c;->f:J

    sget-object v1, Lcom/appbrain/b/e;->a:Lcom/appbrain/b/e;

    iput-object v1, v0, Lcom/appbrain/b/c;->g:Lcom/appbrain/b/e;

    iput-boolean v3, v0, Lcom/appbrain/b/c;->h:Z

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/b/c;->i:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/appbrain/b/c;->j:Z

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/b/c;->k:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/b/c;->l:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/b/c;->m:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/b/c;->n:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/b/c;->o:Ljava/lang/Object;

    iput v3, v0, Lcom/appbrain/b/c;->p:I

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/b/c;->q:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/c/h;-><init>(B)V

    iput-byte v1, p0, Lcom/appbrain/b/c;->r:B

    iput v1, p0, Lcom/appbrain/b/c;->s:I

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/appbrain/c/h;-><init>()V

    iput-byte v0, p0, Lcom/appbrain/b/c;->r:B

    iput v0, p0, Lcom/appbrain/b/c;->s:I

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/b/c;-><init>()V

    return-void
.end method

.method public static H()Lcom/appbrain/b/d;
    .locals 1

    invoke-static {}, Lcom/appbrain/b/d;->h()Lcom/appbrain/b/d;

    move-result-object v0

    return-object v0
.end method

.method private L()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/c;->c:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method private M()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/c;->i:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method private N()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/c;->k:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method private O()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->l:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/c;->l:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method private P()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/c;->m:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method private Q()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->n:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/c;->n:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method private R()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->o:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/c;->o:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method private S()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->q:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/b/c;->q:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/appbrain/b/c;I)I
    .locals 0

    iput p1, p0, Lcom/appbrain/b/c;->p:I

    return p1
.end method

.method static synthetic a(Lcom/appbrain/b/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/appbrain/b/c;->f:J

    return-wide p1
.end method

.method public static a()Lcom/appbrain/b/c;
    .locals 1

    sget-object v0, Lcom/appbrain/b/c;->a:Lcom/appbrain/b/c;

    return-object v0
.end method

.method public static a([B)Lcom/appbrain/b/c;
    .locals 1

    invoke-static {}, Lcom/appbrain/b/d;->h()Lcom/appbrain/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/b/d;->a([B)Lcom/appbrain/c/b;

    move-result-object v0

    check-cast v0, Lcom/appbrain/b/d;

    invoke-static {v0}, Lcom/appbrain/b/d;->a(Lcom/appbrain/b/d;)Lcom/appbrain/b/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/appbrain/b/c;Lcom/appbrain/b/e;)Lcom/appbrain/b/e;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->g:Lcom/appbrain/b/e;

    return-object p1
.end method

.method static synthetic a(Lcom/appbrain/b/c;Lcom/appbrain/c/c;)Lcom/appbrain/c/c;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->d:Lcom/appbrain/c/c;

    return-object p1
.end method

.method static synthetic a(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/appbrain/b/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/b/c;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/appbrain/b/c;I)I
    .locals 0

    iput p1, p0, Lcom/appbrain/b/c;->b:I

    return p1
.end method

.method static synthetic b(Lcom/appbrain/b/c;Lcom/appbrain/c/c;)Lcom/appbrain/c/c;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->e:Lcom/appbrain/c/c;

    return-object p1
.end method

.method static synthetic b(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/appbrain/b/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/b/c;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->n:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->o:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic h(Lcom/appbrain/b/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/b/c;->q:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->o:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    invoke-virtual {v0}, Lcom/appbrain/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/appbrain/c/j;->a(Lcom/appbrain/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/appbrain/b/c;->o:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final B()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lcom/appbrain/b/c;->p:I

    return v0
.end method

.method public final D()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final E()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->q:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    invoke-virtual {v0}, Lcom/appbrain/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/appbrain/c/j;->a(Lcom/appbrain/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/appbrain/b/c;->q:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final F()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/appbrain/b/c;->r:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/appbrain/b/c;->r:B

    goto :goto_0
.end method

.method public final G()I
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p0, Lcom/appbrain/b/c;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/appbrain/b/c;->N()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/appbrain/b/c;->O()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/appbrain/b/c;->P()Lcom/appbrain/c/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lcom/appbrain/b/c;->Q()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/appbrain/b/c;->R()Lcom/appbrain/c/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, Lcom/appbrain/b/c;->p:I

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/appbrain/b/c;->S()Lcom/appbrain/c/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_8

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/appbrain/b/c;->L()Lcom/appbrain/c/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/appbrain/b/c;->d:Lcom/appbrain/c/c;

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/appbrain/b/c;->f:J

    invoke-static {v1, v2, v3}, Lcom/appbrain/c/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_b

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/appbrain/b/c;->g:Lcom/appbrain/b/e;

    invoke-virtual {v2}, Lcom/appbrain/b/e;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/appbrain/b/c;->h:Z

    invoke-static {v1}, Lcom/appbrain/c/e;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_d

    const/16 v1, 0xe

    invoke-direct {p0}, Lcom/appbrain/b/c;->M()Lcom/appbrain/c/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_e

    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/appbrain/b/c;->j:Z

    invoke-static {v1}, Lcom/appbrain/c/e;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_f

    iget-object v1, p0, Lcom/appbrain/b/c;->e:Lcom/appbrain/c/c;

    invoke-static {v6, v1}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iput v0, p0, Lcom/appbrain/b/c;->s:I

    goto/16 :goto_0
.end method

.method public final I()Lcom/appbrain/b/d;
    .locals 1

    invoke-static {}, Lcom/appbrain/b/d;->h()Lcom/appbrain/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/b/d;->a(Lcom/appbrain/b/c;)Lcom/appbrain/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/appbrain/c/p;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/b/c;->I()Lcom/appbrain/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/c/e;)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appbrain/b/c;->G()I

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/b/c;->N()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/appbrain/b/c;->O()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_1
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/appbrain/b/c;->P()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_2
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/appbrain/b/c;->Q()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_3
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/appbrain/b/c;->R()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_4
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/appbrain/b/c;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(II)V

    :cond_5
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/appbrain/b/c;->S()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_6
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_7

    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/appbrain/b/c;->L()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_7
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_8

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/appbrain/b/c;->d:Lcom/appbrain/c/c;

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_8
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/appbrain/b/c;->f:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/appbrain/c/e;->a(IJ)V

    :cond_9
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_a

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/appbrain/b/c;->g:Lcom/appbrain/b/e;

    invoke-virtual {v1}, Lcom/appbrain/b/e;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->b(II)V

    :cond_a
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_b

    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/appbrain/b/c;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(IZ)V

    :cond_b
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_c

    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/appbrain/b/c;->M()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_c
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_d

    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/appbrain/b/c;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(IZ)V

    :cond_d
    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_e

    iget-object v0, p0, Lcom/appbrain/b/c;->e:Lcom/appbrain/c/c;

    invoke-virtual {p1, v5, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_e
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    invoke-virtual {v0}, Lcom/appbrain/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/appbrain/c/j;->a(Lcom/appbrain/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/appbrain/b/c;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/appbrain/c/c;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/b/c;->d:Lcom/appbrain/c/c;

    return-object v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/appbrain/c/c;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/b/c;->e:Lcom/appbrain/c/c;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/b/c;->f:J

    return-wide v0
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/appbrain/b/e;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/b/c;->g:Lcom/appbrain/b/e;

    return-object v0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/b/c;->h:Z

    return v0
.end method

.method public final n()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    invoke-virtual {v0}, Lcom/appbrain/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/appbrain/c/j;->a(Lcom/appbrain/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/appbrain/b/c;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/b/c;->j:Z

    return v0
.end method

.method public final r()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    invoke-virtual {v0}, Lcom/appbrain/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/appbrain/c/j;->a(Lcom/appbrain/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/appbrain/b/c;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final t()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->l:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    invoke-virtual {v0}, Lcom/appbrain/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/appbrain/c/j;->a(Lcom/appbrain/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/appbrain/b/c;->l:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final v()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    invoke-virtual {v0}, Lcom/appbrain/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/appbrain/c/j;->a(Lcom/appbrain/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/appbrain/b/c;->m:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final x()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/b/c;->n:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    invoke-virtual {v0}, Lcom/appbrain/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/appbrain/c/j;->a(Lcom/appbrain/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/appbrain/b/c;->n:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final z()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/b/c;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
