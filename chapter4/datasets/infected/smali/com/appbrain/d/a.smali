.class public abstract Lcom/appbrain/d/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private a:Lcmn/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "There was a network error. Please try again."

    sput-object v0, Lcom/appbrain/d/a;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/appbrain/c/h;Ljava/lang/String;)Lcom/appbrain/b/d;
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcmn/h;

    invoke-direct {v0, p1, p2}, Lcmn/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appbrain/d/a;->a:Lcmn/h;

    return-void
.end method

.method protected final b(Lcom/appbrain/c/h;Ljava/lang/String;)[B
    .locals 3

    const-string v0, "ClientRequest$"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/appbrain/d/a;->a(Lcom/appbrain/c/h;Ljava/lang/String;)Lcom/appbrain/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/d/a;->a:Lcmn/h;

    new-instance v2, Lcom/appbrain/b/a;

    invoke-direct {v2}, Lcom/appbrain/b/a;-><init>()V

    invoke-static {v0}, Lcom/appbrain/b/a;->a(Lcom/appbrain/b/d;)[B

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcmn/h;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/appbrain/b/a;

    invoke-direct {v1}, Lcom/appbrain/b/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/appbrain/b/a;->a([B)[B

    move-result-object v0

    goto :goto_0
.end method
