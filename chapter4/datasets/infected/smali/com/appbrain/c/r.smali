.class public final Lcom/appbrain/c/r;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/appbrain/c/n;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Lcom/appbrain/c/n;


# direct methods
.method public constructor <init>(Lcom/appbrain/c/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/appbrain/c/r;->a:Lcom/appbrain/c/n;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/c/r;)Lcom/appbrain/c/n;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/c/r;->a:Lcom/appbrain/c/n;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/appbrain/c/c;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/c/r;->a:Lcom/appbrain/c/n;

    invoke-interface {v0, p1}, Lcom/appbrain/c/n;->a(I)Lcom/appbrain/c/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/appbrain/c/c;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/c/r;->a:Lcom/appbrain/c/n;

    invoke-interface {v0, p1}, Lcom/appbrain/c/n;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/appbrain/c/t;

    invoke-direct {v0, p0}, Lcom/appbrain/c/t;-><init>(Lcom/appbrain/c/r;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/appbrain/c/s;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/c/s;-><init>(Lcom/appbrain/c/r;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/c/r;->a:Lcom/appbrain/c/n;

    invoke-interface {v0}, Lcom/appbrain/c/n;->size()I

    move-result v0

    return v0
.end method
