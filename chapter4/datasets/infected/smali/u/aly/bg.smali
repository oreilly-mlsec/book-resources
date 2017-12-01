.class public Lu/aly/bg;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bg$c;,
        Lu/aly/bg$d;,
        Lu/aly/bg$a;,
        Lu/aly/bg$b;,
        Lu/aly/bg$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/cj",
        "<",
        "Lu/aly/bg;",
        "Lu/aly/bg$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bg$e;",
            "Lu/aly/cv;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lu/aly/dn;

.field private static final f:Lu/aly/dd;

.field private static final g:Lu/aly/dd;

.field private static final h:Lu/aly/dd;

.field private static final i:Ljava/util/Map;
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

.field private static final j:I = 0x0

.field private static final k:I = 0x1

.field private static final l:I = 0x2


# instance fields
.field public a:D

.field public b:D

.field public c:J

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xa

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lu/aly/dn;

    const-string v1, "Location"

    invoke-direct {v0, v1}, Lu/aly/dn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bg;->e:Lu/aly/dn;

    .line 35
    new-instance v0, Lu/aly/dd;

    const-string v1, "lat"

    invoke-direct {v0, v1, v6, v5}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->f:Lu/aly/dd;

    .line 36
    new-instance v0, Lu/aly/dd;

    const-string v1, "lng"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->g:Lu/aly/dd;

    .line 37
    new-instance v0, Lu/aly/dd;

    const-string v1, "ts"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bg;->h:Lu/aly/dd;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bg;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/bg;->i:Ljava/util/Map;

    const-class v1, Lu/aly/ds;

    new-instance v2, Lu/aly/bg$b;

    invoke-direct {v2, v3}, Lu/aly/bg$b;-><init>(Lu/aly/bg$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/bg;->i:Ljava/util/Map;

    const-class v1, Lu/aly/dt;

    new-instance v2, Lu/aly/bg$d;

    invoke-direct {v2, v3}, Lu/aly/bg$d;-><init>(Lu/aly/bg$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bg$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 121
    sget-object v1, Lu/aly/bg$e;->a:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "lat"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lu/aly/bg$e;->b:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "lng"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/bg$e;->c:Lu/aly/bg$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "ts"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bg;->d:Ljava/util/Map;

    .line 128
    const-class v0, Lu/aly/bg;

    sget-object v1, Lu/aly/bg;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bg;->m:B

    .line 132
    return-void
.end method

.method public constructor <init>(DDJ)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-direct {p0}, Lu/aly/bg;-><init>()V

    .line 140
    iput-wide p1, p0, Lu/aly/bg;->a:D

    .line 141
    invoke-virtual {p0, v0}, Lu/aly/bg;->a(Z)V

    .line 142
    iput-wide p3, p0, Lu/aly/bg;->b:D

    .line 143
    invoke-virtual {p0, v0}, Lu/aly/bg;->b(Z)V

    .line 144
    iput-wide p5, p0, Lu/aly/bg;->c:J

    .line 145
    invoke-virtual {p0, v0}, Lu/aly/bg;->c(Z)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lu/aly/bg;)V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bg;->m:B

    .line 152
    iget-byte v0, p1, Lu/aly/bg;->m:B

    iput-byte v0, p0, Lu/aly/bg;->m:B

    .line 153
    iget-wide v0, p1, Lu/aly/bg;->a:D

    iput-wide v0, p0, Lu/aly/bg;->a:D

    .line 154
    iget-wide v0, p1, Lu/aly/bg;->b:D

    iput-wide v0, p0, Lu/aly/bg;->b:D

    .line 155
    iget-wide v0, p1, Lu/aly/bg;->c:J

    iput-wide v0, p0, Lu/aly/bg;->c:J

    .line 156
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
    .line 292
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bg;->m:B

    .line 293
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/bg;->a(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
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
    .line 283
    :try_start_0
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/bg;->b(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cp;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic n()Lu/aly/dn;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bg;->e:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic o()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bg;->f:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic p()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bg;->g:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic q()Lu/aly/dd;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bg;->h:Lu/aly/dd;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/bg$e;
    .locals 1

    .prologue
    .line 242
    invoke-static {p1}, Lu/aly/bg$e;->a(I)Lu/aly/bg$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/bg;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lu/aly/bg;

    invoke-direct {v0, p0}, Lu/aly/bg;-><init>(Lu/aly/bg;)V

    return-object v0
.end method

.method public a(D)Lu/aly/bg;
    .locals 1

    .prologue
    .line 177
    iput-wide p1, p0, Lu/aly/bg;->a:D

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bg;->a(Z)V

    .line 179
    return-object p0
.end method

.method public a(J)Lu/aly/bg;
    .locals 1

    .prologue
    .line 223
    iput-wide p1, p0, Lu/aly/bg;->c:J

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bg;->c(Z)V

    .line 225
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
    .line 246
    sget-object v0, Lu/aly/bg;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/di;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dr;

    invoke-interface {v0}, Lu/aly/dr;->b()Lu/aly/dq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dq;->b(Lu/aly/di;Lu/aly/cj;)V

    .line 247
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 192
    iget-byte v0, p0, Lu/aly/bg;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/cg;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->m:B

    .line 193
    return-void
.end method

.method public b(D)Lu/aly/bg;
    .locals 1

    .prologue
    .line 200
    iput-wide p1, p0, Lu/aly/bg;->b:D

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bg;->b(Z)V

    .line 202
    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cq;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lu/aly/bg;->a(I)Lu/aly/bg$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Lu/aly/bg;->a(Z)V

    .line 165
    iput-wide v1, p0, Lu/aly/bg;->a:D

    .line 166
    invoke-virtual {p0, v0}, Lu/aly/bg;->b(Z)V

    .line 167
    iput-wide v1, p0, Lu/aly/bg;->b:D

    .line 168
    invoke-virtual {p0, v0}, Lu/aly/bg;->c(Z)V

    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/bg;->c:J

    .line 170
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
    .line 250
    sget-object v0, Lu/aly/bg;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/di;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dr;

    invoke-interface {v0}, Lu/aly/dr;->b()Lu/aly/dq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dq;->a(Lu/aly/di;Lu/aly/cj;)V

    .line 251
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 215
    iget-byte v0, p0, Lu/aly/bg;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/cg;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->m:B

    .line 216
    return-void
.end method

.method public c()D
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lu/aly/bg;->a:D

    return-wide v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 238
    iget-byte v0, p0, Lu/aly/bg;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/cg;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->m:B

    .line 239
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 183
    iget-byte v0, p0, Lu/aly/bg;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cg;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->m:B

    .line 184
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 188
    iget-byte v0, p0, Lu/aly/bg;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cg;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()D
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lu/aly/bg;->b:D

    return-wide v0
.end method

.method public synthetic g()Lu/aly/cj;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lu/aly/bg;->a()Lu/aly/bg;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 206
    iget-byte v0, p0, Lu/aly/bg;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/cg;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->m:B

    .line 207
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 211
    iget-byte v0, p0, Lu/aly/bg;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/cg;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lu/aly/bg;->c:J

    return-wide v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 229
    iget-byte v0, p0, Lu/aly/bg;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/cg;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bg;->m:B

    .line 230
    return-void
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 234
    iget-byte v0, p0, Lu/aly/bg;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/cg;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    const-string v1, "lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-wide v1, p0, Lu/aly/bg;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "lng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-wide v1, p0, Lu/aly/bg;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-wide v1, p0, Lu/aly/bg;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
