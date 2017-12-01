.class public final Lcom/google/ads/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "js"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    if-nez v0, :cond_0

    .line 31
    const-string v1, "Could not get the JS to evaluate."

    invoke-static {v1}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    .line 36
    :cond_0
    instance-of v1, p3, Lcom/google/ads/h;

    if-eqz v1, :cond_1

    .line 37
    check-cast p3, Lcom/google/ads/h;

    .line 44
    invoke-virtual {p3}, Lcom/google/ads/h;->b()Lcom/google/ads/AdActivity;

    move-result-object v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    const-string v0, "Could not get the AdActivity from the AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v0, "Trying to evaluate JS in a WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v1}, Lcom/google/ads/AdActivity;->getOpeningAdWebView()Lcom/google/ads/h;

    move-result-object v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    const-string v0, "Could not get the opening WebView."

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_3
    invoke-static {v1, v0}, Lcom/google/ads/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method
