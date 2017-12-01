.class Lu/aly/bf$c;
.super Lu/aly/dt;
.source "Latent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/bf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bf$1;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lu/aly/bf$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 333
    check-cast p1, Lu/aly/do;

    .line 334
    iget v0, p2, Lu/aly/bf;->a:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 335
    iget-wide v0, p2, Lu/aly/bf;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(J)V

    .line 336
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
    .line 329
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bf$c;->a(Lu/aly/di;Lu/aly/bf;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 340
    check-cast p1, Lu/aly/do;

    .line 341
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bf;->a:I

    .line 342
    invoke-virtual {p2, v2}, Lu/aly/bf;->a(Z)V

    .line 343
    invoke-virtual {p1}, Lu/aly/do;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bf;->b:J

    .line 344
    invoke-virtual {p2, v2}, Lu/aly/bf;->b(Z)V

    .line 345
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
    .line 329
    check-cast p2, Lu/aly/bf;

    invoke-virtual {p0, p1, p2}, Lu/aly/bf$c;->b(Lu/aly/di;Lu/aly/bf;)V

    return-void
.end method
