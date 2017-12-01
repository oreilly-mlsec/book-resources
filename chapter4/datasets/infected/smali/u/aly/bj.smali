.class public Lu/aly/bj;
.super Lu/aly/ct;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/ct",
        "<",
        "Lu/aly/bj;",
        "Lu/aly/bj$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bj$a;",
            "Lu/aly/cv;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/dn;

.field private static final e:Lu/aly/dd;

.field private static final f:Lu/aly/dd;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x3

    .line 33
    new-instance v0, Lu/aly/dn;

    const-string v1, "PropertyValue"

    invoke-direct {v0, v1}, Lu/aly/dn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bj;->d:Lu/aly/dn;

    .line 34
    new-instance v0, Lu/aly/dd;

    const-string v1, "string_value"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bj;->e:Lu/aly/dd;

    .line 35
    new-instance v0, Lu/aly/dd;

    const-string v1, "long_value"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bj;->f:Lu/aly/dd;

    .line 100
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bj$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 101
    sget-object v1, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    new-instance v2, Lu/aly/cv;

    const-string v3, "string_value"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    new-instance v2, Lu/aly/cv;

    const-string v3, "long_value"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bj;->a:Ljava/util/Map;

    .line 106
    const-class v0, Lu/aly/bj;

    sget-object v1, Lu/aly/bj;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lu/aly/ct;-><init>()V

    .line 111
    return-void
.end method

.method public constructor <init>(Lu/aly/bj$a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lu/aly/ct;-><init>(Lu/aly/cq;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lu/aly/bj;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lu/aly/ct;-><init>(Lu/aly/ct;)V

    .line 119
    return-void
.end method

.method public static a(J)Lu/aly/bj;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lu/aly/bj;

    invoke-direct {v0}, Lu/aly/bj;-><init>()V

    .line 132
    invoke-virtual {v0, p0, p1}, Lu/aly/bj;->b(J)V

    .line 133
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lu/aly/bj;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lu/aly/bj;

    invoke-direct {v0}, Lu/aly/bj;-><init>()V

    .line 126
    invoke-virtual {v0, p0}, Lu/aly/bj;->b(Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 344
    :try_start_0
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/bj;->a(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    :try_start_0
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/bj;->b(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected a(Lu/aly/di;Lu/aly/dd;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-short v1, p2, Lu/aly/dd;->c:S

    invoke-static {v1}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    .line 159
    sget-object v2, Lu/aly/bj$1;->a:[I

    invoke-virtual {v1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_0
    iget-byte v1, p2, Lu/aly/dd;->b:B

    sget-object v2, Lu/aly/bj;->e:Lu/aly/dd;

    iget-byte v2, v2, Lu/aly/dd;->b:B

    if-ne v1, v2, :cond_1

    .line 163
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    iget-byte v1, p2, Lu/aly/dd;->b:B

    invoke-static {p1, v1}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-byte v1, p2, Lu/aly/dd;->b:B

    sget-object v2, Lu/aly/bj;->f:Lu/aly/dd;

    iget-byte v2, v2, Lu/aly/dd;->b:B

    if-ne v1, v2, :cond_2

    .line 172
    invoke-virtual {p1}, Lu/aly/di;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_2
    iget-byte v1, p2, Lu/aly/dd;->b:B

    invoke-static {p1, v1}, Lu/aly/dl;->a(Lu/aly/di;B)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lu/aly/di;S)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {p2}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    sget-object v1, Lu/aly/bj$1;->a:[I

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_0
    invoke-virtual {p1}, Lu/aly/di;->z()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 213
    :pswitch_1
    invoke-virtual {p1}, Lu/aly/di;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find a field with field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(I)Lu/aly/bj$a;
    .locals 1

    .prologue
    .line 262
    invoke-static {p1}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v0

    return-object v0
.end method

.method protected a(S)Lu/aly/bj$a;
    .locals 1

    .prologue
    .line 258
    invoke-static {p1}, Lu/aly/bj$a;->b(I)Lu/aly/bj$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/bj;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lu/aly/bj;

    invoke-direct {v0, p0}, Lu/aly/bj;-><init>(Lu/aly/bj;)V

    return-object v0
.end method

.method protected a(Lu/aly/bj$a;)Lu/aly/dd;
    .locals 3

    .prologue
    .line 241
    sget-object v0, Lu/aly/bj$1;->a:[I

    invoke-virtual {p1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_0
    sget-object v0, Lu/aly/bj;->e:Lu/aly/dd;

    .line 245
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lu/aly/bj;->f:Lu/aly/dd;

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Lu/aly/cq;)Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lu/aly/bj$a;

    invoke-virtual {p0, p1}, Lu/aly/bj;->a(Lu/aly/bj$a;)Lu/aly/dd;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lu/aly/bj$a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, Lu/aly/bj$1;->a:[I

    invoke-virtual {p1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    return-void

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Was expecting value of type String for field \'string_value\', but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_1
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Was expecting value of type Long for field \'long_value\', but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Lu/aly/cq;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 32
    check-cast p1, Lu/aly/bj$a;

    invoke-virtual {p0, p1, p2}, Lu/aly/bj;->a(Lu/aly/bj$a;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lu/aly/bj;)Z
    .locals 2

    .prologue
    .line 312
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cq;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/bj;->i()Lu/aly/cq;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lu/aly/bj;)I
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cq;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p1}, Lu/aly/bj;->i()Lu/aly/cq;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lu/aly/ck;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 318
    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/ck;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 321
    :cond_0
    return v0
.end method

.method public synthetic b(I)Lu/aly/cq;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bj;->a(I)Lu/aly/bj$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(S)Lu/aly/cq;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bj;->a(S)Lu/aly/bj$a;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    iput-object v0, p0, Lu/aly/bj;->c:Lu/aly/cq;

    .line 290
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 275
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 276
    :cond_0
    sget-object v0, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    iput-object v0, p0, Lu/aly/bj;->c:Lu/aly/cq;

    .line 277
    iput-object p1, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    .line 278
    return-void
.end method

.method protected c()Lu/aly/dn;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lu/aly/bj;->d:Lu/aly/dn;

    return-object v0
.end method

.method protected c(Lu/aly/di;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 188
    sget-object v1, Lu/aly/bj$1;->a:[I

    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/cq;

    check-cast v0, Lu/aly/bj$a;

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write union with unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/aly/bj;->c:Lu/aly/cq;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 191
    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :pswitch_1
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 195
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/di;->a(J)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cq;

    move-result-object v0

    sget-object v1, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 270
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get field \'string_value\' because union is currently set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cq;

    move-result-object v0

    check-cast v0, Lu/aly/bj$a;

    invoke-virtual {p0, v0}, Lu/aly/bj;->a(Lu/aly/bj$a;)Lu/aly/dd;

    move-result-object v0

    iget-object v0, v0, Lu/aly/dd;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected d(Lu/aly/di;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 225
    sget-object v1, Lu/aly/bj$1;->a:[I

    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/cq;

    check-cast v0, Lu/aly/bj$a;

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write union with unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/aly/bj;->c:Lu/aly/cq;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-virtual {p1, v0}, Lu/aly/di;->a(Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :pswitch_1
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 232
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/di;->a(J)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e()J
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cq;

    move-result-object v0

    sget-object v1, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 284
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get field \'long_value\' because union is currently set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cq;

    move-result-object v0

    check-cast v0, Lu/aly/bj$a;

    invoke-virtual {p0, v0}, Lu/aly/bj;->a(Lu/aly/bj$a;)Lu/aly/dd;

    move-result-object v0

    iget-object v0, v0, Lu/aly/dd;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 304
    instance-of v0, p1, Lu/aly/bj;

    if-eqz v0, :cond_0

    .line 305
    check-cast p1, Lu/aly/bj;

    invoke-virtual {p0, p1}, Lu/aly/bj;->a(Lu/aly/bj;)Z

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/cq;

    sget-object v1, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic g()Lu/aly/cj;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lu/aly/bj;->a()Lu/aly/bj;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/cq;

    sget-object v1, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method
