.class final Lcom/appbrain/a/j;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/appbrain/a/h;


# direct methods
.method constructor <init>(Lcom/appbrain/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/j;->a:Lcom/appbrain/a/h;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const-string v0, ""

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    const/16 v2, 0x14

    const/16 v1, 0x8

    if-le p2, v2, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/j;->a:Lcom/appbrain/a/h;

    invoke-static {v0}, Lcom/appbrain/a/h;->a(Lcom/appbrain/a/h;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/j;->a:Lcom/appbrain/a/h;

    invoke-static {v0}, Lcom/appbrain/a/h;->a(Lcom/appbrain/a/h;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    if-le p2, v2, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/j;->a:Lcom/appbrain/a/h;

    invoke-static {v0}, Lcom/appbrain/a/h;->b(Lcom/appbrain/a/h;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/j;->a:Lcom/appbrain/a/h;

    invoke-static {v0}, Lcom/appbrain/a/h;->b(Lcom/appbrain/a/h;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
