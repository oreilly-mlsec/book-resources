.class Lu/aly/l$2;
.super Lcom/umeng/analytics/g;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/l;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/l;


# direct methods
.method constructor <init>(Lu/aly/l;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lu/aly/l$2;->a:Lu/aly/l;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lu/aly/l$2;->a:Lu/aly/l;

    invoke-static {v0}, Lu/aly/l;->a(Lu/aly/l;)Lu/aly/p;

    move-result-object v0

    invoke-interface {v0}, Lu/aly/p;->a()V

    .line 47
    return-void
.end method
