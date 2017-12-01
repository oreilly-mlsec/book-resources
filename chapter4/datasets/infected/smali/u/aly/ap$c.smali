.class Lu/aly/ap$c;
.super Lu/aly/dt;
.source "ActiveUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/ap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ap$1;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lu/aly/ap$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/ap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 339
    check-cast p1, Lu/aly/do;

    .line 340
    iget-object v0, p2, Lu/aly/ap;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 341
    iget-object v0, p2, Lu/aly/ap;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 342
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
    .line 335
    check-cast p2, Lu/aly/ap;

    invoke-virtual {p0, p1, p2}, Lu/aly/ap$c;->a(Lu/aly/di;Lu/aly/ap;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/ap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 346
    check-cast p1, Lu/aly/do;

    .line 347
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ap;->a:Ljava/lang/String;

    .line 348
    invoke-virtual {p2, v1}, Lu/aly/ap;->a(Z)V

    .line 349
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ap;->b:Ljava/lang/String;

    .line 350
    invoke-virtual {p2, v1}, Lu/aly/ap;->b(Z)V

    .line 351
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
    .line 335
    check-cast p2, Lu/aly/ap;

    invoke-virtual {p0, p1, p2}, Lu/aly/ap$c;->b(Lu/aly/di;Lu/aly/ap;)V

    return-void
.end method
