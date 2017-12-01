.class Lu/aly/br$c;
.super Lu/aly/dt;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/br;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/br$1;)V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Lu/aly/br$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 820
    check-cast p1, Lu/aly/do;

    .line 821
    iget-object v0, p2, Lu/aly/br;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 822
    iget-object v0, p2, Lu/aly/br;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 823
    iget-object v0, p2, Lu/aly/br;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 824
    iget v0, p2, Lu/aly/br;->d:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 825
    iget v0, p2, Lu/aly/br;->e:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 826
    iget v0, p2, Lu/aly/br;->f:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 827
    iget-object v0, p2, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/nio/ByteBuffer;)V

    .line 828
    iget-object v0, p2, Lu/aly/br;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 829
    iget-object v0, p2, Lu/aly/br;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 831
    invoke-virtual {p2}, Lu/aly/br;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 834
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(Ljava/util/BitSet;I)V

    .line 835
    invoke-virtual {p2}, Lu/aly/br;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    iget v0, p2, Lu/aly/br;->j:I

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 838
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
    .line 816
    check-cast p2, Lu/aly/br;

    invoke-virtual {p0, p1, p2}, Lu/aly/br$c;->a(Lu/aly/di;Lu/aly/br;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/br;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 842
    check-cast p1, Lu/aly/do;

    .line 843
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->a:Ljava/lang/String;

    .line 844
    invoke-virtual {p2, v2}, Lu/aly/br;->a(Z)V

    .line 845
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->b:Ljava/lang/String;

    .line 846
    invoke-virtual {p2, v2}, Lu/aly/br;->b(Z)V

    .line 847
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->c:Ljava/lang/String;

    .line 848
    invoke-virtual {p2, v2}, Lu/aly/br;->c(Z)V

    .line 849
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/br;->d:I

    .line 850
    invoke-virtual {p2, v2}, Lu/aly/br;->d(Z)V

    .line 851
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/br;->e:I

    .line 852
    invoke-virtual {p2, v2}, Lu/aly/br;->e(Z)V

    .line 853
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/br;->f:I

    .line 854
    invoke-virtual {p2, v2}, Lu/aly/br;->f(Z)V

    .line 855
    invoke-virtual {p1}, Lu/aly/do;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    .line 856
    invoke-virtual {p2, v2}, Lu/aly/br;->g(Z)V

    .line 857
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->h:Ljava/lang/String;

    .line 858
    invoke-virtual {p2, v2}, Lu/aly/br;->h(Z)V

    .line 859
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->i:Ljava/lang/String;

    .line 860
    invoke-virtual {p2, v2}, Lu/aly/br;->i(Z)V

    .line 861
    invoke-virtual {p1, v2}, Lu/aly/do;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 862
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    iput v0, p2, Lu/aly/br;->j:I

    .line 864
    invoke-virtual {p2, v2}, Lu/aly/br;->j(Z)V

    .line 866
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
    .line 816
    check-cast p2, Lu/aly/br;

    invoke-virtual {p0, p1, p2}, Lu/aly/br$c;->b(Lu/aly/di;Lu/aly/br;)V

    return-void
.end method
