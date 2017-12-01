.class Lu/aly/bb$c;
.super Lu/aly/dt;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bb$1;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lu/aly/bb$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 484
    check-cast p1, Lu/aly/do;

    .line 486
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 487
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 489
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 490
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ba;

    invoke-virtual {v0, p1}, Lu/aly/ba;->b(Lu/aly/di;)V

    goto :goto_0

    .line 493
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 494
    invoke-virtual {p2}, Lu/aly/bb;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 497
    :cond_1
    invoke-virtual {p2}, Lu/aly/bb;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 500
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(Ljava/util/BitSet;I)V

    .line 501
    invoke-virtual {p2}, Lu/aly/bb;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 504
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/az;

    .line 506
    invoke-virtual {v0, p1}, Lu/aly/az;->b(Lu/aly/di;)V

    goto :goto_1

    .line 510
    :cond_3
    invoke-virtual {p2}, Lu/aly/bb;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 513
    :cond_4
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
    .line 480
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$c;->a(Lu/aly/di;Lu/aly/bb;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 517
    check-cast p1, Lu/aly/do;

    .line 519
    new-instance v2, Lu/aly/df;

    const/16 v0, 0xb

    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v3

    invoke-direct {v2, v0, v7, v3}, Lu/aly/df;-><init>(BBI)V

    .line 520
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/df;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    move v0, v1

    .line 521
    :goto_0
    iget v3, v2, Lu/aly/df;->c:I

    if-ge v0, v3, :cond_0

    .line 525
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v3

    .line 526
    new-instance v4, Lu/aly/ba;

    invoke-direct {v4}, Lu/aly/ba;-><init>()V

    .line 527
    invoke-virtual {v4, p1}, Lu/aly/ba;->a(Lu/aly/di;)V

    .line 528
    iget-object v5, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {p2, v6}, Lu/aly/bb;->a(Z)V

    .line 532
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lu/aly/do;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 533
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 535
    new-instance v2, Lu/aly/de;

    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v3

    invoke-direct {v2, v7, v3}, Lu/aly/de;-><init>(BI)V

    .line 536
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v2, Lu/aly/de;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/bb;->b:Ljava/util/List;

    .line 537
    :goto_1
    iget v3, v2, Lu/aly/de;->b:I

    if-ge v1, v3, :cond_1

    .line 540
    new-instance v3, Lu/aly/az;

    invoke-direct {v3}, Lu/aly/az;-><init>()V

    .line 541
    invoke-virtual {v3, p1}, Lu/aly/az;->a(Lu/aly/di;)V

    .line 542
    iget-object v4, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 545
    :cond_1
    invoke-virtual {p2, v6}, Lu/aly/bb;->b(Z)V

    .line 547
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    .line 549
    invoke-virtual {p2, v6}, Lu/aly/bb;->c(Z)V

    .line 551
    :cond_3
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
    .line 480
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$c;->b(Lu/aly/di;Lu/aly/bb;)V

    return-void
.end method
