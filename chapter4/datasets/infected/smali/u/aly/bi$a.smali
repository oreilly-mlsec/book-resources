.class Lu/aly/bi$a;
.super Lu/aly/ds;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/bi;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bi$1;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lu/aly/bi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bi;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 273
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 276
    :goto_0
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 277
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 305
    invoke-virtual {p2}, Lu/aly/bi;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

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

    .line 280
    :cond_0
    iget-short v1, v0, Lu/aly/dd;->c:S

    packed-switch v1, :pswitch_data_0

    .line 298
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    .line 300
    :goto_1
    invoke-virtual {p1}, Lu/aly/di;->m()V

    goto :goto_0

    .line 282
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dd;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 283
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bi;->a:Ljava/lang/String;

    .line 284
    invoke-virtual {p2, v3}, Lu/aly/bi;->a(Z)V

    goto :goto_1

    .line 286
    :cond_1
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 290
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dd;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 291
    invoke-virtual {p1}, Lu/aly/di;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bi;->b:J

    .line 292
    invoke-virtual {p2, v3}, Lu/aly/bi;->b(Z)V

    goto :goto_1

    .line 294
    :cond_2
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {p2}, Lu/aly/bi;->j()V

    .line 309
    return-void

    .line 280
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
    .line 269
    check-cast p2, Lu/aly/bi;

    invoke-virtual {p0, p1, p2}, Lu/aly/bi$a;->b(Lu/aly/di;Lu/aly/bi;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p2}, Lu/aly/bi;->j()V

    .line 314
    invoke-static {}, Lu/aly/bi;->k()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 315
    iget-object v0, p2, Lu/aly/bi;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lu/aly/bi;->l()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 317
    iget-object v0, p2, Lu/aly/bi;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 320
    :cond_0
    invoke-static {}, Lu/aly/bi;->m()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 321
    iget-wide v0, p2, Lu/aly/bi;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/di;->a(J)V

    .line 322
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 323
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
    .line 269
    check-cast p2, Lu/aly/bi;

    invoke-virtual {p0, p1, p2}, Lu/aly/bi$a;->a(Lu/aly/di;Lu/aly/bi;)V

    return-void
.end method
