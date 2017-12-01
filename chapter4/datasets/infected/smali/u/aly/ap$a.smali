.class Lu/aly/ap$a;
.super Lu/aly/ds;
.source "ActiveUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/ap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ap$1;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lu/aly/ap$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/ap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 274
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 277
    :goto_0
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 278
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 306
    invoke-virtual {p2}, Lu/aly/ap;->j()V

    .line 307
    return-void

    .line 281
    :cond_0
    iget-short v1, v0, Lu/aly/dd;->c:S

    packed-switch v1, :pswitch_data_0

    .line 299
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    .line 301
    :goto_1
    invoke-virtual {p1}, Lu/aly/di;->m()V

    goto :goto_0

    .line 283
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_1

    .line 284
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ap;->a:Ljava/lang/String;

    .line 285
    invoke-virtual {p2, v2}, Lu/aly/ap;->a(Z)V

    goto :goto_1

    .line 287
    :cond_1
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 291
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_2

    .line 292
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ap;->b:Ljava/lang/String;

    .line 293
    invoke-virtual {p2, v2}, Lu/aly/ap;->b(Z)V

    goto :goto_1

    .line 295
    :cond_2
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 270
    check-cast p2, Lu/aly/ap;

    invoke-virtual {p0, p1, p2}, Lu/aly/ap$a;->b(Lu/aly/di;Lu/aly/ap;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/ap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p2}, Lu/aly/ap;->j()V

    .line 312
    invoke-static {}, Lu/aly/ap;->k()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 313
    iget-object v0, p2, Lu/aly/ap;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Lu/aly/ap;->l()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 315
    iget-object v0, p2, Lu/aly/ap;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 318
    :cond_0
    iget-object v0, p2, Lu/aly/ap;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 319
    invoke-static {}, Lu/aly/ap;->m()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 320
    iget-object v0, p2, Lu/aly/ap;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 323
    :cond_1
    invoke-virtual {p1}, Lu/aly/di;->d()V

    .line 324
    invoke-virtual {p1}, Lu/aly/di;->b()V

    .line 325
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
    .line 270
    check-cast p2, Lu/aly/ap;

    invoke-virtual {p0, p1, p2}, Lu/aly/ap$a;->a(Lu/aly/di;Lu/aly/ap;)V

    return-void
.end method
