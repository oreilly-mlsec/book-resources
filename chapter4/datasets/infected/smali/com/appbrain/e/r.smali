.class public final Lcom/appbrain/e/r;
.super Lcom/appbrain/c/h;


# static fields
.field private static final a:Lcom/appbrain/e/r;


# instance fields
.field private b:I

.field private c:Lcom/appbrain/e/h;

.field private d:Lcom/appbrain/c/n;

.field private e:Lcom/appbrain/c/n;

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appbrain/e/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appbrain/e/r;-><init>(B)V

    sput-object v0, Lcom/appbrain/e/r;->a:Lcom/appbrain/e/r;

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v1

    iput-object v1, v0, Lcom/appbrain/e/r;->c:Lcom/appbrain/e/h;

    sget-object v1, Lcom/appbrain/c/m;->a:Lcom/appbrain/c/n;

    iput-object v1, v0, Lcom/appbrain/e/r;->d:Lcom/appbrain/c/n;

    sget-object v1, Lcom/appbrain/c/m;->a:Lcom/appbrain/c/n;

    iput-object v1, v0, Lcom/appbrain/e/r;->e:Lcom/appbrain/c/n;

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/e/r;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/c/h;-><init>(B)V

    iput-byte v1, p0, Lcom/appbrain/e/r;->g:B

    iput v1, p0, Lcom/appbrain/e/r;->h:I

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/appbrain/c/h;-><init>()V

    iput-byte v0, p0, Lcom/appbrain/e/r;->g:B

    iput v0, p0, Lcom/appbrain/e/r;->h:I

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/e/r;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/r;)Lcom/appbrain/c/n;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/r;->d:Lcom/appbrain/c/n;

    return-object v0
.end method

.method public static a()Lcom/appbrain/e/r;
    .locals 1

    sget-object v0, Lcom/appbrain/e/r;->a:Lcom/appbrain/e/r;

    return-object v0
.end method

.method static synthetic a(Lcom/appbrain/e/r;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/r;->b:I

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/r;Lcom/appbrain/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/r;->d:Lcom/appbrain/c/n;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/r;Lcom/appbrain/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/r;->c:Lcom/appbrain/e/h;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/r;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/r;->f:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/appbrain/e/r;)Lcom/appbrain/c/n;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/r;->e:Lcom/appbrain/c/n;

    return-object v0
.end method

.method static synthetic b(Lcom/appbrain/e/r;Lcom/appbrain/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/r;->e:Lcom/appbrain/c/n;

    return-void
.end method

.method public static g()Lcom/appbrain/e/s;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/s;->b()Lcom/appbrain/e/s;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/e/r;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/r;->f:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method


# virtual methods
.method public final G()I
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/appbrain/e/r;->h:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/appbrain/e/r;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/appbrain/e/r;->c:Lcom/appbrain/e/h;

    invoke-static {v3, v0}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/o;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v2, v1

    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/appbrain/e/r;->d:Lcom/appbrain/c/n;

    invoke-interface {v4}, Lcom/appbrain/c/n;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/appbrain/e/r;->d:Lcom/appbrain/c/n;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/appbrain/e/r;->e:Lcom/appbrain/c/n;

    invoke-interface {v3}, Lcom/appbrain/c/n;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/appbrain/e/r;->e:Lcom/appbrain/c/n;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/appbrain/e/r;->b:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/appbrain/e/r;->h()Lcom/appbrain/c/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/appbrain/e/r;->h:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/appbrain/e/r;->d:Lcom/appbrain/c/n;

    invoke-interface {v4, v2}, Lcom/appbrain/c/n;->a(I)Lcom/appbrain/c/c;

    move-result-object v4

    invoke-static {v4}, Lcom/appbrain/c/e;->a(Lcom/appbrain/c/c;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/appbrain/e/r;->e:Lcom/appbrain/c/n;

    invoke-interface {v3, v1}, Lcom/appbrain/c/n;->a(I)Lcom/appbrain/c/c;

    move-result-object v3

    invoke-static {v3}, Lcom/appbrain/c/e;->a(Lcom/appbrain/c/c;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final synthetic J()Lcom/appbrain/c/p;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/s;->b()Lcom/appbrain/e/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/s;->a(Lcom/appbrain/e/r;)Lcom/appbrain/e/s;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/c/e;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/appbrain/e/r;->G()I

    iget v0, p0, Lcom/appbrain/e/r;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/appbrain/e/r;->c:Lcom/appbrain/e/h;

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/o;)V

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/appbrain/e/r;->d:Lcom/appbrain/c/n;

    invoke-interface {v2}, Lcom/appbrain/c/n;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/appbrain/e/r;->e:Lcom/appbrain/c/n;

    invoke-interface {v0}, Lcom/appbrain/c/n;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    iget v0, p0, Lcom/appbrain/e/r;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/appbrain/e/r;->h()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/appbrain/e/r;->d:Lcom/appbrain/c/n;

    invoke-interface {v2, v0}, Lcom/appbrain/c/n;->a(I)Lcom/appbrain/c/c;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/appbrain/e/r;->e:Lcom/appbrain/c/n;

    invoke-interface {v2, v1}, Lcom/appbrain/c/n;->a(I)Lcom/appbrain/c/c;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/appbrain/e/r;->b:I

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

    iget-object v0, p0, Lcom/appbrain/e/r;->c:Lcom/appbrain/e/h;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/r;->b:I

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

    iget-object v0, p0, Lcom/appbrain/e/r;->f:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/appbrain/e/r;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/appbrain/e/r;->g:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/appbrain/e/r;->g:B

    goto :goto_0
.end method
