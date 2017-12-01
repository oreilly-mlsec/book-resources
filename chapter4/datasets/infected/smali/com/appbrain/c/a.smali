.class public abstract Lcom/appbrain/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appbrain/c/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final K()[B
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/appbrain/c/a;->G()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/appbrain/c/e;->a([BI)Lcom/appbrain/c/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appbrain/c/a;->a(Lcom/appbrain/c/e;)V

    invoke-virtual {v1}, Lcom/appbrain/c/e;->b()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v0
.end method
