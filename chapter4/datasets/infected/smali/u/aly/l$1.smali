.class Lu/aly/l$1;
.super Lcom/umeng/analytics/g;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/l;->a(Lu/aly/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/q;

.field final synthetic b:Lu/aly/l;


# direct methods
.method constructor <init>(Lu/aly/l;Lu/aly/q;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lu/aly/l$1;->b:Lu/aly/l;

    iput-object p2, p0, Lu/aly/l$1;->a:Lu/aly/q;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lu/aly/l$1;->b:Lu/aly/l;

    invoke-static {v0}, Lu/aly/l;->a(Lu/aly/l;)Lu/aly/p;

    move-result-object v0

    iget-object v1, p0, Lu/aly/l$1;->a:Lu/aly/q;

    invoke-interface {v0, v1}, Lu/aly/p;->a(Lu/aly/q;)V

    .line 35
    return-void
.end method
