.class public Lu/aly/be;
.super Ljava/lang/Object;
.source "InstantMsg.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/be$c;,
        Lu/aly/be$d;,
        Lu/aly/be$a;,
        Lu/aly/be$b;,
        Lu/aly/be$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/cj",
        "<",
        "Lu/aly/be;",
        "Lu/aly/be$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/be$e;",
            "Lu/aly/cv;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lu/aly/dn;

.field private static final g:Lu/aly/dd;

.field private static final h:Lu/aly/dd;

.field private static final i:Lu/aly/dd;

.field private static final j:Lu/aly/dd;

.field private static final k:Ljava/util/Map;
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


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation
.end field

.field private l:[Lu/aly/be$e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x1

    const/16 v9, 0xc

    const/4 v8, 0x2

    const/16 v7, 0xf

    .line 33
    new-instance v0, Lu/aly/dn;

    const-string v1, "InstantMsg"

    invoke-direct {v0, v1}, Lu/aly/dn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/be;->f:Lu/aly/dn;

    .line 35
    new-instance v0, Lu/aly/dd;

    const-string v1, "id"

    invoke-direct {v0, v1, v6, v5}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->g:Lu/aly/dd;

    .line 36
    new-instance v0, Lu/aly/dd;

    const-string v1, "errors"

    invoke-direct {v0, v1, v7, v8}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->h:Lu/aly/dd;

    .line 37
    new-instance v0, Lu/aly/dd;

    const-string v1, "events"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->i:Lu/aly/dd;

    .line 38
    new-instance v0, Lu/aly/dd;

    const-string v1, "game_events"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->j:Lu/aly/dd;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/be;->k:Ljava/util/Map;

    .line 42
    sget-object v0, Lu/aly/be;->k:Ljava/util/Map;

    const-class v1, Lu/aly/ds;

    new-instance v2, Lu/aly/be$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/be$b;-><init>(Lu/aly/be$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lu/aly/be;->k:Ljava/util/Map;

    const-class v1, Lu/aly/dt;

    new-instance v2, Lu/aly/be$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/be$d;-><init>(Lu/aly/be$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/be$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 123
    sget-object v1, Lu/aly/be$e;->a:Lu/aly/be$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "id"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/be$e;->b:Lu/aly/be$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "errors"

    new-instance v4, Lu/aly/cx;

    new-instance v5, Lu/aly/da;

    const-class v6, Lu/aly/av;

    invoke-direct {v5, v9, v6}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v5}, Lu/aly/cx;-><init>(BLu/aly/cw;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lu/aly/be$e;->c:Lu/aly/be$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "events"

    new-instance v4, Lu/aly/cx;

    new-instance v5, Lu/aly/da;

    const-class v6, Lu/aly/ax;

    invoke-direct {v5, v9, v6}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v5}, Lu/aly/cx;-><init>(BLu/aly/cw;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lu/aly/be$e;->d:Lu/aly/be$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "game_events"

    new-instance v4, Lu/aly/cx;

    new-instance v5, Lu/aly/da;

    const-class v6, Lu/aly/ax;

    invoke-direct {v5, v9, v6}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v5}, Lu/aly/cx;-><init>(BLu/aly/cw;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/be;->e:Ljava/util/Map;

    .line 135
    const-class v0, Lu/aly/be;

    sget-object v1, Lu/aly/be;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [Lu/aly/be$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/be$e;->b:Lu/aly/be$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/be$e;->c:Lu/aly/be$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/be$e;->d:Lu/aly/be$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/be;->l:[Lu/aly/be$e;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lu/aly/be;-><init>()V

    .line 145
    iput-object p1, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public constructor <init>(Lu/aly/be;)V
    .locals 4

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [Lu/aly/be$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/be$e;->b:Lu/aly/be$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/be$e;->c:Lu/aly/be$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/be$e;->d:Lu/aly/be$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/be;->l:[Lu/aly/be$e;

    .line 152
    invoke-virtual {p1}, Lu/aly/be;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p1, Lu/aly/be;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 155
    :cond_0
    invoke-virtual {p1}, Lu/aly/be;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v0, p1, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av;

    .line 158
    new-instance v3, Lu/aly/av;

    invoke-direct {v3, v0}, Lu/aly/av;-><init>(Lu/aly/av;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    iput-object v1, p0, Lu/aly/be;->b:Ljava/util/List;

    .line 162
    :cond_2
    invoke-virtual {p1}, Lu/aly/be;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v0, p1, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax;

    .line 165
    new-instance v3, Lu/aly/ax;

    invoke-direct {v3, v0}, Lu/aly/ax;-><init>(Lu/aly/ax;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_3
    iput-object v1, p0, Lu/aly/be;->c:Ljava/util/List;

    .line 169
    :cond_4
    invoke-virtual {p1}, Lu/aly/be;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v0, p1, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax;

    .line 172
    new-instance v3, Lu/aly/ax;

    invoke-direct {v3, v0}, Lu/aly/ax;-><init>(Lu/aly/ax;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    :cond_5
    iput-object v1, p0, Lu/aly/be;->d:Ljava/util/List;

    .line 176
    :cond_6
    return-void
.end method

.method static synthetic A()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/be;->j:Lu/aly/dd;

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
    .line 407
    :try_start_0
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/be;->a(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
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
    .line 399
    :try_start_0
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/be;->b(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic w()Lu/aly/dn;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/be;->f:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic x()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/be;->g:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic y()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/be;->h:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic z()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/be;->i:Lu/aly/dd;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/be$e;
    .locals 1

    .prologue
    .line 332
    invoke-static {p1}, Lu/aly/be$e;->a(I)Lu/aly/be$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/be;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lu/aly/be;

    invoke-direct {v0, p0}, Lu/aly/be;-><init>(Lu/aly/be;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lu/aly/be;
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public a(Ljava/util/List;)Lu/aly/be;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lu/aly/av;",
            ">;)",
            "Lu/aly/be;"
        }
    .end annotation

    .prologue
    .line 234
    iput-object p1, p0, Lu/aly/be;->b:Ljava/util/List;

    .line 235
    return-object p0
.end method

.method public a(Lu/aly/av;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    .line 226
    :cond_0
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public a(Lu/aly/ax;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    .line 265
    :cond_0
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
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
    .line 336
    sget-object v0, Lu/aly/be;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/di;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dr;

    invoke-interface {v0}, Lu/aly/dr;->b()Lu/aly/dq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dq;->b(Lu/aly/di;Lu/aly/cj;)V

    .line 337
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 212
    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)Lu/aly/be;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lu/aly/ax;",
            ">;)",
            "Lu/aly/be;"
        }
    .end annotation

    .prologue
    .line 273
    iput-object p1, p0, Lu/aly/be;->c:Ljava/util/List;

    .line 274
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cq;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lu/aly/be;->a(I)Lu/aly/be$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    .line 186
    iput-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    .line 187
    iput-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    .line 188
    return-void
.end method

.method public b(Lu/aly/ax;)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    .line 304
    :cond_0
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
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
    .line 340
    sget-object v0, Lu/aly/be;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/di;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dr;

    invoke-interface {v0}, Lu/aly/dr;->b()Lu/aly/dq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dq;->a(Lu/aly/di;Lu/aly/cj;)V

    .line 341
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    .line 251
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/util/List;)Lu/aly/be;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lu/aly/ax;",
            ">;)",
            "Lu/aly/be;"
        }
    .end annotation

    .prologue
    .line 312
    iput-object p1, p0, Lu/aly/be;->d:Ljava/util/List;

    .line 313
    return-object p0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    .line 290
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    .line 329
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

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
    .line 215
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic g()Lu/aly/cj;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lu/aly/be;->a()Lu/aly/be;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lu/aly/av;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    .line 240
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public m()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    return-object v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    .line 279
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public r()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lu/aly/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    return-object v0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    .line 318
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstantMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v1, p0, Lu/aly/be;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 350
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :goto_0
    invoke-virtual {p0}, Lu/aly/be;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v1, "errors:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v1, p0, Lu/aly/be;->b:Ljava/util/List;

    if-nez v1, :cond_4

    .line 359
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lu/aly/be;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, "events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v1, p0, Lu/aly/be;->c:Ljava/util/List;

    if-nez v1, :cond_5

    .line 369
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lu/aly/be;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, "game_events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v1, p0, Lu/aly/be;->d:Ljava/util/List;

    if-nez v1, :cond_6

    .line 379
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_2
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 352
    :cond_3
    iget-object v1, p0, Lu/aly/be;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 361
    :cond_4
    iget-object v1, p0, Lu/aly/be;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 371
    :cond_5
    iget-object v1, p0, Lu/aly/be;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 381
    :cond_6
    iget-object v1, p0, Lu/aly/be;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/be;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    return-void
.end method
