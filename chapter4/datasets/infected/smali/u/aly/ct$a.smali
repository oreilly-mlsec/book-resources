.class Lu/aly/ct$a;
.super Lu/aly/ds;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/ct;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ct$1;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/ct$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lu/aly/di;Lu/aly/cj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 216
    check-cast p2, Lu/aly/ct;

    invoke-virtual {p0, p1, p2}, Lu/aly/ct$a;->b(Lu/aly/di;Lu/aly/ct;)V

    return-void
.end method

.method public a(Lu/aly/di;Lu/aly/ct;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object v0, p2, Lu/aly/ct;->c:Lu/aly/cq;

    .line 221
    iput-object v0, p2, Lu/aly/ct;->b:Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 225
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 227
    invoke-virtual {p2, p1, v0}, Lu/aly/ct;->a(Lu/aly/di;Lu/aly/dd;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ct;->b:Ljava/lang/Object;

    .line 228
    iget-object v1, p2, Lu/aly/ct;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 229
    iget-short v0, v0, Lu/aly/dd;->c:S

    invoke-virtual {p2, v0}, Lu/aly/ct;->b(S)Lu/aly/cq;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ct;->c:Lu/aly/cq;

    .line 232
    :cond_0
    invoke-virtual {p1}, Lu/aly/di;->m()V

    .line 236
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    .line 237
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 238
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
    .line 216
    check-cast p2, Lu/aly/ct;

    invoke-virtual {p0, p1, p2}, Lu/aly/ct$a;->a(Lu/aly/di;Lu/aly/ct;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/ct;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p2}, Lu/aly/ct;->i()Lu/aly/cq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lu/aly/ct;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    new-instance v0, Lu/aly/dj;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    invoke-virtual {p2}, Lu/aly/ct;->c()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 246
    iget-object v0, p2, Lu/aly/ct;->c:Lu/aly/cq;

    invoke-virtual {p2, v0}, Lu/aly/ct;->a(Lu/aly/cq;)Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 247
    invoke-virtual {p2, p1}, Lu/aly/ct;->c(Lu/aly/di;)V

    .line 248
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 249
    invoke-virtual {p1}, Lu/aly/di;->d()V

    .line 250
    invoke-virtual {p1}, Lu/aly/di;->b()V

    .line 251
    return-void
.end method
