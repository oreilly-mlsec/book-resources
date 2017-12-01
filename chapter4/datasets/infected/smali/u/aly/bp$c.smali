.class Lu/aly/bp$c;
.super Lu/aly/dt;
.source "UALogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dt",
        "<",
        "Lu/aly/bp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1095
    invoke-direct {p0}, Lu/aly/dt;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bp$1;)V
    .locals 0

    .prologue
    .line 1095
    invoke-direct {p0}, Lu/aly/bp$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/di;Lu/aly/bp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 1099
    check-cast p1, Lu/aly/do;

    .line 1100
    iget-object v0, p2, Lu/aly/bp;->a:Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->b(Lu/aly/di;)V

    .line 1101
    iget-object v0, p2, Lu/aly/bp;->b:Lu/aly/aq;

    invoke-virtual {v0, p1}, Lu/aly/aq;->b(Lu/aly/di;)V

    .line 1102
    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->b(Lu/aly/di;)V

    .line 1103
    iget-object v0, p2, Lu/aly/bp;->d:Lu/aly/bh;

    invoke-virtual {v0, p1}, Lu/aly/bh;->b(Lu/aly/di;)V

    .line 1104
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1105
    invoke-virtual {p2}, Lu/aly/bp;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1108
    :cond_0
    invoke-virtual {p2}, Lu/aly/bp;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1111
    :cond_1
    invoke-virtual {p2}, Lu/aly/bp;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1112
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1114
    :cond_2
    invoke-virtual {p2}, Lu/aly/bp;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1115
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1117
    :cond_3
    invoke-virtual {p2}, Lu/aly/bp;->H()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1118
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1120
    :cond_4
    invoke-virtual {p2}, Lu/aly/bp;->K()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1121
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1123
    :cond_5
    invoke-virtual {p2}, Lu/aly/bp;->N()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1124
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1126
    :cond_6
    invoke-virtual {p2}, Lu/aly/bp;->R()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1127
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1129
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lu/aly/do;->a(Ljava/util/BitSet;I)V

    .line 1130
    invoke-virtual {p2}, Lu/aly/bp;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1131
    iget-object v0, p2, Lu/aly/bp;->e:Lu/aly/ao;

    invoke-virtual {v0, p1}, Lu/aly/ao;->b(Lu/aly/di;)V

    .line 1133
    :cond_8
    invoke-virtual {p2}, Lu/aly/bp;->w()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1135
    iget-object v0, p2, Lu/aly/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 1136
    iget-object v0, p2, Lu/aly/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    .line 1138
    invoke-virtual {v0, p1}, Lu/aly/be;->b(Lu/aly/di;)V

    goto :goto_0

    .line 1142
    :cond_9
    invoke-virtual {p2}, Lu/aly/bp;->B()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1144
    iget-object v0, p2, Lu/aly/bp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 1145
    iget-object v0, p2, Lu/aly/bp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bn;

    .line 1147
    invoke-virtual {v0, p1}, Lu/aly/bn;->b(Lu/aly/di;)V

    goto :goto_1

    .line 1151
    :cond_a
    invoke-virtual {p2}, Lu/aly/bp;->E()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1152
    iget-object v0, p2, Lu/aly/bp;->h:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->b(Lu/aly/di;)V

    .line 1154
    :cond_b
    invoke-virtual {p2}, Lu/aly/bp;->H()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1155
    iget-object v0, p2, Lu/aly/bp;->i:Lu/aly/bb;

    invoke-virtual {v0, p1}, Lu/aly/bb;->b(Lu/aly/di;)V

    .line 1157
    :cond_c
    invoke-virtual {p2}, Lu/aly/bp;->K()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1158
    iget-object v0, p2, Lu/aly/bp;->j:Lu/aly/ap;

    invoke-virtual {v0, p1}, Lu/aly/ap;->b(Lu/aly/di;)V

    .line 1160
    :cond_d
    invoke-virtual {p2}, Lu/aly/bp;->N()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1161
    iget-object v0, p2, Lu/aly/bp;->k:Lu/aly/as;

    invoke-virtual {v0, p1}, Lu/aly/as;->b(Lu/aly/di;)V

    .line 1163
    :cond_e
    invoke-virtual {p2}, Lu/aly/bp;->R()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1165
    iget-object v0, p2, Lu/aly/bp;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    .line 1166
    iget-object v0, p2, Lu/aly/bp;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/do;->a(Ljava/lang/String;)V

    .line 1169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/do;->a(I)V

    goto :goto_2

    .line 1173
    :cond_f
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
    .line 1095
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$c;->a(Lu/aly/di;Lu/aly/bp;)V

    return-void
.end method

.method public b(Lu/aly/di;Lu/aly/bp;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0x8

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1177
    check-cast p1, Lu/aly/do;

    .line 1178
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0}, Lu/aly/ar;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->a:Lu/aly/ar;

    .line 1179
    iget-object v0, p2, Lu/aly/bp;->a:Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->a(Lu/aly/di;)V

    .line 1180
    invoke-virtual {p2, v6}, Lu/aly/bp;->a(Z)V

    .line 1181
    new-instance v0, Lu/aly/aq;

    invoke-direct {v0}, Lu/aly/aq;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->b:Lu/aly/aq;

    .line 1182
    iget-object v0, p2, Lu/aly/bp;->b:Lu/aly/aq;

    invoke-virtual {v0, p1}, Lu/aly/aq;->a(Lu/aly/di;)V

    .line 1183
    invoke-virtual {p2, v6}, Lu/aly/bp;->b(Z)V

    .line 1184
    new-instance v0, Lu/aly/at;

    invoke-direct {v0}, Lu/aly/at;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->c:Lu/aly/at;

    .line 1185
    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->a(Lu/aly/di;)V

    .line 1186
    invoke-virtual {p2, v6}, Lu/aly/bp;->c(Z)V

    .line 1187
    new-instance v0, Lu/aly/bh;

    invoke-direct {v0}, Lu/aly/bh;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->d:Lu/aly/bh;

    .line 1188
    iget-object v0, p2, Lu/aly/bp;->d:Lu/aly/bh;

    invoke-virtual {v0, p1}, Lu/aly/bh;->a(Lu/aly/di;)V

    .line 1189
    invoke-virtual {p2, v6}, Lu/aly/bp;->d(Z)V

    .line 1190
    invoke-virtual {p1, v7}, Lu/aly/do;->b(I)Ljava/util/BitSet;

    move-result-object v2

    .line 1191
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    new-instance v0, Lu/aly/ao;

    invoke-direct {v0}, Lu/aly/ao;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->e:Lu/aly/ao;

    .line 1193
    iget-object v0, p2, Lu/aly/bp;->e:Lu/aly/ao;

    invoke-virtual {v0, p1}, Lu/aly/ao;->a(Lu/aly/di;)V

    .line 1194
    invoke-virtual {p2, v6}, Lu/aly/bp;->e(Z)V

    .line 1196
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1198
    new-instance v3, Lu/aly/de;

    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    invoke-direct {v3, v8, v0}, Lu/aly/de;-><init>(BI)V

    .line 1199
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/de;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bp;->f:Ljava/util/List;

    move v0, v1

    .line 1200
    :goto_0
    iget v4, v3, Lu/aly/de;->b:I

    if-ge v0, v4, :cond_1

    .line 1203
    new-instance v4, Lu/aly/be;

    invoke-direct {v4}, Lu/aly/be;-><init>()V

    .line 1204
    invoke-virtual {v4, p1}, Lu/aly/be;->a(Lu/aly/di;)V

    .line 1205
    iget-object v5, p2, Lu/aly/bp;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1208
    :cond_1
    invoke-virtual {p2, v6}, Lu/aly/bp;->f(Z)V

    .line 1210
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1212
    new-instance v3, Lu/aly/de;

    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v0

    invoke-direct {v3, v8, v0}, Lu/aly/de;-><init>(BI)V

    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/de;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bp;->g:Ljava/util/List;

    move v0, v1

    .line 1214
    :goto_1
    iget v4, v3, Lu/aly/de;->b:I

    if-ge v0, v4, :cond_3

    .line 1217
    new-instance v4, Lu/aly/bn;

    invoke-direct {v4}, Lu/aly/bn;-><init>()V

    .line 1218
    invoke-virtual {v4, p1}, Lu/aly/bn;->a(Lu/aly/di;)V

    .line 1219
    iget-object v5, p2, Lu/aly/bp;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1222
    :cond_3
    invoke-virtual {p2, v6}, Lu/aly/bp;->g(Z)V

    .line 1224
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1225
    new-instance v0, Lu/aly/bc;

    invoke-direct {v0}, Lu/aly/bc;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->h:Lu/aly/bc;

    .line 1226
    iget-object v0, p2, Lu/aly/bp;->h:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->a(Lu/aly/di;)V

    .line 1227
    invoke-virtual {p2, v6}, Lu/aly/bp;->h(Z)V

    .line 1229
    :cond_5
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1230
    new-instance v0, Lu/aly/bb;

    invoke-direct {v0}, Lu/aly/bb;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->i:Lu/aly/bb;

    .line 1231
    iget-object v0, p2, Lu/aly/bp;->i:Lu/aly/bb;

    invoke-virtual {v0, p1}, Lu/aly/bb;->a(Lu/aly/di;)V

    .line 1232
    invoke-virtual {p2, v6}, Lu/aly/bp;->i(Z)V

    .line 1234
    :cond_6
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1235
    new-instance v0, Lu/aly/ap;

    invoke-direct {v0}, Lu/aly/ap;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->j:Lu/aly/ap;

    .line 1236
    iget-object v0, p2, Lu/aly/bp;->j:Lu/aly/ap;

    invoke-virtual {v0, p1}, Lu/aly/ap;->a(Lu/aly/di;)V

    .line 1237
    invoke-virtual {p2, v6}, Lu/aly/bp;->j(Z)V

    .line 1239
    :cond_7
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1240
    new-instance v0, Lu/aly/as;

    invoke-direct {v0}, Lu/aly/as;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->k:Lu/aly/as;

    .line 1241
    iget-object v0, p2, Lu/aly/bp;->k:Lu/aly/as;

    invoke-virtual {v0, p1}, Lu/aly/as;->a(Lu/aly/di;)V

    .line 1242
    invoke-virtual {p2, v6}, Lu/aly/bp;->k(Z)V

    .line 1244
    :cond_8
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1246
    new-instance v0, Lu/aly/df;

    const/16 v2, 0xb

    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v3

    invoke-direct {v0, v2, v7, v3}, Lu/aly/df;-><init>(BBI)V

    .line 1247
    new-instance v2, Ljava/util/HashMap;

    iget v3, v0, Lu/aly/df;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p2, Lu/aly/bp;->l:Ljava/util/Map;

    .line 1248
    :goto_2
    iget v2, v0, Lu/aly/df;->c:I

    if-ge v1, v2, :cond_9

    .line 1252
    invoke-virtual {p1}, Lu/aly/do;->z()Ljava/lang/String;

    move-result-object v2

    .line 1253
    invoke-virtual {p1}, Lu/aly/do;->w()I

    move-result v3

    .line 1254
    iget-object v4, p2, Lu/aly/bp;->l:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1257
    :cond_9
    invoke-virtual {p2, v6}, Lu/aly/bp;->l(Z)V

    .line 1259
    :cond_a
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
    .line 1095
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$c;->b(Lu/aly/di;Lu/aly/bp;)V

    return-void
.end method
