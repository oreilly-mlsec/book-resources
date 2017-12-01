.class Lcom/umeng/analytics/d$5;
.super Lcom/umeng/analytics/g;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/umeng/analytics/d;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/umeng/analytics/d$5;->d:Lcom/umeng/analytics/d;

    iput-object p2, p0, Lcom/umeng/analytics/d$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/analytics/d$5;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/umeng/analytics/d$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/umeng/analytics/d$5;->d:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Lu/aly/o;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/analytics/d$5;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/umeng/analytics/d$5;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lu/aly/o;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 261
    return-void
.end method
