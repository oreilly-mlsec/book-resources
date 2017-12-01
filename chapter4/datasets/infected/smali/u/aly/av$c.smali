.class Lu/aly/av$c;
.super Lu/aly/dt;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/av;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/av$1;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lu/aly/av$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/av;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 416
    check-cast p1, Lu/aly/do;

    .line 417
    iget-wide v0, p2, Lu/aly/av;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(J)V

    .line 418
    iget-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 420
    invoke-virtual {p2}, Lu/aly/av;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 423
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(Ljava/util/BitSet;I)V

    .line 424
    invoke-virtual {p2}, Lu/aly/av;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p2, Lu/aly/av;->c:Lu/aly/aw;

    invoke-virtual {v0}, Lu/aly/aw;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 427
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
    .line 412
    check-cast p2, Lu/aly/av;

    invoke-virtual {p0, p1, p2}, Lu/aly/av$c;->a(Lu/aly/di;Lu/aly/av;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/av;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 431
    check-cast p1, Lu/aly/do;

    .line 432
    invoke-virtual {p1}, Lu/aly/do;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/av;->a:J

    .line 433
    invoke-virtual {p2, v2}, Lu/aly/av;->b(Z)V

    .line 434
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->b:Ljava/lang/String;

    .line 435
    invoke-virtual {p2, v2}, Lu/aly/av;->c(Z)V

    .line 436
    invoke-virtual {p1, v2}, Lu/aly/do;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 437
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    invoke-static {v0}, Lu/aly/aw;->a(I)Lu/aly/aw;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->c:Lu/aly/aw;

    .line 439
    invoke-virtual {p2, v2}, Lu/aly/av;->d(Z)V

    .line 441
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
    .line 412
    check-cast p2, Lu/aly/av;

    invoke-virtual {p0, p1, p2}, Lu/aly/av$c;->b(Lu/aly/di;Lu/aly/av;)V

    return-void
.end method
