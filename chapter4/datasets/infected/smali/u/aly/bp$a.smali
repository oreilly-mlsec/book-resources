.class Lu/aly/bp$a;
.super Lu/aly/ds;
.source "UALogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/bp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bp$1;)V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Lu/aly/bp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bp;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/16 v8, 0xf

    const/4 v1, 0x0

    const/16 v7, 0xc

    const/4 v6, 0x1

    .line 823
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 826
    :goto_0
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 827
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-nez v2, :cond_0

    .line 975
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 978
    invoke-virtual {p2}, Lu/aly/bp;->S()V

    .line 979
    return-void

    .line 830
    :cond_0
    iget-short v2, v0, Lu/aly/dd;->c:S

    packed-switch v2, :pswitch_data_0

    .line 971
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    .line 973
    :goto_1
    invoke-virtual {p1}, Lu/aly/di;->m()V

    goto :goto_0

    .line 832
    :pswitch_0
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v7, :cond_1

    .line 833
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0}, Lu/aly/ar;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->a:Lu/aly/ar;

    .line 834
    iget-object v0, p2, Lu/aly/bp;->a:Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->a(Lu/aly/di;)V

    .line 835
    invoke-virtual {p2, v6}, Lu/aly/bp;->a(Z)V

    goto :goto_1

    .line 837
    :cond_1
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 841
    :pswitch_1
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v7, :cond_2

    .line 842
    new-instance v0, Lu/aly/aq;

    invoke-direct {v0}, Lu/aly/aq;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->b:Lu/aly/aq;

    .line 843
    iget-object v0, p2, Lu/aly/bp;->b:Lu/aly/aq;

    invoke-virtual {v0, p1}, Lu/aly/aq;->a(Lu/aly/di;)V

    .line 844
    invoke-virtual {p2, v6}, Lu/aly/bp;->b(Z)V

    goto :goto_1

    .line 846
    :cond_2
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 850
    :pswitch_2
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v7, :cond_3

    .line 851
    new-instance v0, Lu/aly/at;

    invoke-direct {v0}, Lu/aly/at;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->c:Lu/aly/at;

    .line 852
    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->a(Lu/aly/di;)V

    .line 853
    invoke-virtual {p2, v6}, Lu/aly/bp;->c(Z)V

    goto :goto_1

    .line 855
    :cond_3
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 859
    :pswitch_3
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v7, :cond_4

    .line 860
    new-instance v0, Lu/aly/bh;

    invoke-direct {v0}, Lu/aly/bh;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->d:Lu/aly/bh;

    .line 861
    iget-object v0, p2, Lu/aly/bp;->d:Lu/aly/bh;

    invoke-virtual {v0, p1}, Lu/aly/bh;->a(Lu/aly/di;)V

    .line 862
    invoke-virtual {p2, v6}, Lu/aly/bp;->d(Z)V

    goto :goto_1

    .line 864
    :cond_4
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 868
    :pswitch_4
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v7, :cond_5

    .line 869
    new-instance v0, Lu/aly/ao;

    invoke-direct {v0}, Lu/aly/ao;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->e:Lu/aly/ao;

    .line 870
    iget-object v0, p2, Lu/aly/bp;->e:Lu/aly/ao;

    invoke-virtual {v0, p1}, Lu/aly/ao;->a(Lu/aly/di;)V

    .line 871
    invoke-virtual {p2, v6}, Lu/aly/bp;->e(Z)V

    goto :goto_1

    .line 873
    :cond_5
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 877
    :pswitch_5
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v8, :cond_7

    .line 879
    invoke-virtual {p1}, Lu/aly/di;->p()Lu/aly/de;

    move-result-object v2

    .line 880
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/de;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bp;->f:Ljava/util/List;

    move v0, v1

    .line 881
    :goto_2
    iget v3, v2, Lu/aly/de;->b:I

    if-ge v0, v3, :cond_6

    .line 884
    new-instance v3, Lu/aly/be;

    invoke-direct {v3}, Lu/aly/be;-><init>()V

    .line 885
    invoke-virtual {v3, p1}, Lu/aly/be;->a(Lu/aly/di;)V

    .line 886
    iget-object v4, p2, Lu/aly/bp;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 888
    :cond_6
    invoke-virtual {p1}, Lu/aly/di;->q()V

    .line 890
    invoke-virtual {p2, v6}, Lu/aly/bp;->f(Z)V

    goto/16 :goto_1

    .line 892
    :cond_7
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 896
    :pswitch_6
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v8, :cond_9

    .line 898
    invoke-virtual {p1}, Lu/aly/di;->p()Lu/aly/de;

    move-result-object v2

    .line 899
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/de;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bp;->g:Ljava/util/List;

    move v0, v1

    .line 900
    :goto_3
    iget v3, v2, Lu/aly/de;->b:I

    if-ge v0, v3, :cond_8

    .line 903
    new-instance v3, Lu/aly/bn;

    invoke-direct {v3}, Lu/aly/bn;-><init>()V

    .line 904
    invoke-virtual {v3, p1}, Lu/aly/bn;->a(Lu/aly/di;)V

    .line 905
    iget-object v4, p2, Lu/aly/bp;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 907
    :cond_8
    invoke-virtual {p1}, Lu/aly/di;->q()V

    .line 909
    invoke-virtual {p2, v6}, Lu/aly/bp;->g(Z)V

    goto/16 :goto_1

    .line 911
    :cond_9
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 915
    :pswitch_7
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v7, :cond_a

    .line 916
    new-instance v0, Lu/aly/bc;

    invoke-direct {v0}, Lu/aly/bc;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->h:Lu/aly/bc;

    .line 917
    iget-object v0, p2, Lu/aly/bp;->h:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->a(Lu/aly/di;)V

    .line 918
    invoke-virtual {p2, v6}, Lu/aly/bp;->h(Z)V

    goto/16 :goto_1

    .line 920
    :cond_a
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 924
    :pswitch_8
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v7, :cond_b

    .line 925
    new-instance v0, Lu/aly/bb;

    invoke-direct {v0}, Lu/aly/bb;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->i:Lu/aly/bb;

    .line 926
    iget-object v0, p2, Lu/aly/bp;->i:Lu/aly/bb;

    invoke-virtual {v0, p1}, Lu/aly/bb;->a(Lu/aly/di;)V

    .line 927
    invoke-virtual {p2, v6}, Lu/aly/bp;->i(Z)V

    goto/16 :goto_1

    .line 929
    :cond_b
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 933
    :pswitch_9
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v7, :cond_c

    .line 934
    new-instance v0, Lu/aly/ap;

    invoke-direct {v0}, Lu/aly/ap;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->j:Lu/aly/ap;

    .line 935
    iget-object v0, p2, Lu/aly/bp;->j:Lu/aly/ap;

    invoke-virtual {v0, p1}, Lu/aly/ap;->a(Lu/aly/di;)V

    .line 936
    invoke-virtual {p2, v6}, Lu/aly/bp;->j(Z)V

    goto/16 :goto_1

    .line 938
    :cond_c
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 942
    :pswitch_a
    iget-byte v2, v0, Lu/aly/dd;->b:B

    if-ne v2, v7, :cond_d

    .line 943
    new-instance v0, Lu/aly/as;

    invoke-direct {v0}, Lu/aly/as;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->k:Lu/aly/as;

    .line 944
    iget-object v0, p2, Lu/aly/bp;->k:Lu/aly/as;

    invoke-virtual {v0, p1}, Lu/aly/as;->a(Lu/aly/di;)V

    .line 945
    invoke-virtual {p2, v6}, Lu/aly/bp;->k(Z)V

    goto/16 :goto_1

    .line 947
    :cond_d
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 951
    :pswitch_b
    iget-byte v2, v0, Lu/aly/dd;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_f

    .line 953
    invoke-virtual {p1}, Lu/aly/di;->n()Lu/aly/df;

    move-result-object v2

    .line 954
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/df;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bp;->l:Ljava/util/Map;

    move v0, v1

    .line 955
    :goto_4
    iget v3, v2, Lu/aly/df;->c:I

    if-ge v0, v3, :cond_e

    .line 959
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v3

    .line 960
    invoke-virtual {p1}, Lu/aly/di;->w()I

    move-result v4

    .line 961
    iget-object v5, p2, Lu/aly/bp;->l:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 963
    :cond_e
    invoke-virtual {p1}, Lu/aly/di;->o()V

    .line 965
    invoke-virtual {p2, v6}, Lu/aly/bp;->l(Z)V

    goto/16 :goto_1

    .line 967
    :cond_f
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 830
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
        :pswitch_a
        :pswitch_b
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
    .line 819
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$a;->b(Lu/aly/di;Lu/aly/bp;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    .line 982
    invoke-virtual {p2}, Lu/aly/bp;->S()V

    .line 984
    invoke-static {}, Lu/aly/bp;->T()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 985
    iget-object v0, p2, Lu/aly/bp;->a:Lu/aly/ar;

    if-eqz v0, :cond_0

    .line 986
    invoke-static {}, Lu/aly/bp;->U()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 987
    iget-object v0, p2, Lu/aly/bp;->a:Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->b(Lu/aly/di;)V

    .line 988
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 990
    :cond_0
    iget-object v0, p2, Lu/aly/bp;->b:Lu/aly/aq;

    if-eqz v0, :cond_1

    .line 991
    invoke-static {}, Lu/aly/bp;->V()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 992
    iget-object v0, p2, Lu/aly/bp;->b:Lu/aly/aq;

    invoke-virtual {v0, p1}, Lu/aly/aq;->b(Lu/aly/di;)V

    .line 993
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 995
    :cond_1
    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/at;

    if-eqz v0, :cond_2

    .line 996
    invoke-static {}, Lu/aly/bp;->W()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 997
    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->b(Lu/aly/di;)V

    .line 998
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1000
    :cond_2
    iget-object v0, p2, Lu/aly/bp;->d:Lu/aly/bh;

    if-eqz v0, :cond_3

    .line 1001
    invoke-static {}, Lu/aly/bp;->X()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1002
    iget-object v0, p2, Lu/aly/bp;->d:Lu/aly/bh;

    invoke-virtual {v0, p1}, Lu/aly/bh;->b(Lu/aly/di;)V

    .line 1003
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1005
    :cond_3
    iget-object v0, p2, Lu/aly/bp;->e:Lu/aly/ao;

    if-eqz v0, :cond_4

    .line 1006
    invoke-virtual {p2}, Lu/aly/bp;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1007
    invoke-static {}, Lu/aly/bp;->Y()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1008
    iget-object v0, p2, Lu/aly/bp;->e:Lu/aly/ao;

    invoke-virtual {v0, p1}, Lu/aly/ao;->b(Lu/aly/di;)V

    .line 1009
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1012
    :cond_4
    iget-object v0, p2, Lu/aly/bp;->f:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1013
    invoke-virtual {p2}, Lu/aly/bp;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1014
    invoke-static {}, Lu/aly/bp;->Z()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1016
    new-instance v0, Lu/aly/de;

    iget-object v1, p2, Lu/aly/bp;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/de;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/de;)V

    .line 1017
    iget-object v0, p2, Lu/aly/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    .line 1019
    invoke-virtual {v0, p1}, Lu/aly/be;->b(Lu/aly/di;)V

    goto :goto_0

    .line 1021
    :cond_5
    invoke-virtual {p1}, Lu/aly/di;->f()V

    .line 1023
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1026
    :cond_6
    iget-object v0, p2, Lu/aly/bp;->g:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 1027
    invoke-virtual {p2}, Lu/aly/bp;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1028
    invoke-static {}, Lu/aly/bp;->aa()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1030
    new-instance v0, Lu/aly/de;

    iget-object v1, p2, Lu/aly/bp;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/de;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/de;)V

    .line 1031
    iget-object v0, p2, Lu/aly/bp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bn;

    .line 1033
    invoke-virtual {v0, p1}, Lu/aly/bn;->b(Lu/aly/di;)V

    goto :goto_1

    .line 1035
    :cond_7
    invoke-virtual {p1}, Lu/aly/di;->f()V

    .line 1037
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1040
    :cond_8
    iget-object v0, p2, Lu/aly/bp;->h:Lu/aly/bc;

    if-eqz v0, :cond_9

    .line 1041
    invoke-virtual {p2}, Lu/aly/bp;->E()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1042
    invoke-static {}, Lu/aly/bp;->ab()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1043
    iget-object v0, p2, Lu/aly/bp;->h:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->b(Lu/aly/di;)V

    .line 1044
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1047
    :cond_9
    iget-object v0, p2, Lu/aly/bp;->i:Lu/aly/bb;

    if-eqz v0, :cond_a

    .line 1048
    invoke-virtual {p2}, Lu/aly/bp;->H()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1049
    invoke-static {}, Lu/aly/bp;->ac()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1050
    iget-object v0, p2, Lu/aly/bp;->i:Lu/aly/bb;

    invoke-virtual {v0, p1}, Lu/aly/bb;->b(Lu/aly/di;)V

    .line 1051
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1054
    :cond_a
    iget-object v0, p2, Lu/aly/bp;->j:Lu/aly/ap;

    if-eqz v0, :cond_b

    .line 1055
    invoke-virtual {p2}, Lu/aly/bp;->K()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1056
    invoke-static {}, Lu/aly/bp;->ad()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1057
    iget-object v0, p2, Lu/aly/bp;->j:Lu/aly/ap;

    invoke-virtual {v0, p1}, Lu/aly/ap;->b(Lu/aly/di;)V

    .line 1058
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1061
    :cond_b
    iget-object v0, p2, Lu/aly/bp;->k:Lu/aly/as;

    if-eqz v0, :cond_c

    .line 1062
    invoke-virtual {p2}, Lu/aly/bp;->N()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1063
    invoke-static {}, Lu/aly/bp;->ae()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1064
    iget-object v0, p2, Lu/aly/bp;->k:Lu/aly/as;

    invoke-virtual {v0, p1}, Lu/aly/as;->b(Lu/aly/di;)V

    .line 1065
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1068
    :cond_c
    iget-object v0, p2, Lu/aly/bp;->l:Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 1069
    invoke-virtual {p2}, Lu/aly/bp;->R()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1070
    invoke-static {}, Lu/aly/bp;->af()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1072
    new-instance v0, Lu/aly/df;

    const/16 v1, 0xb

    const/16 v2, 0x8

    iget-object v3, p2, Lu/aly/bp;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/df;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/df;)V

    .line 1073
    iget-object v0, p2, Lu/aly/bp;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1075
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1076
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(I)V

    goto :goto_2

    .line 1078
    :cond_d
    invoke-virtual {p1}, Lu/aly/di;->e()V

    .line 1080
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1083
    :cond_e
    invoke-virtual {p1}, Lu/aly/di;->d()V

    .line 1084
    invoke-virtual {p1}, Lu/aly/di;->b()V

    .line 1085
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
    .line 819
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$a;->a(Lu/aly/di;Lu/aly/bp;)V

    return-void
.end method
