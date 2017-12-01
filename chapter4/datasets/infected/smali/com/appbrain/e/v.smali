.class public final Lcom/appbrain/e/v;
.super Lcom/appbrain/c/h;


# static fields
.field private static final a:Lcom/appbrain/e/v;


# instance fields
.field private b:I

.field private c:Lcom/appbrain/e/h;

.field private d:Z

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/appbrain/e/v;

    invoke-direct {v0, v2}, Lcom/appbrain/e/v;-><init>(B)V

    sput-object v0, Lcom/appbrain/e/v;->a:Lcom/appbrain/e/v;

    invoke-static {}, Lcom/appbrain/e/h;->a()Lcom/appbrain/e/h;

    move-result-object v1

    iput-object v1, v0, Lcom/appbrain/e/v;->c:Lcom/appbrain/e/h;

    iput-boolean v2, v0, Lcom/appbrain/e/v;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/c/h;-><init>(B)V

    iput-byte v1, p0, Lcom/appbrain/e/v;->e:B

    iput v1, p0, Lcom/appbrain/e/v;->f:I

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/appbrain/c/h;-><init>()V

    iput-byte v0, p0, Lcom/appbrain/e/v;->e:B

    iput v0, p0, Lcom/appbrain/e/v;->f:I

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/e/v;-><init>()V

    return-void
.end method

.method public static a()Lcom/appbrain/e/v;
    .locals 1

    sget-object v0, Lcom/appbrain/e/v;->a:Lcom/appbrain/e/v;

    return-object v0
.end method

.method static synthetic a(Lcom/appbrain/e/v;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/v;->b:I

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/v;Lcom/appbrain/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/v;->c:Lcom/appbrain/e/h;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/v;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/e/v;->d:Z

    return-void
.end method

.method public static g()Lcom/appbrain/e/w;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/w;->b()Lcom/appbrain/e/w;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final G()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/appbrain/e/v;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/appbrain/e/v;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/v;->c:Lcom/appbrain/e/h;

    invoke-static {v2, v0}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/o;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/appbrain/e/v;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/appbrain/e/v;->d:Z

    invoke-static {v3}, Lcom/appbrain/c/e;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/appbrain/e/v;->f:I

    goto :goto_0
.end method

.method public final synthetic J()Lcom/appbrain/c/p;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/w;->b()Lcom/appbrain/e/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/w;->a(Lcom/appbrain/e/v;)Lcom/appbrain/e/w;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/c/e;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/appbrain/e/v;->G()I

    iget v0, p0, Lcom/appbrain/e/v;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/e/v;->c:Lcom/appbrain/e/h;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/o;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/e/v;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/appbrain/e/v;->d:Z

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/c/e;->a(IZ)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/appbrain/e/v;->b:I

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

    iget-object v0, p0, Lcom/appbrain/e/v;->c:Lcom/appbrain/e/h;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/v;->b:I

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

    iget-boolean v0, p0, Lcom/appbrain/e/v;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/appbrain/e/v;->e:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/appbrain/e/v;->e:B

    goto :goto_0
.end method
