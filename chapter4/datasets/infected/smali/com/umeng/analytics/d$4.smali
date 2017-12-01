.class Lcom/umeng/analytics/d$4;
.super Lcom/umeng/analytics/g;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/umeng/analytics/d;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/umeng/analytics/d$4;->c:Lcom/umeng/analytics/d;

    iput-object p2, p0, Lcom/umeng/analytics/d$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/analytics/d$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/umeng/analytics/d$4;->c:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Lu/aly/o;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/analytics/d$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method
