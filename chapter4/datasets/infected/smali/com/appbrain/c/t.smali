.class final Lcom/appbrain/c/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Iterator;

.field final synthetic b:Lcom/appbrain/c/r;


# direct methods
.method constructor <init>(Lcom/appbrain/c/r;)V
    .locals 1

    iput-object p1, p0, Lcom/appbrain/c/t;->b:Lcom/appbrain/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/appbrain/c/t;->b:Lcom/appbrain/c/r;

    invoke-static {v0}, Lcom/appbrain/c/r;->a(Lcom/appbrain/c/r;)Lcom/appbrain/c/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/c/n;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/c/t;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/c/t;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/c/t;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
