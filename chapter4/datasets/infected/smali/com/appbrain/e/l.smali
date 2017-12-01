.class public final Lcom/appbrain/e/l;
.super Lcom/appbrain/c/h;


# static fields
.field private static final a:Lcom/appbrain/e/l;


# instance fields
.field private b:I

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Z

.field private f:Z

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/appbrain/e/l;

    invoke-direct {v0, v2}, Lcom/appbrain/e/l;-><init>(B)V

    sput-object v0, Lcom/appbrain/e/l;->a:Lcom/appbrain/e/l;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/appbrain/e/l;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/appbrain/e/l;->d:Ljava/util/List;

    iput-boolean v2, v0, Lcom/appbrain/e/l;->e:Z

    iput-boolean v2, v0, Lcom/appbrain/e/l;->f:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/c/h;-><init>(B)V

    iput-byte v1, p0, Lcom/appbrain/e/l;->g:B

    iput v1, p0, Lcom/appbrain/e/l;->h:I

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/appbrain/c/h;-><init>()V

    iput-byte v0, p0, Lcom/appbrain/e/l;->g:B

    iput v0, p0, Lcom/appbrain/e/l;->h:I

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/e/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/appbrain/e/l;
    .locals 1

    sget-object v0, Lcom/appbrain/e/l;->a:Lcom/appbrain/e/l;

    return-object v0
.end method

.method public static a(Lcom/appbrain/e/l;)Lcom/appbrain/e/m;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/m;->b()Lcom/appbrain/e/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/m;->a(Lcom/appbrain/e/l;)Lcom/appbrain/e/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/appbrain/e/l;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/l;->b:I

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/l;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/l;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/l;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/e/l;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/appbrain/e/l;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/l;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/appbrain/e/l;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/l;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/appbrain/e/l;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/e/l;->f:Z

    return-void
.end method

.method static synthetic c(Lcom/appbrain/e/l;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/l;->d:Ljava/util/List;

    return-object v0
.end method

.method public static k()Lcom/appbrain/e/m;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/m;->b()Lcom/appbrain/e/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final G()I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/appbrain/e/l;->h:I

    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    :goto_0
    return v3

    :cond_0
    move v1, v2

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/appbrain/e/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/appbrain/e/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    iget v0, p0, Lcom/appbrain/e/l;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_1

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/appbrain/e/l;->e:Z

    invoke-static {v0}, Lcom/appbrain/c/e;->a(I)I

    move-result v0

    add-int/2addr v3, v0

    :cond_1
    iget v0, p0, Lcom/appbrain/e/l;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_2

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/appbrain/e/l;->f:Z

    invoke-static {v0}, Lcom/appbrain/c/e;->a(I)I

    move-result v0

    add-int/2addr v3, v0

    :cond_2
    iput v3, p0, Lcom/appbrain/e/l;->h:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appbrain/e/l;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/c/o;

    invoke-static {v4, v0}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/o;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/appbrain/e/l;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/c/o;

    invoke-static {v5, v0}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/o;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public final synthetic J()Lcom/appbrain/c/p;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/m;->b()Lcom/appbrain/e/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/m;->a(Lcom/appbrain/e/l;)Lcom/appbrain/e/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/c/e;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/appbrain/e/l;->G()I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/appbrain/e/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/appbrain/e/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    iget v0, p0, Lcom/appbrain/e/l;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/appbrain/e/l;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(IZ)V

    :cond_0
    iget v0, p0, Lcom/appbrain/e/l;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_1

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/appbrain/e/l;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/c/e;->a(IZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appbrain/e/l;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/c/o;

    invoke-virtual {p1, v3, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/o;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appbrain/e/l;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/c/o;

    invoke-virtual {p1, v4, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/o;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/l;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/l;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/appbrain/e/l;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/e/l;->e:Z

    return v0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/e/l;->b:I

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

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/e/l;->f:Z

    return v0
.end method

.method public final j()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/appbrain/e/l;->g:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/appbrain/e/l;->g:B

    goto :goto_0
.end method
