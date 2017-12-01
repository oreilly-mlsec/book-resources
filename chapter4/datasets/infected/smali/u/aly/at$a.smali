.class Lu/aly/at$a;
.super Lu/aly/ds;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ds",
        "<",
        "Lu/aly/at;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Lu/aly/ds;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/at$1;)V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Lu/aly/at$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/at;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 932
    invoke-virtual {p1}, Lu/aly/di;->j()Lu/aly/dn;

    .line 935
    :goto_0
    invoke-virtual {p1}, Lu/aly/di;->l()Lu/aly/dd;

    move-result-object v0

    .line 936
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-nez v1, :cond_0

    .line 1082
    invoke-virtual {p1}, Lu/aly/di;->k()V

    .line 1085
    invoke-virtual {p2}, Lu/aly/at;->ac()V

    .line 1086
    return-void

    .line 939
    :cond_0
    iget-short v1, v0, Lu/aly/dd;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1078
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    .line 1080
    :goto_1
    invoke-virtual {p1}, Lu/aly/di;->m()V

    goto :goto_0

    .line 941
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_1

    .line 942
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->a:Ljava/lang/String;

    .line 943
    invoke-virtual {p2, v3}, Lu/aly/at;->a(Z)V

    goto :goto_1

    .line 945
    :cond_1
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 949
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_2

    .line 950
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    .line 951
    invoke-virtual {p2, v3}, Lu/aly/at;->b(Z)V

    goto :goto_1

    .line 953
    :cond_2
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 957
    :pswitch_2
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_3

    .line 958
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    .line 959
    invoke-virtual {p2, v3}, Lu/aly/at;->c(Z)V

    goto :goto_1

    .line 961
    :cond_3
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 965
    :pswitch_3
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_4

    .line 966
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->d:Ljava/lang/String;

    .line 967
    invoke-virtual {p2, v3}, Lu/aly/at;->d(Z)V

    goto :goto_1

    .line 969
    :cond_4
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 973
    :pswitch_4
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_5

    .line 974
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->e:Ljava/lang/String;

    .line 975
    invoke-virtual {p2, v3}, Lu/aly/at;->e(Z)V

    goto :goto_1

    .line 977
    :cond_5
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 981
    :pswitch_5
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_6

    .line 982
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->f:Ljava/lang/String;

    .line 983
    invoke-virtual {p2, v3}, Lu/aly/at;->f(Z)V

    goto :goto_1

    .line 985
    :cond_6
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_1

    .line 989
    :pswitch_6
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_7

    .line 990
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->g:Ljava/lang/String;

    .line 991
    invoke-virtual {p2, v3}, Lu/aly/at;->g(Z)V

    goto/16 :goto_1

    .line 993
    :cond_7
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 997
    :pswitch_7
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_8

    .line 998
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->h:Ljava/lang/String;

    .line 999
    invoke-virtual {p2, v3}, Lu/aly/at;->h(Z)V

    goto/16 :goto_1

    .line 1001
    :cond_8
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 1005
    :pswitch_8
    iget-byte v1, v0, Lu/aly/dd;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_9

    .line 1006
    new-instance v0, Lu/aly/bk;

    invoke-direct {v0}, Lu/aly/bk;-><init>()V

    iput-object v0, p2, Lu/aly/at;->i:Lu/aly/bk;

    .line 1007
    iget-object v0, p2, Lu/aly/at;->i:Lu/aly/bk;

    invoke-virtual {v0, p1}, Lu/aly/bk;->a(Lu/aly/di;)V

    .line 1008
    invoke-virtual {p2, v3}, Lu/aly/at;->i(Z)V

    goto/16 :goto_1

    .line 1010
    :cond_9
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 1014
    :pswitch_9
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v5, :cond_a

    .line 1015
    invoke-virtual {p1}, Lu/aly/di;->t()Z

    move-result v0

    iput-boolean v0, p2, Lu/aly/at;->j:Z

    .line 1016
    invoke-virtual {p2, v3}, Lu/aly/at;->k(Z)V

    goto/16 :goto_1

    .line 1018
    :cond_a
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 1022
    :pswitch_a
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v5, :cond_b

    .line 1023
    invoke-virtual {p1}, Lu/aly/di;->t()Z

    move-result v0

    iput-boolean v0, p2, Lu/aly/at;->k:Z

    .line 1024
    invoke-virtual {p2, v3}, Lu/aly/at;->m(Z)V

    goto/16 :goto_1

    .line 1026
    :cond_b
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 1030
    :pswitch_b
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_c

    .line 1031
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->l:Ljava/lang/String;

    .line 1032
    invoke-virtual {p2, v3}, Lu/aly/at;->n(Z)V

    goto/16 :goto_1

    .line 1034
    :cond_c
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 1038
    :pswitch_c
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_d

    .line 1039
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->m:Ljava/lang/String;

    .line 1040
    invoke-virtual {p2, v3}, Lu/aly/at;->o(Z)V

    goto/16 :goto_1

    .line 1042
    :cond_d
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 1046
    :pswitch_d
    iget-byte v1, v0, Lu/aly/dd;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_e

    .line 1047
    invoke-virtual {p1}, Lu/aly/di;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/at;->n:J

    .line 1048
    invoke-virtual {p2, v3}, Lu/aly/at;->p(Z)V

    goto/16 :goto_1

    .line 1050
    :cond_e
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 1054
    :pswitch_e
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_f

    .line 1055
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->o:Ljava/lang/String;

    .line 1056
    invoke-virtual {p2, v3}, Lu/aly/at;->q(Z)V

    goto/16 :goto_1

    .line 1058
    :cond_f
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 1062
    :pswitch_f
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_10

    .line 1063
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->p:Ljava/lang/String;

    .line 1064
    invoke-virtual {p2, v3}, Lu/aly/at;->r(Z)V

    goto/16 :goto_1

    .line 1066
    :cond_10
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 1070
    :pswitch_10
    iget-byte v1, v0, Lu/aly/dd;->b:B

    if-ne v1, v4, :cond_11

    .line 1071
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->q:Ljava/lang/String;

    .line 1072
    invoke-virtual {p2, v3}, Lu/aly/at;->s(Z)V

    goto/16 :goto_1

    .line 1074
    :cond_11
    iget-byte v0, v0, Lu/aly/dd;->b:B

    invoke-static {p1, v0}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto/16 :goto_1

    .line 939
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
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
    .line 928
    check-cast p2, Lu/aly/at;

    invoke-virtual {p0, p1, p2}, Lu/aly/at$a;->b(Lu/aly/di;Lu/aly/at;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/at;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-virtual {p2}, Lu/aly/at;->ac()V

    .line 1091
    invoke-static {}, Lu/aly/at;->ad()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dn;)V

    .line 1092
    iget-object v0, p2, Lu/aly/at;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {p2}, Lu/aly/at;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    invoke-static {}, Lu/aly/at;->ae()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1095
    iget-object v0, p2, Lu/aly/at;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1099
    :cond_0
    iget-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1100
    invoke-virtual {p2}, Lu/aly/at;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    invoke-static {}, Lu/aly/at;->af()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1102
    iget-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1106
    :cond_1
    iget-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1107
    invoke-virtual {p2}, Lu/aly/at;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1108
    invoke-static {}, Lu/aly/at;->ag()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1109
    iget-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1113
    :cond_2
    iget-object v0, p2, Lu/aly/at;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1114
    invoke-virtual {p2}, Lu/aly/at;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    invoke-static {}, Lu/aly/at;->ah()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1116
    iget-object v0, p2, Lu/aly/at;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1120
    :cond_3
    iget-object v0, p2, Lu/aly/at;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1121
    invoke-virtual {p2}, Lu/aly/at;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1122
    invoke-static {}, Lu/aly/at;->ai()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1123
    iget-object v0, p2, Lu/aly/at;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1127
    :cond_4
    iget-object v0, p2, Lu/aly/at;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1128
    invoke-virtual {p2}, Lu/aly/at;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1129
    invoke-static {}, Lu/aly/at;->aj()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1130
    iget-object v0, p2, Lu/aly/at;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1134
    :cond_5
    iget-object v0, p2, Lu/aly/at;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1135
    invoke-virtual {p2}, Lu/aly/at;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1136
    invoke-static {}, Lu/aly/at;->ak()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1137
    iget-object v0, p2, Lu/aly/at;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1141
    :cond_6
    iget-object v0, p2, Lu/aly/at;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1142
    invoke-virtual {p2}, Lu/aly/at;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1143
    invoke-static {}, Lu/aly/at;->al()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1144
    iget-object v0, p2, Lu/aly/at;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1148
    :cond_7
    iget-object v0, p2, Lu/aly/at;->i:Lu/aly/bk;

    if-eqz v0, :cond_8

    .line 1149
    invoke-virtual {p2}, Lu/aly/at;->D()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1150
    invoke-static {}, Lu/aly/at;->am()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1151
    iget-object v0, p2, Lu/aly/at;->i:Lu/aly/bk;

    invoke-virtual {v0, p1}, Lu/aly/bk;->b(Lu/aly/di;)V

    .line 1152
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1155
    :cond_8
    invoke-virtual {p2}, Lu/aly/at;->G()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1156
    invoke-static {}, Lu/aly/at;->an()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1157
    iget-boolean v0, p2, Lu/aly/at;->j:Z

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Z)V

    .line 1158
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1160
    :cond_9
    invoke-virtual {p2}, Lu/aly/at;->J()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1161
    invoke-static {}, Lu/aly/at;->ao()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1162
    iget-boolean v0, p2, Lu/aly/at;->k:Z

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Z)V

    .line 1163
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1165
    :cond_a
    iget-object v0, p2, Lu/aly/at;->l:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1166
    invoke-virtual {p2}, Lu/aly/at;->M()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1167
    invoke-static {}, Lu/aly/at;->ap()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1168
    iget-object v0, p2, Lu/aly/at;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1172
    :cond_b
    iget-object v0, p2, Lu/aly/at;->m:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1173
    invoke-virtual {p2}, Lu/aly/at;->P()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1174
    invoke-static {}, Lu/aly/at;->aq()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1175
    iget-object v0, p2, Lu/aly/at;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1179
    :cond_c
    invoke-virtual {p2}, Lu/aly/at;->S()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1180
    invoke-static {}, Lu/aly/at;->ar()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1181
    iget-wide v0, p2, Lu/aly/at;->n:J

    invoke-virtual {p1, v0, v1}, Lu/aly/di;->a(J)V

    .line 1182
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1184
    :cond_d
    iget-object v0, p2, Lu/aly/at;->o:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1185
    invoke-virtual {p2}, Lu/aly/at;->V()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1186
    invoke-static {}, Lu/aly/at;->as()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1187
    iget-object v0, p2, Lu/aly/at;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1191
    :cond_e
    iget-object v0, p2, Lu/aly/at;->p:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1192
    invoke-virtual {p2}, Lu/aly/at;->Y()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1193
    invoke-static {}, Lu/aly/at;->at()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1194
    iget-object v0, p2, Lu/aly/at;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1198
    :cond_f
    iget-object v0, p2, Lu/aly/at;->q:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1199
    invoke-virtual {p2}, Lu/aly/at;->ab()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1200
    invoke-static {}, Lu/aly/at;->au()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Lu/aly/dd;)V

    .line 1201
    iget-object v0, p2, Lu/aly/at;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p1}, Lu/aly/di;->c()V

    .line 1205
    :cond_10
    invoke-virtual {p1}, Lu/aly/di;->d()V

    .line 1206
    invoke-virtual {p1}, Lu/aly/di;->b()V

    .line 1207
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
    .line 928
    check-cast p2, Lu/aly/at;

    invoke-virtual {p0, p1, p2}, Lu/aly/at$a;->a(Lu/aly/di;Lu/aly/at;)V

    return-void
.end method
