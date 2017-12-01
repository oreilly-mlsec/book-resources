.class public Lu/aly/bf;
.super Ljava/lang/Object;
.source "Latent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bf$c;,
        Lu/aly/bf$d;,
        Lu/aly/bf$a;,
        Lu/aly/bf$b;,
        Lu/aly/bf$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/cj",
        "<",
        "Lu/aly/bf;",
        "Lu/aly/bf$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/bf$e;",
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

.field private static final h:I = 0x0

.field private static final i:I = 0x1


# instance fields
.field public a:I

.field public b:J

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 32
    new-instance v0, Lu/aly/dn;

    const-string v1, "Latent"

    invoke-direct {v0, v1}, Lu/aly/dn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bf;->d:Lu/aly/dn;

    .line 34
    new-instance v0, Lu/aly/dd;

    const-string v1, "latency"

    invoke-direct {v0, v1, v6, v5}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->e:Lu/aly/dd;

    .line 35
    new-instance v0, Lu/aly/dd;

    const-string v1, "interval"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lu/aly/dd;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->f:Lu/aly/dd;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bf;->g:Ljava/util/Map;

    .line 39
    sget-object v0, Lu/aly/bf;->g:Ljava/util/Map;

    const-class v1, Lu/aly/ds;

    new-instance v2, Lu/aly/bf$b;

    invoke-direct {v2, v3}, Lu/aly/bf$b;-><init>(Lu/aly/bf$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/bf;->g:Ljava/util/Map;

    const-class v1, Lu/aly/dt;

    new-instance v2, Lu/aly/bf$d;

    invoke-direct {v2, v3}, Lu/aly/bf$d;-><init>(Lu/aly/bf$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bf$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 114
    sget-object v1, Lu/aly/bf$e;->a:Lu/aly/bf$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "latency"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lu/aly/bf$e;->b:Lu/aly/bf$e;

    new-instance v2, Lu/aly/cv;

    const-string v3, "interval"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bf;->c:Ljava/util/Map;

    .line 119
    const-class v0, Lu/aly/bf;

    sget-object v1, Lu/aly/bf;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 123
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-direct {p0}, Lu/aly/bf;-><init>()V

    .line 130
    iput p1, p0, Lu/aly/bf;->a:I

    .line 131
    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Z)V

    .line 132
    iput-wide p2, p0, Lu/aly/bf;->b:J

    .line 133
    invoke-virtual {p0, v0}, Lu/aly/bf;->b(Z)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lu/aly/bf;)V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 140
    iget-byte v0, p1, Lu/aly/bf;->j:B

    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 141
    iget v0, p1, Lu/aly/bf;->a:I

    iput v0, p0, Lu/aly/bf;->a:I

    .line 142
    iget-wide v0, p1, Lu/aly/bf;->b:J

    iput-wide v0, p0, Lu/aly/bf;->b:J

    .line 143
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
    .line 249
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 250
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Lu/aly/di;)V
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

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    new-instance v0, Lu/aly/dc;

    new-instance v1, Lu/aly/du;

    invoke-direct {v1, p1}, Lu/aly/du;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/dc;-><init>(Lu/aly/dw;)V

    invoke-virtual {p0, v0}, Lu/aly/bf;->b(Lu/aly/di;)V
    :try_end_0
    .catch Lu/aly/cp; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
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
    sget-object v0, Lu/aly/bf;->d:Lu/aly/dn;

    return-object v0
.end method

.method static synthetic l()Lu/aly/dd;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bf;->e:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic m()Lu/aly/dd;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bf;->f:Lu/aly/dd;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bf;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lu/aly/bf;

    invoke-direct {v0, p0}, Lu/aly/bf;-><init>(Lu/aly/bf;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bf;
    .locals 1

    .prologue
    .line 162
    iput p1, p0, Lu/aly/bf;->a:I

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Z)V

    .line 164
    return-object p0
.end method

.method public a(J)Lu/aly/bf;
    .locals 1

    .prologue
    .line 185
    iput-wide p1, p0, Lu/aly/bf;->b:J

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bf;->b(Z)V

    .line 187
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
    .line 208
    sget-object v0, Lu/aly/bf;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/di;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dr;

    invoke-interface {v0}, Lu/aly/dr;->b()Lu/aly/dq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dq;->b(Lu/aly/di;Lu/aly/cj;)V

    .line 209
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 177
    iget-byte v0, p0, Lu/aly/bf;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/cg;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 178
    return-void
.end method

.method public synthetic b(I)Lu/aly/cq;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lu/aly/bf;->c(I)Lu/aly/bf$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Z)V

    .line 152
    iput v0, p0, Lu/aly/bf;->a:I

    .line 153
    invoke-virtual {p0, v0}, Lu/aly/bf;->b(Z)V

    .line 154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/bf;->b:J

    .line 155
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
    .line 212
    sget-object v0, Lu/aly/bf;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/di;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dr;

    invoke-interface {v0}, Lu/aly/dr;->b()Lu/aly/dq;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dq;->a(Lu/aly/di;Lu/aly/cj;)V

    .line 213
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 200
    iget-byte v0, p0, Lu/aly/bf;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/cg;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 201
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lu/aly/bf;->a:I

    return v0
.end method

.method public c(I)Lu/aly/bf$e;
    .locals 1

    .prologue
    .line 204
    invoke-static {p1}, Lu/aly/bf$e;->a(I)Lu/aly/bf$e;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 168
    iget-byte v0, p0, Lu/aly/bf;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cg;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 169
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 173
    iget-byte v0, p0, Lu/aly/bf;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cg;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lu/aly/bf;->b:J

    return-wide v0
.end method

.method public synthetic g()Lu/aly/cj;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lu/aly/bf;->a()Lu/aly/bf;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 191
    iget-byte v0, p0, Lu/aly/bf;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/cg;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 192
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 196
    iget-byte v0, p0, Lu/aly/bf;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/cg;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cp;
        }
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v1, "latency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget v1, p0, Lu/aly/bf;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, "interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-wide v1, p0, Lu/aly/bf;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
