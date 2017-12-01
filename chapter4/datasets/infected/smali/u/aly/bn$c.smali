.class Lu/aly/bn$c;
.super Lu/aly/dt;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/bn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bn$1;)V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lu/aly/bn$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 712
    check-cast p1, Lu/aly/do;

    .line 713
    iget-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 714
    iget-wide v0, p2, Lu/aly/bn;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(J)V

    .line 715
    iget-wide v0, p2, Lu/aly/bn;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(J)V

    .line 716
    iget-wide v0, p2, Lu/aly/bn;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(J)V

    .line 717
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 718
    invoke-virtual {p2}, Lu/aly/bn;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 721
    :cond_0
    invoke-virtual {p2}, Lu/aly/bn;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 724
    :cond_1
    invoke-virtual {p2}, Lu/aly/bn;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 725
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 727
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(Ljava/util/BitSet;I)V

    .line 728
    invoke-virtual {p2}, Lu/aly/bn;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    iget-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 731
    iget-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bi;

    .line 733
    invoke-virtual {v0, p1}, Lu/aly/bi;->b(Lu/aly/di;)V

    goto :goto_0

    .line 737
    :cond_3
    invoke-virtual {p2}, Lu/aly/bn;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 739
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 740
    iget-object v0, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bg;

    .line 742
    invoke-virtual {v0, p1}, Lu/aly/bg;->b(Lu/aly/di;)V

    goto :goto_1

    .line 746
    :cond_4
    invoke-virtual {p2}, Lu/aly/bn;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 747
    iget-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0, p1}, Lu/aly/bo;->b(Lu/aly/di;)V

    .line 749
    :cond_5
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
    .line 708
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/bn$c;->a(Lu/aly/di;Lu/aly/bn;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bn;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 753
    check-cast p1, Lu/aly/do;

    .line 754
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bn;->a:Ljava/lang/String;

    .line 755
    invoke-virtual {p2, v6}, Lu/aly/bn;->a(Z)V

    .line 756
    invoke-virtual {p1}, Lu/aly/do;->x()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bn;->b:J

    .line 757
    invoke-virtual {p2, v6}, Lu/aly/bn;->b(Z)V

    .line 758
    invoke-virtual {p1}, Lu/aly/do;->x()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bn;->c:J

    .line 759
    invoke-virtual {p2, v6}, Lu/aly/bn;->c(Z)V

    .line 760
    invoke-virtual {p1}, Lu/aly/do;->x()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bn;->d:J

    .line 761
    invoke-virtual {p2, v6}, Lu/aly/bn;->d(Z)V

    .line 762
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lu/aly/do;->b(I)Ljava/util/BitSet;

    move-result-object v2

    .line 763
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    new-instance v3, Lu/aly/de;

    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lu/aly/de;-><init>(BI)V

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/de;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bn;->e:Ljava/util/List;

    move v0, v1

    .line 767
    :goto_0
    iget v4, v3, Lu/aly/de;->b:I

    if-ge v0, v4, :cond_0

    .line 770
    new-instance v4, Lu/aly/bi;

    invoke-direct {v4}, Lu/aly/bi;-><init>()V

    .line 771
    invoke-virtual {v4, p1}, Lu/aly/bi;->a(Lu/aly/di;)V

    .line 772
    iget-object v5, p2, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p2, v6}, Lu/aly/bn;->e(Z)V

    .line 777
    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    new-instance v0, Lu/aly/de;

    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v3

    invoke-direct {v0, v7, v3}, Lu/aly/de;-><init>(BI)V

    .line 780
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v0, Lu/aly/de;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/bn;->f:Ljava/util/List;

    .line 781
    :goto_1
    iget v3, v0, Lu/aly/de;->b:I

    if-ge v1, v3, :cond_2

    .line 784
    new-instance v3, Lu/aly/bg;

    invoke-direct {v3}, Lu/aly/bg;-><init>()V

    .line 785
    invoke-virtual {v3, p1}, Lu/aly/bg;->a(Lu/aly/di;)V

    .line 786
    iget-object v4, p2, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 789
    :cond_2
    invoke-virtual {p2, v6}, Lu/aly/bn;->f(Z)V

    .line 791
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 792
    new-instance v0, Lu/aly/bo;

    invoke-direct {v0}, Lu/aly/bo;-><init>()V

    iput-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    .line 793
    iget-object v0, p2, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0, p1}, Lu/aly/bo;->a(Lu/aly/di;)V

    .line 794
    invoke-virtual {p2, v6}, Lu/aly/bn;->g(Z)V

    .line 796
    :cond_4
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
    .line 708
    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/bn$c;->b(Lu/aly/di;Lu/aly/bn;)V

    return-void
.end method
