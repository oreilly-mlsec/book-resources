.class Lu/aly/as$a;
.super Lu/aly/ds;
.source "ControlPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/as;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/as$1;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lu/aly/as$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/as;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 225
    :goto_0
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 226
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-nez v1, :cond_0

    .line 244
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 247
    invoke-virtual {p2}, Lu/aly/as;->f()V

    .line 248
    return-void

    .line 229
    :cond_0
    iget-short v1, v0, Lu/aly/dd;->c:S

    packed-switch v1, :pswitch_data_0

    .line 240
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    .line 242
    :goto_1
    invoke-virtual {p1}, Lu/aly/di;->m()V

    goto :goto_0

    .line 231
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dd;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 232
    new-instance v0, Lu/aly/bf;

    invoke-direct {v0}, Lu/aly/bf;-><init>()V

    iput-object v0, p2, Lu/aly/as;->a:Lu/aly/bf;

    .line 233
    iget-object v0, p2, Lu/aly/as;->a:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->a(Lu/aly/di;)V

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lu/aly/as;->a(Z)V

    goto :goto_1

    .line 236
    :cond_1
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 218
    check-cast p2, Lu/aly/as;

    invoke-virtual {p0, p1, p2}, Lu/aly/as$a;->b(Lu/aly/di;Lu/aly/as;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/as;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p2}, Lu/aly/as;->f()V

    .line 253
    invoke-static {}, Lu/aly/as;->h()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 254
    iget-object v0, p2, Lu/aly/as;->a:Lu/aly/bf;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p2}, Lu/aly/as;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lu/aly/as;->i()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 257
    iget-object v0, p2, Lu/aly/as;->a:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->b(Lu/aly/di;)V

    .line 258
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 261
    :cond_0
    invoke-virtual {p1}, Lu/aly/di;->d()V

    .line 262
    invoke-virtual {p1}, Lu/aly/di;->b()V

    .line 263
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
    .line 218
    check-cast p2, Lu/aly/as;

    invoke-virtual {p0, p1, p2}, Lu/aly/as$a;->a(Lu/aly/di;Lu/aly/as;)V

    return-void
.end method
