.class Lu/aly/br$a;
.super Lu/aly/ds;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/br;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/br$1;)V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lu/aly/br$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/br;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 648
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 651
    :goto_0
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 652
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-nez v1, :cond_0

    .line 741
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 744
    invoke-virtual {p2}, Lu/aly/br;->o()Z

    move-result v0

    if-nez v0, :cond_b

    .line 745
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    iget-short v1, v0, Lu/aly/dd;->c:S

    packed-switch v1, :pswitch_data_0

    .line 737
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    .line 739
    :goto_1
    invoke-virtual {p1}, Lu/aly/di;->m()V

    goto :goto_0

    .line 657
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_1

    .line 658
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->a:Ljava/lang/String;

    .line 659
    invoke-virtual {p2, v2}, Lu/aly/br;->a(Z)V

    goto :goto_1

    .line 661
    :cond_1
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 665
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_2

    .line 666
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->b:Ljava/lang/String;

    .line 667
    invoke-virtual {p2, v2}, Lu/aly/br;->b(Z)V

    goto :goto_1

    .line 669
    :cond_2
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 673
    :pswitch_2
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_3

    .line 674
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->c:Ljava/lang/String;

    .line 675
    invoke-virtual {p2, v2}, Lu/aly/br;->c(Z)V

    goto :goto_1

    .line 677
    :cond_3
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 681
    :pswitch_3
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_4

    .line 682
    invoke-virtual {p1}, Lu/aly/di;->w()I

    move-result v0

    iput v0, p2, Lu/aly/br;->d:I

    .line 683
    invoke-virtual {p2, v2}, Lu/aly/br;->d(Z)V

    goto :goto_1

    .line 685
    :cond_4
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 689
    :pswitch_4
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_5

    .line 690
    invoke-virtual {p1}, Lu/aly/di;->w()I

    move-result v0

    iput v0, p2, Lu/aly/br;->e:I

    .line 691
    invoke-virtual {p2, v2}, Lu/aly/br;->e(Z)V

    goto :goto_1

    .line 693
    :cond_5
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 697
    :pswitch_5
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_6

    .line 698
    invoke-virtual {p1}, Lu/aly/di;->w()I

    move-result v0

    iput v0, p2, Lu/aly/br;->f:I

    .line 699
    invoke-virtual {p2, v2}, Lu/aly/br;->f(Z)V

    goto :goto_1

    .line 701
    :cond_6
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 705
    :pswitch_6
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_7

    .line 706
    invoke-virtual {p1}, Lu/aly/di;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    .line 707
    invoke-virtual {p2, v2}, Lu/aly/br;->g(Z)V

    goto/16 :goto_1

    .line 709
    :cond_7
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 713
    :pswitch_7
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_8

    .line 714
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->h:Ljava/lang/String;

    .line 715
    invoke-virtual {p2, v2}, Lu/aly/br;->h(Z)V

    goto/16 :goto_1

    .line 717
    :cond_8
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 721
    :pswitch_8
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v3, :cond_9

    .line 722
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/br;->i:Ljava/lang/String;

    .line 723
    invoke-virtual {p2, v2}, Lu/aly/br;->i(Z)V

    goto/16 :goto_1

    .line 725
    :cond_9
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 729
    :pswitch_9
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_a

    .line 730
    invoke-virtual {p1}, Lu/aly/di;->w()I

    move-result v0

    iput v0, p2, Lu/aly/br;->j:I

    .line 731
    invoke-virtual {p2, v2}, Lu/aly/br;->j(Z)V

    goto/16 :goto_1

    .line 733
    :cond_a
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 747
    :cond_b
    invoke-virtual {p2}, Lu/aly/br;->r()Z

    move-result v0

    if-nez v0, :cond_c

    .line 748
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_c
    invoke-virtual {p2}, Lu/aly/br;->u()Z

    move-result v0

    if-nez v0, :cond_d

    .line 751
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_d
    invoke-virtual {p2}, Lu/aly/br;->I()V

    .line 754
    return-void

    .line 655
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
    .line 644
    check-cast p2, Lu/aly/br;

    invoke-virtual {p0, p1, p2}, Lu/aly/br$a;->b(Lu/aly/di;Lu/aly/br;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/br;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p2}, Lu/aly/br;->I()V

    .line 759
    invoke-static {}, Lu/aly/br;->J()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 760
    iget-object v0, p2, Lu/aly/br;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 761
    invoke-static {}, Lu/aly/br;->K()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 762
    iget-object v0, p2, Lu/aly/br;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 765
    :cond_0
    iget-object v0, p2, Lu/aly/br;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 766
    invoke-static {}, Lu/aly/br;->L()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 767
    iget-object v0, p2, Lu/aly/br;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 770
    :cond_1
    iget-object v0, p2, Lu/aly/br;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 771
    invoke-static {}, Lu/aly/br;->M()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 772
    iget-object v0, p2, Lu/aly/br;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 775
    :cond_2
    invoke-static {}, Lu/aly/br;->N()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 776
    iget v0, p2, Lu/aly/br;->d:I

    invoke-virtual {p1, v0}, Lu/aly/di;->a(I)V

    .line 777
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 778
    invoke-static {}, Lu/aly/br;->O()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 779
    iget v0, p2, Lu/aly/br;->e:I

    invoke-virtual {p1, v0}, Lu/aly/di;->a(I)V

    .line 780
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 781
    invoke-static {}, Lu/aly/br;->P()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 782
    iget v0, p2, Lu/aly/br;->f:I

    invoke-virtual {p1, v0}, Lu/aly/di;->a(I)V

    .line 783
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 784
    iget-object v0, p2, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 785
    invoke-static {}, Lu/aly/br;->Q()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 786
    iget-object v0, p2, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/nio/ByteBuffer;)V

    .line 787
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 789
    :cond_3
    iget-object v0, p2, Lu/aly/br;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 790
    invoke-static {}, Lu/aly/br;->R()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 791
    iget-object v0, p2, Lu/aly/br;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 794
    :cond_4
    iget-object v0, p2, Lu/aly/br;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 795
    invoke-static {}, Lu/aly/br;->S()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 796
    iget-object v0, p2, Lu/aly/br;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 799
    :cond_5
    invoke-virtual {p2}, Lu/aly/br;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 800
    invoke-static {}, Lu/aly/br;->T()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 801
    iget v0, p2, Lu/aly/br;->j:I

    invoke-virtual {p1, v0}, Lu/aly/di;->a(I)V

    .line 802
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 804
    :cond_6
    invoke-virtual {p1}, Lu/aly/di;->d()V

    .line 805
    invoke-virtual {p1}, Lu/aly/di;->b()V

    .line 806
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
    .line 644
    check-cast p2, Lu/aly/br;

    invoke-virtual {p0, p1, p2}, Lu/aly/br$a;->a(Lu/aly/di;Lu/aly/br;)V

    return-void
.end method
