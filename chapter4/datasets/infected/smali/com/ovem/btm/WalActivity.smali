.class public Lcom/ovem/btm/WalActivity;
.super Lcom/m/u/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/m/u/b;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ae:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/m/u/b;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ae:Landroid/content/res/AssetManager;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->af:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/m/u/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->af:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ah:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ovem/btm/WalActivity;->ag:Landroid/app/Activity;

    sget-object v2, Lcom/m/u/ac;->by:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/m/u/as;->aa(Ljava/util/HashMap;Landroid/app/Activity;Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lcom/m/u/b;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/m/u/b;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/m/u/aa;->aa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ovem/btm/WalActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/m/u/aq;->aa()V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ovem/btm/WalActivity;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/ovem/btm/WalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/ovem/btm/WalActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ovem/btm/WalActivity;->ad:Ljava/lang/String;

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ad:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ad:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ovem/btm/WalActivity;->ab(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ah:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ovem/btm/WalActivity;->ag:Landroid/app/Activity;

    sget-object v2, Lcom/m/u/ac;->ce:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/m/u/as;->aa(Ljava/util/HashMap;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/m/u/b;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ah:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ovem/btm/WalActivity;->ag:Landroid/app/Activity;

    sget-object v2, Lcom/m/u/ac;->bx:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/m/u/as;->aa(Ljava/util/HashMap;Landroid/app/Activity;Ljava/lang/String;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/m/u/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ah:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ovem/btm/WalActivity;->ag:Landroid/app/Activity;

    sget-object v2, Lcom/m/u/ac;->cc:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/m/u/as;->aa(Ljava/util/HashMap;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/m/u/b;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 3

    invoke-super {p0}, Lcom/m/u/b;->onRestart()V

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ah:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ovem/btm/WalActivity;->ag:Landroid/app/Activity;

    sget-object v2, Lcom/m/u/ac;->ca:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/m/u/as;->aa(Ljava/util/HashMap;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/m/u/b;->onResume()V

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ah:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ovem/btm/WalActivity;->ag:Landroid/app/Activity;

    sget-object v2, Lcom/m/u/ac;->cb:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/m/u/as;->aa(Ljava/util/HashMap;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Lcom/m/u/b;->onStart()V

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ah:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ovem/btm/WalActivity;->ag:Landroid/app/Activity;

    sget-object v2, Lcom/m/u/ac;->bz:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/m/u/as;->aa(Ljava/util/HashMap;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    iget-object v0, p0, Lcom/ovem/btm/WalActivity;->ah:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ovem/btm/WalActivity;->ag:Landroid/app/Activity;

    sget-object v2, Lcom/m/u/ac;->cd:[B

    invoke-static {v2}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/m/u/as;->aa(Ljava/util/HashMap;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/m/u/b;->onStop()V

    return-void
.end method
