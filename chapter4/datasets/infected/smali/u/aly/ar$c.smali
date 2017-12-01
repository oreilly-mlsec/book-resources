.class Lu/aly/ar$c;
.super Lu/aly/dt;
.source "ClientStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/ar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ar$1;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lu/aly/ar$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/ar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 392
    check-cast p1, Lu/aly/do;

    .line 393
    iget v0, p2, Lu/aly/ar;->a:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 394
    iget v0, p2, Lu/aly/ar;->b:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 395
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 396
    invoke-virtual {p2}, Lu/aly/ar;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 399
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(Ljava/util/BitSet;I)V

    .line 400
    invoke-virtual {p2}, Lu/aly/ar;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget v0, p2, Lu/aly/ar;->c:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 403
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lu/aly/di;Lu/aly/cj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 388
    check-cast p2, Lu/aly/ar;

    invoke-virtual {p0, p1, p2}, Lu/aly/ar$c;->a(Lu/aly/di;Lu/aly/ar;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/ar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 407
    check-cast p1, Lu/aly/do;

    .line 408
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->a:I

    .line 409
    invoke-virtual {p2, v2}, Lu/aly/ar;->a(Z)V

    .line 410
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->b:I

    .line 411
    invoke-virtual {p2, v2}, Lu/aly/ar;->b(Z)V

    .line 412
    invoke-virtual {p1, v2}, Lu/aly/do;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->c:I

    .line 415
    invoke-virtual {p2, v2}, Lu/aly/ar;->c(Z)V

    .line 417
    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lu/aly/di;Lu/aly/cj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 388
    check-cast p2, Lu/aly/ar;

    invoke-virtual {p0, p1, p2}, Lu/aly/ar$c;->b(Lu/aly/di;Lu/aly/ar;)V

    return-void
.end method
