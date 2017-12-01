.class Lu/aly/bo$c;
.super Lu/aly/dt;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/bo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bo$1;)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lu/aly/bo$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 334
    check-cast p1, Lu/aly/do;

    .line 335
    iget v0, p2, Lu/aly/bo;->a:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 336
    iget v0, p2, Lu/aly/bo;->b:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 337
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
    .line 330
    check-cast p2, Lu/aly/bo;

    invoke-virtual {p0, p1, p2}, Lu/aly/bo$c;->a(Lu/aly/di;Lu/aly/bo;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 341
    check-cast p1, Lu/aly/do;

    .line 342
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bo;->a:I

    .line 343
    invoke-virtual {p2, v1}, Lu/aly/bo;->a(Z)V

    .line 344
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bo;->b:I

    .line 345
    invoke-virtual {p2, v1}, Lu/aly/bo;->b(Z)V

    .line 346
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
    .line 330
    check-cast p2, Lu/aly/bo;

    invoke-virtual {p0, p1, p2}, Lu/aly/bo$c;->b(Lu/aly/di;Lu/aly/bo;)V

    return-void
.end method
