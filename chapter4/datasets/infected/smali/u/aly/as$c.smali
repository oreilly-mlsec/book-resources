.class Lu/aly/as$c;
.super Lu/aly/dt;
.source "ControlPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/as;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/as$1;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lu/aly/as$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/as;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 277
    check-cast p1, Lu/aly/do;

    .line 278
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 279
    invoke-virtual {p2}, Lu/aly/as;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 282
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(Ljava/util/BitSet;I)V

    .line 283
    invoke-virtual {p2}, Lu/aly/as;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p2, Lu/aly/as;->a:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->b(Lu/aly/di;)V

    .line 286
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
    .line 273
    check-cast p2, Lu/aly/as;

    invoke-virtual {p0, p1, p2}, Lu/aly/as$c;->a(Lu/aly/di;Lu/aly/as;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/as;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 290
    check-cast p1, Lu/aly/do;

    .line 291
    invoke-virtual {p1, v2}, Lu/aly/do;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lu/aly/bf;

    invoke-direct {v0}, Lu/aly/bf;-><init>()V

    iput-object v0, p2, Lu/aly/as;->a:Lu/aly/bf;

    .line 294
    iget-object v0, p2, Lu/aly/as;->a:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->a(Lu/aly/di;)V

    .line 295
    invoke-virtual {p2, v2}, Lu/aly/as;->a(Z)V

    .line 297
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
    .line 273
    check-cast p2, Lu/aly/as;

    invoke-virtual {p0, p1, p2}, Lu/aly/as$c;->b(Lu/aly/di;Lu/aly/as;)V

    return-void
.end method
