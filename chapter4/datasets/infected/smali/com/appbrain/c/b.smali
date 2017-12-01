.class public abstract Lcom/appbrain/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appbrain/c/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([BI)Lcom/appbrain/c/b;
    .locals 3

    :try_start_0
    invoke-static {p1, p2}, Lcom/appbrain/c/d;->a([BI)Lcom/appbrain/c/d;

    move-result-object v0

    invoke-static {}, Lcom/appbrain/c/g;->a()Lcom/appbrain/c/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/appbrain/c/b;->a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appbrain/c/d;->a(I)V
    :try_end_0
    .catch Lcom/appbrain/c/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;
.end method

.method public final a([B)Lcom/appbrain/c/b;
    .locals 1

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/appbrain/c/b;->a([BI)Lcom/appbrain/c/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/p;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/appbrain/c/b;->a(Lcom/appbrain/c/d;Lcom/appbrain/c/g;)Lcom/appbrain/c/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/c/b;->f()Lcom/appbrain/c/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Lcom/appbrain/c/b;
.end method
