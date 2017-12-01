.class Lu/aly/ba$c;
.super Lu/aly/dt;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ba$1;)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lu/aly/ba$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/ba;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 395
    check-cast p1, Lu/aly/do;

    .line 396
    iget-object v0, p2, Lu/aly/ba;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 397
    iget-wide v0, p2, Lu/aly/ba;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(J)V

    .line 398
    iget v0, p2, Lu/aly/ba;->c:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 399
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
    .line 391
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/ba$c;->a(Lu/aly/di;Lu/aly/ba;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/ba;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 403
    check-cast p1, Lu/aly/do;

    .line 404
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ba;->a:Ljava/lang/String;

    .line 405
    invoke-virtual {p2, v2}, Lu/aly/ba;->a(Z)V

    .line 406
    invoke-virtual {p1}, Lu/aly/do;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ba;->b:J

    .line 407
    invoke-virtual {p2, v2}, Lu/aly/ba;->b(Z)V

    .line 408
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/ba;->c:I

    .line 409
    invoke-virtual {p2, v2}, Lu/aly/ba;->c(Z)V

    .line 410
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
    .line 391
    check-cast p2, Lu/aly/ba;

    invoke-virtual {p0, p1, p2}, Lu/aly/ba$c;->b(Lu/aly/di;Lu/aly/ba;)V

    return-void
.end method
