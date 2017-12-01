.class Lu/aly/bl$a;
.super Lu/aly/ds;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/bl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bl$1;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lu/aly/bl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 319
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 322
    :goto_0
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 323
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 360
    invoke-virtual {p2}, Lu/aly/bl;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 361
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iget-short v1, v0, Lu/aly/dd;->c:S

    packed-switch v1, :pswitch_data_0

    .line 353
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    .line 355
    :goto_1
    invoke-virtual {p1}, Lu/aly/di;->m()V

    goto :goto_0

    .line 328
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dd;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 329
    invoke-virtual {p1}, Lu/aly/di;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bl;->a:I

    .line 330
    invoke-virtual {p2, v3}, Lu/aly/bl;->a(Z)V

    goto :goto_1

    .line 332
    :cond_1
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 336
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dd;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 337
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bl;->b:Ljava/lang/String;

    .line 338
    invoke-virtual {p2, v3}, Lu/aly/bl;->b(Z)V

    goto :goto_1

    .line 340
    :cond_2
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 344
    :pswitch_2
    iget-byte v1, v0, Lu/aly/dd;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 345
    new-instance v0, Lu/aly/bc;

    invoke-direct {v0}, Lu/aly/bc;-><init>()V

    iput-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    .line 346
    iget-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->a(Lu/aly/di;)V

    .line 347
    invoke-virtual {p2, v3}, Lu/aly/bl;->c(Z)V

    goto :goto_1

    .line 349
    :cond_3
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 363
    :cond_4
    invoke-virtual {p2}, Lu/aly/bl;->m()V

    .line 364
    return-void

    .line 326
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
    .line 315
    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/bl$a;->b(Lu/aly/di;Lu/aly/bl;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p2}, Lu/aly/bl;->m()V

    .line 369
    invoke-static {}, Lu/aly/bl;->n()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 370
    invoke-static {}, Lu/aly/bl;->o()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 371
    iget v0, p2, Lu/aly/bl;->a:I

    invoke-virtual {p1, v0}, Lu/aly/di;->a(I)V

    .line 372
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 373
    iget-object v0, p2, Lu/aly/bl;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p2}, Lu/aly/bl;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lu/aly/bl;->p()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 376
    iget-object v0, p2, Lu/aly/bl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 380
    :cond_0
    iget-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p2}, Lu/aly/bl;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-static {}, Lu/aly/bl;->q()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 383
    iget-object v0, p2, Lu/aly/bl;->c:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->b(Lu/aly/di;)V

    .line 384
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 387
    :cond_1
    invoke-virtual {p1}, Lu/aly/di;->d()V

    .line 388
    invoke-virtual {p1}, Lu/aly/di;->b()V

    .line 389
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
    .line 315
    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/bl$a;->a(Lu/aly/di;Lu/aly/bl;)V

    return-void
.end method
