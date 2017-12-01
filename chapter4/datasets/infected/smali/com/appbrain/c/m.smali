.class public final Lcom/appbrain/c/m;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/appbrain/c/n;
.implements Ljava/util/RandomAccess;


# static fields
.field public static final a:Lcom/appbrain/c/n;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appbrain/c/r;

    new-instance v1, Lcom/appbrain/c/m;

    invoke-direct {v1}, Lcom/appbrain/c/m;-><init>()V

    invoke-direct {v0, v1}, Lcom/appbrain/c/r;-><init>(Lcom/appbrain/c/n;)V

    sput-object v0, Lcom/appbrain/c/m;->a:Lcom/appbrain/c/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    check-cast p0, Lcom/appbrain/c/c;

    invoke-virtual {p0}, Lcom/appbrain/c/c;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/appbrain/c/c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/c/c;->a(Ljava/lang/String;)Lcom/appbrain/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/appbrain/c/c;

    goto :goto_0
.end method

.method public final a(Lcom/appbrain/c/c;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/appbrain/c/m;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/c/m;->modCount:I

    return-void
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/appbrain/c/m;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/c/m;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    iget v1, p0, Lcom/appbrain/c/m;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appbrain/c/m;->modCount:I

    return v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/appbrain/c/m;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/c/m;->modCount:I

    return-void
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    iget-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/c/m;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appbrain/c/m;->modCount:I

    invoke-static {v0}, Lcom/appbrain/c/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/c/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/c/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
