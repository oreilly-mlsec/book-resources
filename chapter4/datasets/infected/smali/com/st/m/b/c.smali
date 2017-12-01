.class public Lcom/st/m/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/st/m/b/c;

.field private static b:Landroid/content/Context;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/st/m/b/c;->a:Lcom/st/m/b/c;

    sput-object v0, Lcom/st/m/b/c;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/st/m/b/c;
    .locals 1

    sput-object p0, Lcom/st/m/b/c;->b:Landroid/content/Context;

    sget-object v0, Lcom/st/m/b/c;->a:Lcom/st/m/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/st/m/b/c;

    invoke-direct {v0}, Lcom/st/m/b/c;-><init>()V

    sput-object v0, Lcom/st/m/b/c;->a:Lcom/st/m/b/c;

    :cond_0
    sget-object v0, Lcom/st/m/b/c;->a:Lcom/st/m/b/c;

    return-object v0
.end method

.method private a()V
    .locals 3

    sget-object v0, Lcom/st/m/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/st/m/u/hd;->a(Landroid/content/Context;)Lcom/st/m/u/hd;

    move-result-object v0

    sget-object v1, Lcom/st/m/da/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/st/m/u/hd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/st/m/b/c;->b:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/st/m/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/st/m/b/c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcom/st/m/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/st/m/u/hd;->a(Landroid/content/Context;)Lcom/st/m/u/hd;

    move-result-object v0

    sget-object v1, Lcom/st/m/da/a;->b:Ljava/lang/String;

    sget-object v2, Lcom/st/m/b/c;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/st/m/u/hd;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/st/m/b/c;->c:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/st/m/b/c;->c:I

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/st/m/b/c;->a()V

    iget v0, p0, Lcom/st/m/b/c;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/st/m/b/a;

    invoke-direct {v0}, Lcom/st/m/b/a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/st/m/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/st/m/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/st/m/b/a;->a(I)V

    invoke-virtual {v0, p1}, Lcom/st/m/b/a;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/st/m/b/a;->c(I)V

    sget-object v1, Lcom/st/m/b/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/st/m/b/SB;->a(Landroid/content/Context;)Lcom/st/m/b/SB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/st/m/b/SB;->a(Lcom/st/m/b/a;)V

    sget-object v0, Lcom/st/m/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/st/m/u/l;->a(Landroid/content/Context;)Lcom/st/m/u/l;

    move-result-object v0

    sget-object v1, Lcom/st/m/e/M;->b:Lcom/st/m/e/M;

    invoke-virtual {v1}, Lcom/st/m/e/M;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/st/m/u/l;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    move-object v0, v2

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/st/m/b/c;->a(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/st/m/b/c;->a(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
