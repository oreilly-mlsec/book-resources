.class final Lcom/appbrain/a/i;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/appbrain/a/h;


# direct methods
.method constructor <init>(Lcom/appbrain/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/i;->a:Lcom/appbrain/a/h;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "<html><body style=\'color:#444;\'><h2>There was a network error.</h2> Please check your internet connection and try again.</body></html>"

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/i;->a:Lcom/appbrain/a/h;

    invoke-static {v0}, Lcom/appbrain/a/h;->c(Lcom/appbrain/a/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/i;->a:Lcom/appbrain/a/h;

    invoke-static {v0}, Lcom/appbrain/a/h;->d(Lcom/appbrain/a/h;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/i;->a:Lcom/appbrain/a/h;

    invoke-static {v0}, Lcom/appbrain/a/h;->d(Lcom/appbrain/a/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/appbrain/a/i;->a:Lcom/appbrain/a/h;

    invoke-static {v1}, Lcom/appbrain/a/h;->e(Lcom/appbrain/a/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
