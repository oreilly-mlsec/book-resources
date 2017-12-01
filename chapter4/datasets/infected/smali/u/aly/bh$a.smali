.class Lu/aly/bh$a;
.super Lu/aly/ds;
.source "MiscInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/bh;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bh$1;)V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lu/aly/bh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bh;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 624
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 627
    :goto_0
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 628
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-nez v1, :cond_0

    .line 717
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 720
    invoke-virtual {p2}, Lu/aly/bh;->H()V

    .line 721
    return-void

    .line 631
    :cond_0
    iget-short v1, v0, Lu/aly/dd;->c:S

    packed-switch v1, :pswitch_data_0

    .line 713
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    .line 715
    :goto_1
    invoke-virtual {p1}, Lu/aly/di;->m()V

    goto :goto_0

    .line 633
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_1

    .line 634
    invoke-virtual {p1}, Lu/aly/di;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->a:I

    .line 635
    invoke-virtual {p2, v2}, Lu/aly/bh;->a(Z)V

    goto :goto_1

    .line 637
    :cond_1
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 641
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_2

    .line 642
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    .line 643
    invoke-virtual {p2, v2}, Lu/aly/bh;->b(Z)V

    goto :goto_1

    .line 645
    :cond_2
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 649
    :pswitch_2
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_3

    .line 650
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    .line 651
    invoke-virtual {p2, v2}, Lu/aly/bh;->c(Z)V

    goto :goto_1

    .line 653
    :cond_3
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 657
    :pswitch_3
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v5, :cond_4

    .line 658
    invoke-virtual {p1}, Lu/aly/di;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bh;->d:D

    .line 659
    invoke-virtual {p2, v2}, Lu/aly/bh;->d(Z)V

    goto :goto_1

    .line 661
    :cond_4
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 665
    :pswitch_4
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v5, :cond_5

    .line 666
    invoke-virtual {p1}, Lu/aly/di;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bh;->e:D

    .line 667
    invoke-virtual {p2, v2}, Lu/aly/bh;->e(Z)V

    goto :goto_1

    .line 669
    :cond_5
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 673
    :pswitch_5
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_6

    .line 674
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->f:Ljava/lang/String;

    .line 675
    invoke-virtual {p2, v2}, Lu/aly/bh;->f(Z)V

    goto :goto_1

    .line 677
    :cond_6
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 681
    :pswitch_6
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_7

    .line 682
    invoke-virtual {p1}, Lu/aly/di;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->g:I

    .line 683
    invoke-virtual {p2, v2}, Lu/aly/bh;->g(Z)V

    goto/16 :goto_1

    .line 685
    :cond_7
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 689
    :pswitch_7
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_8

    .line 690
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    .line 691
    invoke-virtual {p2, v2}, Lu/aly/bh;->h(Z)V

    goto/16 :goto_1

    .line 693
    :cond_8
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 697
    :pswitch_8
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_9

    .line 698
    invoke-virtual {p1}, Lu/aly/di;->w()I

    move-result v0

    invoke-static {v0}, Lu/aly/an;->a(I)Lu/aly/an;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->i:Lu/aly/an;

    .line 699
    invoke-virtual {p2, v2}, Lu/aly/bh;->i(Z)V

    goto/16 :goto_1

    .line 701
    :cond_9
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 705
    :pswitch_9
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_a

    .line 706
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->j:Ljava/lang/String;

    .line 707
    invoke-virtual {p2, v2}, Lu/aly/bh;->j(Z)V

    goto/16 :goto_1

    .line 709
    :cond_a
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
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
    .line 620
    check-cast p2, Lu/aly/bh;

    invoke-virtual {p0, p1, p2}, Lu/aly/bh$a;->b(Lu/aly/di;Lu/aly/bh;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 724
    invoke-virtual {p2}, Lu/aly/bh;->H()V

    .line 726
    invoke-static {}, Lu/aly/bh;->I()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 727
    invoke-virtual {p2}, Lu/aly/bh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-static {}, Lu/aly/bh;->J()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 729
    iget v0, p2, Lu/aly/bh;->a:I

    invoke-virtual {p1, v0}, Lu/aly/di;->a(I)V

    .line 730
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 732
    :cond_0
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {p2}, Lu/aly/bh;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    invoke-static {}, Lu/aly/bh;->K()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 735
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 739
    :cond_1
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 740
    invoke-virtual {p2}, Lu/aly/bh;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    invoke-static {}, Lu/aly/bh;->L()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 742
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 746
    :cond_2
    invoke-virtual {p2}, Lu/aly/bh;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    invoke-static {}, Lu/aly/bh;->M()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 748
    iget-wide v0, p2, Lu/aly/bh;->d:D

    invoke-virtual {p1, v0, v1}, Lu/aly/di;->a(D)V

    .line 749
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 751
    :cond_3
    invoke-virtual {p2}, Lu/aly/bh;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    invoke-static {}, Lu/aly/bh;->N()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 753
    iget-wide v0, p2, Lu/aly/bh;->e:D

    invoke-virtual {p1, v0, v1}, Lu/aly/di;->a(D)V

    .line 754
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 756
    :cond_4
    iget-object v0, p2, Lu/aly/bh;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 757
    invoke-virtual {p2}, Lu/aly/bh;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 758
    invoke-static {}, Lu/aly/bh;->O()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 759
    iget-object v0, p2, Lu/aly/bh;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 763
    :cond_5
    invoke-virtual {p2}, Lu/aly/bh;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 764
    invoke-static {}, Lu/aly/bh;->P()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 765
    iget v0, p2, Lu/aly/bh;->g:I

    invoke-virtual {p1, v0}, Lu/aly/di;->a(I)V

    .line 766
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 768
    :cond_6
    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 769
    invoke-virtual {p2}, Lu/aly/bh;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 770
    invoke-static {}, Lu/aly/bh;->Q()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 771
    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 775
    :cond_7
    iget-object v0, p2, Lu/aly/bh;->i:Lu/aly/an;

    if-eqz v0, :cond_8

    .line 776
    invoke-virtual {p2}, Lu/aly/bh;->D()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 777
    invoke-static {}, Lu/aly/bh;->R()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 778
    iget-object v0, p2, Lu/aly/bh;->i:Lu/aly/an;

    invoke-virtual {v0}, Lu/aly/an;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(I)V

    .line 779
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 782
    :cond_8
    iget-object v0, p2, Lu/aly/bh;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 783
    invoke-virtual {p2}, Lu/aly/bh;->G()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 784
    invoke-static {}, Lu/aly/bh;->S()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 785
    iget-object v0, p2, Lu/aly/bh;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 789
    :cond_9
    invoke-virtual {p1}, Lu/aly/di;->d()V

    .line 790
    invoke-virtual {p1}, Lu/aly/di;->b()V

    .line 791
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
    .line 620
    check-cast p2, Lu/aly/bh;

    invoke-virtual {p0, p1, p2}, Lu/aly/bh$a;->a(Lu/aly/di;Lu/aly/bh;)V

    return-void
.end method
