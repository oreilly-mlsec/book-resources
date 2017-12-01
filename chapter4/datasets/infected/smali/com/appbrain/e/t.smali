.class public final Lcom/appbrain/e/t;
.super Lcom/appbrain/c/h;


# static fields
.field private static final a:Lcom/appbrain/e/t;


# instance fields
.field private b:I

.field private c:Lcom/appbrain/e/p;

.field private d:Z

.field private e:I

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/appbrain/e/t;

    invoke-direct {v0, v2}, Lcom/appbrain/e/t;-><init>(B)V

    sput-object v0, Lcom/appbrain/e/t;->a:Lcom/appbrain/e/t;

    invoke-static {}, Lcom/appbrain/e/p;->a()Lcom/appbrain/e/p;

    move-result-object v1

    iput-object v1, v0, Lcom/appbrain/e/t;->c:Lcom/appbrain/e/p;

    iput-boolean v2, v0, Lcom/appbrain/e/t;->d:Z

    iput v2, v0, Lcom/appbrain/e/t;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/c/h;-><init>(B)V

    iput-byte v1, p0, Lcom/appbrain/e/t;->f:B

    iput v1, p0, Lcom/appbrain/e/t;->g:I

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/appbrain/c/h;-><init>()V

    iput-byte v0, p0, Lcom/appbrain/e/t;->f:B

    iput v0, p0, Lcom/appbrain/e/t;->g:I

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/e/t;-><init>()V

    return-void
.end method

.method public static a()Lcom/appbrain/e/t;
    .locals 1

    sget-object v0, Lcom/appbrain/e/t;->a:Lcom/appbrain/e/t;

    return-object v0
.end method

.method public static a([B)Lcom/appbrain/e/t;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/u;->b()Lcom/appbrain/e/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/u;->a([B)Lcom/appbrain/c/b;

    move-result-object v0

    check-cast v0, Lcom/appbrain/e/u;

    invoke-static {v0}, Lcom/appbrain/e/u;->a(Lcom/appbrain/e/u;)Lcom/appbrain/e/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/appbrain/e/t;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/t;->e:I

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/t;Lcom/appbrain/e/p;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/t;->c:Lcom/appbrain/e/p;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/t;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/e/t;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/appbrain/e/t;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/t;->b:I

    return-void
.end method

.method public static i()Lcom/appbrain/e/u;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/u;->b()Lcom/appbrain/e/u;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final G()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/appbrain/e/t;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/appbrain/e/t;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/t;->c:Lcom/appbrain/e/p;

    invoke-static {v2, v0}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/o;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/appbrain/e/t;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/appbrain/e/t;->d:Z

    invoke-static {v3}, Lcom/appbrain/c/e;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/appbrain/e/t;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/appbrain/e/t;->e:I

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/appbrain/e/t;->g:I

    goto :goto_0
.end method

.method public final synthetic J()Lcom/appbrain/c/p;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/e/t;->j()Lcom/appbrain/e/u;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/c/e;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/appbrain/e/t;->G()I

    iget v0, p0, Lcom/appbrain/e/t;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/e/t;->c:Lcom/appbrain/e/p;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/o;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/e/t;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/appbrain/e/t;->d:Z

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/c/e;->a(IZ)V

    :cond_1
    iget v0, p0, Lcom/appbrain/e/t;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/appbrain/e/t;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(II)V

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/appbrain/e/t;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/appbrain/e/p;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/t;->c:Lcom/appbrain/e/p;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/t;->b:I

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

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/e/t;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/t;->b:I

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

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/appbrain/e/t;->e:I

    return v0
.end method

.method public final h()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/appbrain/e/t;->f:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/appbrain/e/t;->f:B

    goto :goto_0
.end method

.method public final j()Lcom/appbrain/e/u;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/u;->b()Lcom/appbrain/e/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/u;->a(Lcom/appbrain/e/t;)Lcom/appbrain/e/u;

    move-result-object v0

    return-object v0
.end method
