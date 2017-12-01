.class public final Lcom/appbrain/e/d;
.super Lcom/appbrain/c/h;


# static fields
.field private static final a:Lcom/appbrain/e/d;


# instance fields
.field private b:I

.field private c:Lcom/appbrain/e/h;

.field private d:I

.field private e:I

.field private f:Lcom/appbrain/e/f;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/appbrain/e/d;

    invoke-direct {v0, v2}, Lcom/appbrain/e/d;-><init>(B)V

    sput-object v0, Lcom/appbrain/e/d;->a:Lcom/appbrain/e/d;

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v1

    iput-object v1, v0, Lcom/appbrain/e/d;->c:Lcom/appbrain/e/h;

    iput v2, v0, Lcom/appbrain/e/d;->d:I

    iput v2, v0, Lcom/appbrain/e/d;->e:I

    sget-object v1, Lcom/appbrain/e/f;->a:Lcom/appbrain/e/f;

    iput-object v1, v0, Lcom/appbrain/e/d;->f:Lcom/appbrain/e/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/c/h;-><init>(B)V

    iput-byte v1, p0, Lcom/appbrain/e/d;->g:B

    iput v1, p0, Lcom/appbrain/e/d;->h:I

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/appbrain/c/h;-><init>()V

    iput-byte v0, p0, Lcom/appbrain/e/d;->g:B

    iput v0, p0, Lcom/appbrain/e/d;->h:I

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/e/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/appbrain/e/d;
    .locals 1

    sget-object v0, Lcom/appbrain/e/d;->a:Lcom/appbrain/e/d;

    return-object v0
.end method

.method static synthetic a(Lcom/appbrain/e/d;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/d;->d:I

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/d;Lcom/appbrain/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/d;->f:Lcom/appbrain/e/f;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/d;Lcom/appbrain/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/d;->c:Lcom/appbrain/e/h;

    return-void
.end method

.method static synthetic b(Lcom/appbrain/e/d;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/d;->e:I

    return-void
.end method

.method static synthetic c(Lcom/appbrain/e/d;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/d;->b:I

    return-void
.end method

.method public static k()Lcom/appbrain/e/e;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/e;->b()Lcom/appbrain/e/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final G()I
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget v0, p0, Lcom/appbrain/e/d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/appbrain/e/d;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/d;->c:Lcom/appbrain/e/h;

    invoke-static {v2, v0}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/o;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/appbrain/e/d;->b:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/appbrain/e/d;->d:I

    invoke-static {v3, v1}, Lcom/appbrain/c/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/appbrain/e/d;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_3

    const/4 v1, 0x5

    iget v2, p0, Lcom/appbrain/e/d;->e:I

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/appbrain/e/d;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/appbrain/e/d;->f:Lcom/appbrain/e/f;

    invoke-virtual {v2}, Lcom/appbrain/e/f;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/appbrain/c/e;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lcom/appbrain/e/d;->h:I

    goto :goto_0
.end method

.method public final synthetic J()Lcom/appbrain/c/p;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/e;->b()Lcom/appbrain/e/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/e;->a(Lcom/appbrain/e/d;)Lcom/appbrain/e/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/c/e;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/appbrain/e/d;->G()I

    iget v0, p0, Lcom/appbrain/e/d;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/e/d;->c:Lcom/appbrain/e/h;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/o;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/e/d;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/appbrain/e/d;->d:I

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/c/e;->a(II)V

    :cond_1
    iget v0, p0, Lcom/appbrain/e/d;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_2

    const/4 v0, 0x5

    iget v1, p0, Lcom/appbrain/e/d;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(II)V

    :cond_2
    iget v0, p0, Lcom/appbrain/e/d;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/appbrain/e/d;->f:Lcom/appbrain/e/f;

    invoke-virtual {v1}, Lcom/appbrain/e/f;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->b(II)V

    :cond_3
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/appbrain/e/d;->b:I

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

    iget-object v0, p0, Lcom/appbrain/e/d;->c:Lcom/appbrain/e/h;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/d;->b:I

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

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/appbrain/e/d;->d:I

    return v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/d;->b:I

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

    iget v0, p0, Lcom/appbrain/e/d;->e:I

    return v0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/d;->b:I

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

.method public final i()Lcom/appbrain/e/f;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/d;->f:Lcom/appbrain/e/f;

    return-object v0
.end method

.method public final j()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/appbrain/e/d;->g:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/appbrain/e/d;->g:B

    goto :goto_0
.end method
