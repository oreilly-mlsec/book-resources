.class Lu/aly/bb$a;
.super Lu/aly/ds;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bb$1;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lu/aly/bb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 363
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 366
    :goto_0
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 367
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-nez v2, :cond_0

    .line 424
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 427
    invoke-virtual {p2}, Lu/aly/bb;->p()V

    .line 428
    return-void

    .line 370
    :cond_0
    iget-short v2, v0, Lu/aly/dd;->c:S

    packed-switch v2, :pswitch_data_0

    .line 420
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    .line 422
    :goto_1
    invoke-virtual {p1}, Lu/aly/di;->m()V

    goto :goto_0

    .line 372
    :pswitch_0
    iget-byte v2, v0, Lu/aly/dd;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 374
    invoke-virtual {p1}, Lu/aly/di;->n()Lu/aly/df;

    move-result-object v2

    .line 375
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/df;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    move v0, v1

    .line 376
    :goto_2
    iget v3, v2, Lu/aly/df;->c:I

    if-ge v0, v3, :cond_1

    .line 380
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v3

    .line 381
    new-instance v4, Lu/aly/ba;

    invoke-direct {v4}, Lu/aly/ba;-><init>()V

    .line 382
    invoke-virtual {v4, p1}, Lu/aly/ba;->a(Lu/aly/di;)V

    .line 383
    iget-object v5, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 385
    :cond_1
    invoke-virtual {p1}, Lu/aly/di;->o()V

    .line 387
    invoke-virtual {p2, v6}, Lu/aly/bb;->a(Z)V

    goto :goto_1

    .line 389
    :cond_2
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 393
    :pswitch_1
    iget-byte v2, v0, Lu/aly/dd;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_4

    .line 395
    invoke-virtual {p1}, Lu/aly/di;->p()Lu/aly/de;

    move-result-object v2

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/de;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    move v0, v1

    .line 397
    :goto_3
    iget v3, v2, Lu/aly/de;->b:I

    if-ge v0, v3, :cond_3

    .line 400
    new-instance v3, Lu/aly/az;

    invoke-direct {v3}, Lu/aly/az;-><init>()V

    .line 401
    invoke-virtual {v3, p1}, Lu/aly/az;->a(Lu/aly/di;)V

    .line 402
    iget-object v4, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 404
    :cond_3
    invoke-virtual {p1}, Lu/aly/di;->q()V

    .line 406
    invoke-virtual {p2, v6}, Lu/aly/bb;->b(Z)V

    goto :goto_1

    .line 408
    :cond_4
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 412
    :pswitch_2
    iget-byte v2, v0, Lu/aly/dd;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    .line 413
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    .line 414
    invoke-virtual {p2, v6}, Lu/aly/bb;->c(Z)V

    goto/16 :goto_1

    .line 416
    :cond_5
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 359
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$a;->b(Lu/aly/di;Lu/aly/bb;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 431
    invoke-virtual {p2}, Lu/aly/bb;->p()V

    .line 433
    invoke-static {}, Lu/aly/bb;->q()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 434
    iget-object v0, p2, Lu/aly/bb;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 435
    invoke-static {}, Lu/aly/bb;->r()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 437
    new-instance v0, Lu/aly/df;

    const/16 v1, 0xb

    iget-object v2, p2, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lu/aly/df;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/df;)V

    .line 438
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

    .line 440
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 441
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ba;

    invoke-virtual {v0, p1}, Lu/aly/ba;->b(Lu/aly/di;)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p1}, Lu/aly/di;->e()V

    .line 445
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 447
    :cond_1
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 448
    invoke-virtual {p2}, Lu/aly/bb;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    invoke-static {}, Lu/aly/bb;->s()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 451
    new-instance v0, Lu/aly/de;

    iget-object v1, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lu/aly/de;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/de;)V

    .line 452
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/az;

    .line 454
    invoke-virtual {v0, p1}, Lu/aly/az;->b(Lu/aly/di;)V

    goto :goto_1

    .line 456
    :cond_2
    invoke-virtual {p1}, Lu/aly/di;->f()V

    .line 458
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 461
    :cond_3
    iget-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 462
    invoke-virtual {p2}, Lu/aly/bb;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 463
    invoke-static {}, Lu/aly/bb;->t()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 464
    iget-object v0, p2, Lu/aly/bb;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 468
    :cond_4
    invoke-virtual {p1}, Lu/aly/di;->d()V

    .line 469
    invoke-virtual {p1}, Lu/aly/di;->b()V

    .line 470
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
    .line 359
    check-cast p2, Lu/aly/bb;

    invoke-virtual {p0, p1, p2}, Lu/aly/bb$a;->a(Lu/aly/di;Lu/aly/bb;)V

    return-void
.end method
