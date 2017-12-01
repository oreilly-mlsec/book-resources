.class public abstract Lcom/appbrain/c/i;
.super Lcom/appbrain/c/b;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/c/i;->e()Lcom/appbrain/c/i;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/appbrain/c/i;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic f()Lcom/appbrain/c/b;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/c/i;->e()Lcom/appbrain/c/i;

    move-result-object v0

    return-object v0
.end method
