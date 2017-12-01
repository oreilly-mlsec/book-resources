.class public final Lcom/appbrain/a/h;
.super Lcom/appbrain/a;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/view/ViewGroup;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Landroid/app/Activity;

.field private f:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/h;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private a(Lcom/appbrain/e/d;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appbrain/a/h;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/appbrain/a/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appbrain/a/h;->c:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v0, Lcom/appbrain/b/a;

    invoke-direct {v0}, Lcom/appbrain/b/a;-><init>()V

    const-string v0, "ow"

    invoke-static {p1, v0}, Lcom/appbrain/a/p;->a(Lcom/appbrain/c/h;Ljava/lang/String;)Lcom/appbrain/b/d;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/b/a;->a(Lcom/appbrain/b/d;)[B

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcmn/f;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/appbrain/a/h;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appbrain/a/v;->g()Lcom/appbrain/RemoteSettings;

    move-result-object v3

    const-string v4, "offer_url"

    const-string v5, "/offerwall/"

    invoke-interface {v3, v4, v5}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/appbrain/a/h;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/appbrain/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/appbrain/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/appbrain/a/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appbrain/AppBrain;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/h;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/appbrain/a/k;->a(Landroid/content/Context;Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/appbrain/a/j;

    invoke-direct {v1, p0}, Lcom/appbrain/a/j;-><init>(Lcom/appbrain/a/h;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/appbrain/a/i;

    invoke-direct {v1, p0}, Lcom/appbrain/a/i;-><init>(Lcom/appbrain/a/h;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "Loading..."

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0xbbbbbc

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0xa

    invoke-virtual {v3, v0, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x1010079

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_1

    const v0, 0x1010288

    :cond_1
    new-instance v4, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v0, 0x14

    const/16 v3, 0x28

    invoke-virtual {v1, v0, v3, v7, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iput-object v1, p0, Lcom/appbrain/a/h;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/appbrain/a/h;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appbrain/a/h;->f:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/appbrain/a/h;->f:Landroid/app/ProgressDialog;

    const-string v1, "Loading apps..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appbrain/a/h;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/appbrain/a/h;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/appbrain/a/h;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/appbrain/a/h;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appbrain/a/h;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/a/v;->g()Lcom/appbrain/RemoteSettings;

    move-result-object v1

    const-string v2, "offer_url"

    const-string v3, "/offerwall/"

    invoke-interface {v1, v2, v3}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/h;->c:Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/e/d;->k()Lcom/appbrain/e/e;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/appbrain/a/b;->a(Landroid/content/Intent;)Lcom/appbrain/a/b;

    move-result-object v1

    iget v2, v1, Lcom/appbrain/a/b;->b:I

    invoke-virtual {v0, v2}, Lcom/appbrain/e/e;->a(I)Lcom/appbrain/e/e;

    iget v1, v1, Lcom/appbrain/a/b;->a:I

    invoke-virtual {v0, v1}, Lcom/appbrain/e/e;->b(I)Lcom/appbrain/e/e;

    iget-object v1, p0, Lcom/appbrain/a/h;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "src"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/appbrain/e/f;->a(I)Lcom/appbrain/e/f;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/appbrain/e/e;->a(Lcom/appbrain/e/f;)Lcom/appbrain/e/e;

    :cond_2
    invoke-virtual {v0}, Lcom/appbrain/e/e;->a()Lcom/appbrain/e/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/a/h;->a(Lcom/appbrain/e/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->i()V

    goto/16 :goto_0
.end method

.method public final a(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/h;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
