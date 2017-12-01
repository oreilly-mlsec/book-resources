.class public final Lcom/google/ads/i;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/ads/d;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/d;Ljava/util/Map;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/j;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/ads/i;->a:Lcom/google/ads/d;

    .line 68
    iput-object p2, p0, Lcom/google/ads/i;->b:Ljava/util/Map;

    .line 69
    iput-boolean p3, p0, Lcom/google/ads/i;->c:Z

    .line 70
    iput-boolean p4, p0, Lcom/google/ads/i;->d:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/ads/i;->e:Z

    .line 72
    iput-boolean v0, p0, Lcom/google/ads/i;->f:Z

    .line 73
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/i;->d:Z

    .line 178
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/i;->e:Z

    .line 189
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/i;->f:Z

    .line 200
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/google/ads/i;->e:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/ads/i;->a:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->g()Lcom/google/ads/c;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v0}, Lcom/google/ads/c;->b()V

    .line 163
    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/i;->e:Z

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/i;->f:Z

    if-eqz v0, :cond_1

    .line 167
    invoke-static {p1}, Lcom/google/ads/a;->a(Landroid/webkit/WebView;)V

    .line 168
    iput-boolean v1, p0, Lcom/google/ads/i;->f:Z

    .line 170
    :cond_1
    return-void

    .line 161
    :cond_2
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading(\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    .line 87
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    const-string v0, "An error occurred while parsing the url parameters."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    move v0, v1

    .line 141
    :goto_0
    return v0

    .line 96
    :cond_0
    const-string v3, "ai"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    if-eqz v0, :cond_1

    .line 98
    iget-object v3, p0, Lcom/google/ads/i;->a:Lcom/google/ads/d;

    invoke-virtual {v3}, Lcom/google/ads/d;->l()Lcom/google/ads/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/ads/f;->a(Ljava/lang/String;)V

    .line 102
    :cond_1
    invoke-static {v2}, Lcom/google/ads/a;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/google/ads/i;->a:Lcom/google/ads/d;

    iget-object v3, p0, Lcom/google/ads/i;->b:Ljava/util/Map;

    invoke-static {v0, v3, v2, p1}, Lcom/google/ads/a;->a(Lcom/google/ads/d;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    move v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    iget-boolean v0, p0, Lcom/google/ads/i;->d:Z

    if-eqz v0, :cond_4

    .line 107
    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 113
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    const-string v2, "u"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, p0, Lcom/google/ads/i;->a:Lcom/google/ads/d;

    new-instance v3, Lcom/google/ads/e;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lcom/google/ads/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/d;Lcom/google/ads/e;)V

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_4
    iget-boolean v0, p0, Lcom/google/ads/i;->c:Z

    if-eqz v0, :cond_6

    .line 124
    iget-object v0, p0, Lcom/google/ads/i;->a:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->w()Z

    move-result v0

    .line 125
    if-eqz v0, :cond_5

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    const-string v0, "webapp"

    .line 132
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 133
    const-string v4, "u"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v2, p0, Lcom/google/ads/i;->a:Lcom/google/ads/d;

    new-instance v4, Lcom/google/ads/e;

    invoke-direct {v4, v0, v3}, Lcom/google/ads/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v4}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/d;Lcom/google/ads/e;)V

    move v0, v1

    .line 136
    goto :goto_0

    .line 128
    :cond_5
    const-string v0, "intent"

    goto :goto_1

    .line 138
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is not a GMSG and can\'t handle URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    move v0, v1

    .line 141
    goto/16 :goto_0
.end method
