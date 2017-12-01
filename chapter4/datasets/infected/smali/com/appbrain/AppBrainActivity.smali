.class public Lcom/appbrain/AppBrainActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/appbrain/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/appbrain/a/a;->a(Lcom/appbrain/AppBrainActivity;)Lcom/appbrain/a;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/AppBrainActivity;->a:Lcom/appbrain/b;

    iget-object v0, p0, Lcom/appbrain/AppBrainActivity;->a:Lcom/appbrain/b;

    invoke-interface {v0}, Lcom/appbrain/b;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainActivity;->a:Lcom/appbrain/b;

    invoke-interface {v0, p1}, Lcom/appbrain/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/appbrain/AppBrainActivity;->a:Lcom/appbrain/b;

    invoke-interface {v0}, Lcom/appbrain/b;->b()V

    return-void
.end method
