.class public final Lcom/appbrain/e/p;
.super Lcom/appbrain/c/h;


# static fields
.field private static final a:Lcom/appbrain/e/p;


# instance fields
.field private b:I

.field private c:Lcom/appbrain/e/h;

.field private d:Ljava/lang/Object;

.field private e:Lcom/appbrain/e/b;

.field private f:J

.field private g:J

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/appbrain/e/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appbrain/e/p;-><init>(B)V

    sput-object v0, Lcom/appbrain/e/p;->a:Lcom/appbrain/e/p;

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v1

    iput-object v1, v0, Lcom/appbrain/e/p;->c:Lcom/appbrain/e/h;

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/e/p;->d:Ljava/lang/Object;

    sget-object v1, Lcom/appbrain/e/b;->a:Lcom/appbrain/e/b;

    iput-object v1, v0, Lcom/appbrain/e/p;->e:Lcom/appbrain/e/b;

    iput-wide v2, v0, Lcom/appbrain/e/p;->f:J

    iput-wide v2, v0, Lcom/appbrain/e/p;->g:J

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/e/p;->h:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/e/p;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/c/h;-><init>(B)V

    iput-byte v1, p0, Lcom/appbrain/e/p;->j:B

    iput v1, p0, Lcom/appbrain/e/p;->k:I

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/appbrain/c/h;-><init>()V

    iput-byte v0, p0, Lcom/appbrain/e/p;->j:B

    iput v0, p0, Lcom/appbrain/e/p;->k:I

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/e/p;-><init>()V

    return-void
.end method

.method public static a()Lcom/appbrain/e/p;
    .locals 1

    sget-object v0, Lcom/appbrain/e/p;->a:Lcom/appbrain/e/p;

    return-object v0
.end method

.method public static a(Lcom/appbrain/e/p;)Lcom/appbrain/e/q;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/q;->c()Lcom/appbrain/e/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/q;->a(Lcom/appbrain/e/p;)Lcom/appbrain/e/q;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/appbrain/e/p;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/p;->b:I

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/p;J)V
    .locals 0

    iput-wide p1, p0, Lcom/appbrain/e/p;->f:J

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/p;Lcom/appbrain/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/p;->e:Lcom/appbrain/e/b;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/p;Lcom/appbrain/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/p;->c:Lcom/appbrain/e/h;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/p;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/p;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/appbrain/e/p;J)V
    .locals 0

    iput-wide p1, p0, Lcom/appbrain/e/p;->g:J

    return-void
.end method

.method static synthetic b(Lcom/appbrain/e/p;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/p;->h:Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lcom/appbrain/e/p;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/p;->i:Ljava/lang/Object;

    return-void
.end method

.method public static q()Lcom/appbrain/e/q;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/q;->c()Lcom/appbrain/e/q;

    move-result-object v0

    return-object v0
.end method

.method private r()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/e/p;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/p;->d:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method private s()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/e/p;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/p;->h:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method private t()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/e/p;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/p;->i:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method


# virtual methods
.method public final G()I
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/appbrain/e/p;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/p;->c:Lcom/appbrain/e/h;

    invoke-static {v2, v0}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/o;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/appbrain/e/p;->r()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/appbrain/e/p;->e:Lcom/appbrain/e/b;

    invoke-virtual {v1}, Lcom/appbrain/e/b;->a()I

    move-result v1

    invoke-static {v4, v1}, Lcom/appbrain/c/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/appbrain/e/p;->f:J

    invoke-static {v1, v2, v3}, Lcom/appbrain/c/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/appbrain/e/p;->g:J

    invoke-static {v1, v2, v3}, Lcom/appbrain/c/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/appbrain/e/p;->s()Lcom/appbrain/c/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Lcom/appbrain/e/p;->t()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iput v0, p0, Lcom/appbrain/e/p;->k:I

    goto :goto_0
.end method

.method public final synthetic J()Lcom/appbrain/c/p;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/q;->c()Lcom/appbrain/e/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/q;->a(Lcom/appbrain/e/p;)Lcom/appbrain/e/q;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/c/e;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/appbrain/e/p;->G()I

    iget v0, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/e/p;->c:Lcom/appbrain/e/h;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/o;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/appbrain/e/p;->r()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_1
    iget v0, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/appbrain/e/p;->e:Lcom/appbrain/e/b;

    invoke-virtual {v0}, Lcom/appbrain/e/b;->a()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/appbrain/c/e;->b(II)V

    :cond_2
    iget v0, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/appbrain/e/p;->f:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/appbrain/c/e;->a(IJ)V

    :cond_3
    iget v0, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/appbrain/e/p;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/appbrain/c/e;->a(IJ)V

    :cond_4
    iget v0, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/appbrain/e/p;->s()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_5
    iget v0, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/appbrain/e/p;->t()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_6
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/appbrain/e/p;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/appbrain/e/h;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/p;->c:Lcom/appbrain/e/h;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/p;->b:I

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

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/e/p;->d:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/appbrain/e/p;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/p;->b:I

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

.method public final g()Lcom/appbrain/e/b;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/p;->e:Lcom/appbrain/e/b;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/p;->b:I

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

    iget-wide v0, p0, Lcom/appbrain/e/p;->f:J

    return-wide v0
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/p;->b:I

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

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/e/p;->g:J

    return-wide v0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/p;->b:I

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

.method public final m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/e/p;->h:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/appbrain/e/p;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/p;->b:I

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

    iget-object v0, p0, Lcom/appbrain/e/p;->i:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/appbrain/e/p;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final p()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/appbrain/e/p;->j:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/appbrain/e/p;->j:B

    goto :goto_0
.end method
