.class public Lu/aly/ax;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ax$c;,
        Lu/aly/ax$d;,
        Lu/aly/ax$a;,
        Lu/aly/ax$b;,
        Lu/aly/ax$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/cj",
        "<",
        "Lu/aly/ax;",
        "Lu/aly/ax$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ax$e;",
            "Lu/aly/cv;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lu/aly/dn;

.field private static final h:Lu/aly/dd;

.field private static final i:Lu/aly/dd;

.field private static final j:Lu/aly/dd;

.field private static final k:Lu/aly/dd;

.field private static final l:Lu/aly/dd;

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lu/aly/dq;",
            ">;",
            "Lu/aly/dr;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bj;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:I

.field public e:J

.field private q:B

.field private r:[Lu/aly/ax$e;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/16 v7, 0xb

    const/4 v12, 0x2

    const/16 v11, 0xa

    const/4 v10, 0x1

    .line 33
    new-instance v0, Lu/aly/dn;

    const-string v1, "Event"

    invoke-direct {v0, v1}, Lu/aly/dn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ax;->g:Lu/aly/dn;

    .line 35
    new-instance v0, Lu/aly/dd;

    const-string v1, "name"

    invoke-direct {v0, v1, v7, v10}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->h:Lu/aly/dd;

    .line 36
    new-instance v0, Lu/aly/dd;

    const-string v1, "properties"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v12}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->i:Lu/aly/dd;

    .line 37
    new-instance v0, Lu/aly/dd;

    const-string v1, "duration"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v11, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->j:Lu/aly/dd;

    .line 38
    new-instance v0, Lu/aly/dd;

    const-string v1, "acc"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v13, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->k:Lu/aly/dd;

    .line 39
    new-instance v0, Lu/aly/dd;

    const-string v1, "ts"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v11, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->l:Lu/aly/dd;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ax;->m:Ljava/util/Map;

    .line 43
    sget-object v0, Lu/aly/ax;->m:Ljava/util/Map;

    const-class v1, Lu/aly/ds;

    new-instance v2, Lu/aly/ax$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/ax$b;-><init>(Lu/aly/ax$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lu/aly/ax;->m:Ljava/util/Map;

    const-class v1, Lu/aly/dt;

    new-instance v2, Lu/aly/ax$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/ax$d;-><init>(Lu/aly/ax$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ax$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 132
    sget-object v1, Lu/aly/ax$e;->a:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "name"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lu/aly/ax$e;->b:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "properties"

    new-instance v4, Lu/aly/cy;

    const/16 v5, 0xd

    new-instance v6, Lu/aly/cw;

    invoke-direct {v6, v7}, Lu/aly/cw;-><init>(B)V

    new-instance v7, Lu/aly/da;

    const/16 v8, 0xc

    const-class v9, Lu/aly/bj;

    invoke-direct {v7, v8, v9}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6, v7}, Lu/aly/cy;-><init>(BLu/aly/cw;Lu/aly/cw;)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "duration"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v11}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v12, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "acc"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v13}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v12, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lu/aly/ax$e;->e:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "ts"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v11}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ax;->f:Ljava/util/Map;

    .line 145
    const-class v0, Lu/aly/ax;

    sget-object v1, Lu/aly/ax;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-byte v2, p0, Lu/aly/ax;->q:B

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/ax$e;

    sget-object v1, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/ax;->r:[Lu/aly/ax$e;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bj;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Lu/aly/ax;-><init>()V

    .line 157
    iput-object p1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 159
    iput-wide p3, p0, Lu/aly/ax;->e:J

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->e(Z)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lu/aly/ax;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-byte v2, p0, Lu/aly/ax;->q:B

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/ax$e;

    sget-object v1, Lu/aly/ax$e;->c:Lu/aly/ax$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/ax$e;->d:Lu/aly/ax$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/ax;->r:[Lu/aly/ax$e;

    .line 167
    iget-byte v0, p1, Lu/aly/ax;->q:B

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 168
    invoke-virtual {p1}, Lu/aly/ax;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p1, Lu/aly/ax;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 171
    :cond_0
    invoke-virtual {p1}, Lu/aly/ax;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 173
    iget-object v0, p1, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bj;

    .line 180
    new-instance v4, Lu/aly/bj;

    invoke-direct {v4, v0}, Lu/aly/bj;-><init>(Lu/aly/bj;)V

    .line 182
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_1
    iput-object v2, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 186
    :cond_2
    iget-wide v0, p1, Lu/aly/ax;->c:J

    iput-wide v0, p0, Lu/aly/ax;->c:J

    .line 187
    iget v0, p1, Lu/aly/ax;->d:I

    iput v0, p0, Lu/aly/ax;->d:I

    .line 188
    iget-wide v0, p1, Lu/aly/ax;->e:J

    iput-wide v0, p0, Lu/aly/ax;->e:J

    .line 189
    return-void
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
    .line 410
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 411
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/ax;->a(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
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
    .line 401
    :try_start_0
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/ax;->b(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic u()Lu/aly/dn;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->g:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic v()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->h:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic w()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->i:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic x()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->j:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic y()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->k:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic z()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->l:Lu/aly/dd;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/ax;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lu/aly/ax;

    invoke-direct {v0, p0}, Lu/aly/ax;-><init>(Lu/aly/ax;)V

    return-object v0
.end method

.method public a(I)Lu/aly/ax;
    .locals 1

    .prologue
    .line 294
    iput p1, p0, Lu/aly/ax;->d:I

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->d(Z)V

    .line 296
    return-object p0
.end method

.method public a(J)Lu/aly/ax;
    .locals 1

    .prologue
    .line 271
    iput-wide p1, p0, Lu/aly/ax;->c:J

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->c(Z)V

    .line 273
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ax;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/ax;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bj;",
            ">;)",
            "Lu/aly/ax;"
        }
    .end annotation

    .prologue
    .line 247
    iput-object p1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 248
    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/bj;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 239
    :cond_0
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method public a(Lu/aly/di;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 340
    sget-object v0, Lu/aly/ax;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/di;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dr;

    invoke-interface {v0}, Lu/aly/dr;->b()Lu/aly/dq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dq;->b(Lu/aly/di;Lu/aly/cj;)V

    .line 341
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 229
    :cond_0
    return-void
.end method

.method public b(J)Lu/aly/ax;
    .locals 1

    .prologue
    .line 317
    iput-wide p1, p0, Lu/aly/ax;->e:J

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->e(Z)V

    .line 319
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cq;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lu/aly/ax;->c(I)Lu/aly/ax$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 197
    iput-object v1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 198
    iput-object v1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 199
    invoke-virtual {p0, v0}, Lu/aly/ax;->c(Z)V

    .line 200
    iput-wide v2, p0, Lu/aly/ax;->c:J

    .line 201
    invoke-virtual {p0, v0}, Lu/aly/ax;->d(Z)V

    .line 202
    iput v0, p0, Lu/aly/ax;->d:I

    .line 203
    invoke-virtual {p0, v0}, Lu/aly/ax;->e(Z)V

    .line 204
    iput-wide v2, p0, Lu/aly/ax;->e:J

    .line 205
    return-void
.end method

.method public b(Lu/aly/di;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 344
    sget-object v0, Lu/aly/ax;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/di;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dr;

    invoke-interface {v0}, Lu/aly/dr;->b()Lu/aly/dq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dq;->a(Lu/aly/di;Lu/aly/cj;)V

    .line 345
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 264
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/ax$e;
    .locals 1

    .prologue
    .line 336
    invoke-static {p1}, Lu/aly/ax$e;->a(I)Lu/aly/ax$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 286
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/cg;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 287
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 309
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/cg;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 310
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 332
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/cg;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 333
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic g()Lu/aly/cj;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lu/aly/ax;->a()Lu/aly/ax;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 253
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lu/aly/ax;->c:J

    return-wide v0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 277
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cg;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 278
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 282
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cg;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lu/aly/ax;->d:I

    return v0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 300
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/cg;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 301
    return-void
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 305
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/cg;->a(BI)Z

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lu/aly/ax;->e:J

    return-wide v0
.end method

.method public r()V
    .locals 2

    .prologue
    .line 323
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/cg;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 324
    return-void
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 328
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/cg;->a(BI)Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/ax;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'properties\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/ax;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 354
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v1, "properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 362
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :goto_1
    invoke-virtual {p0}, Lu/aly/ax;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-wide v1, p0, Lu/aly/ax;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 373
    :cond_0
    invoke-virtual {p0}, Lu/aly/ax;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, "acc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget v1, p0, Lu/aly/ax;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    :cond_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-wide v1, p0, Lu/aly/ax;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_2
    iget-object v1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 364
    :cond_3
    iget-object v1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
