.class Lu/aly/az$c;
.super Lu/aly/dt;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/az;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/az$1;)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lu/aly/az$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/az;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 461
    check-cast p1, Lu/aly/do;

    .line 462
    iget-object v0, p2, Lu/aly/az;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 463
    iget-object v0, p2, Lu/aly/az;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 464
    iget-wide v0, p2, Lu/aly/az;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(J)V

    .line 465
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 466
    invoke-virtual {p2}, Lu/aly/az;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 469
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(Ljava/util/BitSet;I)V

    .line 470
    invoke-virtual {p2}, Lu/aly/az;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p2, Lu/aly/az;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 473
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
    .line 457
    check-cast p2, Lu/aly/az;

    invoke-virtual {p0, p1, p2}, Lu/aly/az$c;->a(Lu/aly/di;Lu/aly/az;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/az;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 477
    check-cast p1, Lu/aly/do;

    .line 478
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/az;->a:Ljava/lang/String;

    .line 479
    invoke-virtual {p2, v2}, Lu/aly/az;->a(Z)V

    .line 480
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/az;->c:Ljava/lang/String;

    .line 481
    invoke-virtual {p2, v2}, Lu/aly/az;->c(Z)V

    .line 482
    invoke-virtual {p1}, Lu/aly/do;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/az;->d:J

    .line 483
    invoke-virtual {p2, v2}, Lu/aly/az;->d(Z)V

    .line 484
    invoke-virtual {p1, v2}, Lu/aly/do;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 485
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/az;->b:Ljava/lang/String;

    .line 487
    invoke-virtual {p2, v2}, Lu/aly/az;->b(Z)V

    .line 489
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
    .line 457
    check-cast p2, Lu/aly/az;

    invoke-virtual {p0, p1, p2}, Lu/aly/az$c;->b(Lu/aly/di;Lu/aly/az;)V

    return-void
.end method
