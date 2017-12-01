.class public final Lcom/appbrain/e/n;
.super Lcom/appbrain/c/h;


# static fields
.field private static final a:Lcom/appbrain/e/n;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/appbrain/e/n;

    invoke-direct {v0, v2}, Lcom/appbrain/e/n;-><init>(B)V

    sput-object v0, Lcom/appbrain/e/n;->a:Lcom/appbrain/e/n;

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/e/n;->c:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/appbrain/e/n;->d:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/appbrain/e/n;->e:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/c/h;-><init>(B)V

    iput-byte v1, p0, Lcom/appbrain/e/n;->f:B

    iput v1, p0, Lcom/appbrain/e/n;->g:I

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/appbrain/c/h;-><init>()V

    iput-byte v0, p0, Lcom/appbrain/e/n;->f:B

    iput v0, p0, Lcom/appbrain/e/n;->g:I

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/e/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/appbrain/e/n;
    .locals 1

    sget-object v0, Lcom/appbrain/e/n;->a:Lcom/appbrain/e/n;

    return-object v0
.end method

.method static synthetic a(Lcom/appbrain/e/n;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/n;->b:I

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/n;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/n;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/n;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/e/n;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/appbrain/e/n;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public static i()Lcom/appbrain/e/o;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/o;->b()Lcom/appbrain/e/o;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/e/n;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/n;->c:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method private k()Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/e/n;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/e/n;->d:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method


# virtual methods
.method public final G()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/appbrain/e/n;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/appbrain/e/n;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/appbrain/e/n;->j()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/appbrain/e/n;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/appbrain/e/n;->k()Lcom/appbrain/c/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/appbrain/e/n;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    iget-boolean v1, p0, Lcom/appbrain/e/n;->e:Z

    invoke-static {v4}, Lcom/appbrain/c/e;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/appbrain/e/n;->g:I

    goto :goto_0
.end method

.method public final synthetic J()Lcom/appbrain/c/p;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/o;->b()Lcom/appbrain/e/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/o;->a(Lcom/appbrain/e/n;)Lcom/appbrain/e/o;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/c/e;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/appbrain/e/n;->G()I

    iget v0, p0, Lcom/appbrain/e/n;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/e/n;->j()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/e/n;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/appbrain/e/n;->k()Lcom/appbrain/c/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/c;)V

    :cond_1
    iget v0, p0, Lcom/appbrain/e/n;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/appbrain/e/n;->e:Z

    invoke-virtual {p1, v3, v0}, Lcom/appbrain/c/e;->a(IZ)V

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/appbrain/e/n;->b:I

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

    iget-object v0, p0, Lcom/appbrain/e/n;->c:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/appbrain/e/n;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/n;->b:I

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

    iget-object v0, p0, Lcom/appbrain/e/n;->d:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/appbrain/e/n;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/n;->b:I

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

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/e/n;->e:Z

    return v0
.end method

.method public final h()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/appbrain/e/n;->f:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/appbrain/e/n;->f:B

    goto :goto_0
.end method
