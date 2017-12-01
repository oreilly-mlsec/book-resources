.class Lu/aly/bg$c;
.super Lu/aly/dt;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/bg;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bg$1;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lu/aly/bg$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 390
    check-cast p1, Lu/aly/do;

    .line 391
    iget-wide v0, p2, Lu/aly/bg;->a:D

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(D)V

    .line 392
    iget-wide v0, p2, Lu/aly/bg;->b:D

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(D)V

    .line 393
    iget-wide v0, p2, Lu/aly/bg;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(J)V

    .line 394
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
    .line 386
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/bg$c;->a(Lu/aly/di;Lu/aly/bg;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 398
    check-cast p1, Lu/aly/do;

    .line 399
    invoke-virtual {p1}, Lu/aly/do;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bg;->a:D

    .line 400
    invoke-virtual {p2, v2}, Lu/aly/bg;->a(Z)V

    .line 401
    invoke-virtual {p1}, Lu/aly/do;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bg;->b:D

    .line 402
    invoke-virtual {p2, v2}, Lu/aly/bg;->b(Z)V

    .line 403
    invoke-virtual {p1}, Lu/aly/do;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bg;->c:J

    .line 404
    invoke-virtual {p2, v2}, Lu/aly/bg;->c(Z)V

    .line 405
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
    .line 386
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/bg$c;->b(Lu/aly/di;Lu/aly/bg;)V

    return-void
.end method
