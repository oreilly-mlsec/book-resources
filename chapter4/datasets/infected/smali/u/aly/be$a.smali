.class Lu/aly/be$a;
.super Lu/aly/ds;
.source "InstantMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/be;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/be$1;)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lu/aly/be$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/be;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/16 v6, 0xf

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 423
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 426
    :goto_0
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 427
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-nez v2, :cond_0

    .line 501
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 504
    invoke-virtual {p2}, Lu/aly/be;->v()V

    .line 505
    return-void

    .line 430
    :cond_0
    iget-short v2, v0, Lu/aly/dd;->c:S

    packed-switch v2, :pswitch_data_0

    .line 497
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    .line 499
    :goto_1
    invoke-virtual {p1}, Lu/aly/di;->m()V

    goto :goto_0

    .line 432
    :pswitch_0
    iget-byte v2, v0, Lu/aly/dd;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 433
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    .line 434
    invoke-virtual {p2, v5}, Lu/aly/be;->a(Z)V

    goto :goto_1

    .line 436
    :cond_1
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 440
    :pswitch_1
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v6, :cond_3

    .line 442
    invoke-virtual {p1}, Lu/aly/di;->p()Lu/aly/de;

    move-result-object v2

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/de;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    move v0, v1

    .line 444
    :goto_2
    iget v3, v2, Lu/aly/de;->b:I

    if-ge v0, v3, :cond_2

    .line 447
    new-instance v3, Lu/aly/av;

    invoke-direct {v3}, Lu/aly/av;-><init>()V

    .line 448
    invoke-virtual {v3, p1}, Lu/aly/av;->a(Lu/aly/di;)V

    .line 449
    iget-object v4, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 451
    :cond_2
    invoke-virtual {p1}, Lu/aly/di;->q()V

    .line 453
    invoke-virtual {p2, v5}, Lu/aly/be;->b(Z)V

    goto :goto_1

    .line 455
    :cond_3
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 459
    :pswitch_2
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v6, :cond_5

    .line 461
    invoke-virtual {p1}, Lu/aly/di;->p()Lu/aly/de;

    move-result-object v2

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/de;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    move v0, v1

    .line 463
    :goto_3
    iget v3, v2, Lu/aly/de;->b:I

    if-ge v0, v3, :cond_4

    .line 466
    new-instance v3, Lu/aly/ax;

    invoke-direct {v3}, Lu/aly/ax;-><init>()V

    .line 467
    invoke-virtual {v3, p1}, Lu/aly/ax;->a(Lu/aly/di;)V

    .line 468
    iget-object v4, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 470
    :cond_4
    invoke-virtual {p1}, Lu/aly/di;->q()V

    .line 472
    invoke-virtual {p2, v5}, Lu/aly/be;->c(Z)V

    goto :goto_1

    .line 474
    :cond_5
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 478
    :pswitch_3
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v6, :cond_7

    .line 480
    invoke-virtual {p1}, Lu/aly/di;->p()Lu/aly/de;

    move-result-object v2

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/de;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/be;->d:Ljava/util/List;

    move v0, v1

    .line 482
    :goto_4
    iget v3, v2, Lu/aly/de;->b:I

    if-ge v0, v3, :cond_6

    .line 485
    new-instance v3, Lu/aly/ax;

    invoke-direct {v3}, Lu/aly/ax;-><init>()V

    .line 486
    invoke-virtual {v3, p1}, Lu/aly/ax;->a(Lu/aly/di;)V

    .line 487
    iget-object v4, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 489
    :cond_6
    invoke-virtual {p1}, Lu/aly/di;->q()V

    .line 491
    invoke-virtual {p2, v5}, Lu/aly/be;->d(Z)V

    goto/16 :goto_1

    .line 493
    :cond_7
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/di;Lu/aly/cj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 419
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$a;->b(Lu/aly/di;Lu/aly/be;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/be;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    .line 508
    invoke-virtual {p2}, Lu/aly/be;->v()V

    .line 510
    invoke-static {}, Lu/aly/be;->w()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 511
    iget-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lu/aly/be;->x()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 513
    iget-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 516
    :cond_0
    iget-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {p2}, Lu/aly/be;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    invoke-static {}, Lu/aly/be;->y()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 520
    new-instance v0, Lu/aly/de;

    iget-object v1, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/de;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/de;)V

    .line 521
    iget-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av;

    .line 523
    invoke-virtual {v0, p1}, Lu/aly/av;->b(Lu/aly/di;)V

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p1}, Lu/aly/di;->f()V

    .line 527
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 530
    :cond_2
    iget-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 531
    invoke-virtual {p2}, Lu/aly/be;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    invoke-static {}, Lu/aly/be;->z()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 534
    new-instance v0, Lu/aly/de;

    iget-object v1, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/de;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/de;)V

    .line 535
    iget-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax;

    .line 537
    invoke-virtual {v0, p1}, Lu/aly/ax;->b(Lu/aly/di;)V

    goto :goto_1

    .line 539
    :cond_3
    invoke-virtual {p1}, Lu/aly/di;->f()V

    .line 541
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 544
    :cond_4
    iget-object v0, p2, Lu/aly/be;->d:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 545
    invoke-virtual {p2}, Lu/aly/be;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    invoke-static {}, Lu/aly/be;->A()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 548
    new-instance v0, Lu/aly/de;

    iget-object v1, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/de;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/de;)V

    .line 549
    iget-object v0, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax;

    .line 551
    invoke-virtual {v0, p1}, Lu/aly/ax;->b(Lu/aly/di;)V

    goto :goto_2

    .line 553
    :cond_5
    invoke-virtual {p1}, Lu/aly/di;->f()V

    .line 555
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 558
    :cond_6
    invoke-virtual {p1}, Lu/aly/di;->d()V

    .line 559
    invoke-virtual {p1}, Lu/aly/di;->b()V

    .line 560
    return-void
.end method

.method public synthetic b(Lu/aly/di;Lu/aly/cj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 419
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$a;->a(Lu/aly/di;Lu/aly/be;)V

    return-void
.end method
