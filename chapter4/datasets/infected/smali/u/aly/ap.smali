.class public Lu/aly/ap;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ap$c;,
        Lu/aly/ap$d;,
        Lu/aly/ap$a;,
        Lu/aly/ap$b;,
        Lu/aly/ap$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/cj",
        "<",
        "Lu/aly/ap;",
        "Lu/aly/ap$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ap$e;",
            "Lu/aly/cv;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/dn;

.field private static final e:Lu/aly/dd;

.field private static final f:Lu/aly/dd;

.field private static final g:Ljava/util/Map;
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

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 32
    new-instance v0, Lu/aly/dn;

    const-string v1, "ActiveUser"

    invoke-direct {v0, v1}, Lu/aly/dn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ap;->d:Lu/aly/dn;

    .line 34
    new-instance v0, Lu/aly/dd;

    const-string v1, "provider"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ap;->e:Lu/aly/dd;

    .line 35
    new-instance v0, Lu/aly/dd;

    const-string v1, "puid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ap;->f:Lu/aly/dd;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ap;->g:Ljava/util/Map;

    .line 39
    sget-object v0, Lu/aly/ap;->g:Ljava/util/Map;

    const-class v1, Lu/aly/ds;

    new-instance v2, Lu/aly/ap$b;

    invoke-direct {v2, v3}, Lu/aly/ap$b;-><init>(Lu/aly/ap$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/ap;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dt;

    new-instance v2, Lu/aly/ap$d;

    invoke-direct {v2, v3}, Lu/aly/ap$d;-><init>(Lu/aly/ap$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ap$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 111
    sget-object v1, Lu/aly/ap$e;->a:Lu/aly/ap$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "provider"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lu/aly/ap$e;->b:Lu/aly/ap$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "puid"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ap;->c:Ljava/util/Map;

    .line 116
    const-class v0, Lu/aly/ap;

    sget-object v1, Lu/aly/ap;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lu/aly/ap;-><init>()V

    .line 127
    iput-object p1, p0, Lu/aly/ap;->a:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lu/aly/ap;->b:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public constructor <init>(Lu/aly/ap;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Lu/aly/ap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p1, Lu/aly/ap;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ap;->a:Ljava/lang/String;

    .line 138
    :cond_0
    invoke-virtual {p1}, Lu/aly/ap;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p1, Lu/aly/ap;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ap;->b:Ljava/lang/String;

    .line 141
    :cond_1
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
    .line 258
    :try_start_0
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/ap;->a(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
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
    .line 250
    :try_start_0
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/ap;->b(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic k()Lu/aly/dn;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/ap;->d:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic l()Lu/aly/dd;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/ap;->e:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic m()Lu/aly/dd;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/ap;->f:Lu/aly/dd;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/ap$e;
    .locals 1

    .prologue
    .line 202
    invoke-static {p1}, Lu/aly/ap$e;->a(I)Lu/aly/ap$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/ap;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lu/aly/ap;

    invoke-direct {v0, p0}, Lu/aly/ap;-><init>(Lu/aly/ap;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ap;
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lu/aly/ap;->a:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public a(Lu/aly/di;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lu/aly/ap;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/di;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dr;

    invoke-interface {v0}, Lu/aly/dr;->b()Lu/aly/dq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dq;->b(Lu/aly/di;Lu/aly/cj;)V

    .line 207
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ap;->a:Ljava/lang/String;

    .line 175
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/ap;
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lu/aly/ap;->b:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cq;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lu/aly/ap;->a(I)Lu/aly/ap$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lu/aly/ap;->a:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lu/aly/ap;->b:Ljava/lang/String;

    .line 151
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
    .line 210
    sget-object v0, Lu/aly/ap;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/di;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dr;

    invoke-interface {v0}, Lu/aly/dr;->b()Lu/aly/dq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dq;->a(Lu/aly/di;Lu/aly/cj;)V

    .line 211
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ap;->b:Ljava/lang/String;

    .line 199
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lu/aly/ap;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ap;->a:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lu/aly/ap;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lu/aly/ap;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic g()Lu/aly/cj;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lu/aly/ap;->a()Lu/aly/ap;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ap;->b:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lu/aly/ap;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lu/aly/ap;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'provider\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget-object v0, p0, Lu/aly/ap;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'puid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActiveUser("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lu/aly/ap;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 220
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, "puid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v1, p0, Lu/aly/ap;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 228
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    iget-object v1, p0, Lu/aly/ap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :cond_1
    iget-object v1, p0, Lu/aly/ap;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
