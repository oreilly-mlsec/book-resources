.class Lu/aly/bd$c;
.super Lu/aly/dt;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/bd;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bd$1;)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lu/aly/bd$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 400
    check-cast p1, Lu/aly/do;

    .line 401
    iget-wide v0, p2, Lu/aly/bd;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(J)V

    .line 402
    iget-object v0, p2, Lu/aly/bd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 404
    invoke-virtual {p2}, Lu/aly/bd;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 407
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(Ljava/util/BitSet;I)V

    .line 408
    invoke-virtual {p2}, Lu/aly/bd;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p2, Lu/aly/bd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 411
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
    .line 396
    check-cast p2, Lu/aly/bd;

    invoke-virtual {p0, p1, p2}, Lu/aly/bd$c;->a(Lu/aly/di;Lu/aly/bd;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 415
    check-cast p1, Lu/aly/do;

    .line 416
    invoke-virtual {p1}, Lu/aly/do;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bd;->b:J

    .line 417
    invoke-virtual {p2, v2}, Lu/aly/bd;->b(Z)V

    .line 418
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bd;->c:Ljava/lang/String;

    .line 419
    invoke-virtual {p2, v2}, Lu/aly/bd;->c(Z)V

    .line 420
    invoke-virtual {p1, v2}, Lu/aly/do;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 421
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bd;->a:Ljava/lang/String;

    .line 423
    invoke-virtual {p2, v2}, Lu/aly/bd;->a(Z)V

    .line 425
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
    .line 396
    check-cast p2, Lu/aly/bd;

    invoke-virtual {p0, p1, p2}, Lu/aly/bd$c;->b(Lu/aly/di;Lu/aly/bd;)V

    return-void
.end method
