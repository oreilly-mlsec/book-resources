.class public final Lcom/appbrain/e/j;
.super Lcom/appbrain/c/h;


# static fields
.field private static final a:Lcom/appbrain/e/j;


# instance fields
.field private b:I

.field private c:Lcom/appbrain/e/l;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appbrain/e/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appbrain/e/j;-><init>(B)V

    sput-object v0, Lcom/appbrain/e/j;->a:Lcom/appbrain/e/j;

    invoke-static {}, Lcom/appbrain/e/l;->a()Lcom/appbrain/e/l;

    move-result-object v1

    iput-object v1, v0, Lcom/appbrain/e/j;->c:Lcom/appbrain/e/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/c/h;-><init>(B)V

    iput-byte v1, p0, Lcom/appbrain/e/j;->d:B

    iput v1, p0, Lcom/appbrain/e/j;->e:I

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/appbrain/c/h;-><init>()V

    iput-byte v0, p0, Lcom/appbrain/e/j;->d:B

    iput v0, p0, Lcom/appbrain/e/j;->e:I

    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/e/j;-><init>()V

    return-void
.end method

.method public static a()Lcom/appbrain/e/j;
    .locals 1

    sget-object v0, Lcom/appbrain/e/j;->a:Lcom/appbrain/e/j;

    return-object v0
.end method

.method public static a([B)Lcom/appbrain/e/j;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/k;->a()Lcom/appbrain/e/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/k;->a([B)Lcom/appbrain/c/b;

    move-result-object v0

    check-cast v0, Lcom/appbrain/e/k;

    invoke-static {v0}, Lcom/appbrain/e/k;->a(Lcom/appbrain/e/k;)Lcom/appbrain/e/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/appbrain/e/j;I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/e/j;->b:I

    return-void
.end method

.method static synthetic a(Lcom/appbrain/e/j;Lcom/appbrain/e/l;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/e/j;->c:Lcom/appbrain/e/l;

    return-void
.end method


# virtual methods
.method public final G()I
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/appbrain/e/j;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/appbrain/e/j;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/appbrain/e/j;->c:Lcom/appbrain/e/l;

    invoke-static {v2, v0}, Lcom/appbrain/c/e;->b(ILcom/appbrain/c/o;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iput v0, p0, Lcom/appbrain/e/j;->e:I

    goto :goto_0
.end method

.method public final synthetic J()Lcom/appbrain/c/p;
    .locals 1

    invoke-static {}, Lcom/appbrain/e/k;->a()Lcom/appbrain/e/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/k;->a(Lcom/appbrain/e/j;)Lcom/appbrain/e/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/c/e;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/appbrain/e/j;->G()I

    iget v0, p0, Lcom/appbrain/e/j;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/e/j;->c:Lcom/appbrain/e/l;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/c/e;->a(ILcom/appbrain/c/o;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/appbrain/e/j;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/appbrain/e/l;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/e/j;->c:Lcom/appbrain/e/l;

    return-object v0
.end method

.method public final d()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/appbrain/e/j;->d:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/appbrain/e/j;->d:B

    goto :goto_0
.end method
