.class public final Lcom/appbrain/c/q;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/c/q;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/appbrain/c/l;
    .locals 2

    new-instance v0, Lcom/appbrain/c/l;

    invoke-virtual {p0}, Lcom/appbrain/c/q;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appbrain/c/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
