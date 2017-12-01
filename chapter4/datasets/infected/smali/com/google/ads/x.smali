.class public final Lcom/google/ads/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/d;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/x;->a:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/ads/x;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/d;

    .line 45
    if-nez v0, :cond_0

    .line 46
    const-string v0, "The ad must be gone, so cancelling the refresh timer."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/d;->x()V

    goto :goto_0
.end method
