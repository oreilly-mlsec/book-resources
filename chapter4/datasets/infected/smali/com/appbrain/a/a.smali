.class public Lcom/appbrain/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/appbrain/AppBrainActivity;)Lcom/appbrain/a;
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/AppBrainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interstitial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/appbrain/a/c;

    invoke-direct {v0, p0}, Lcom/appbrain/a/c;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "offerwall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/appbrain/a/h;

    invoke-direct {v0, p0}, Lcom/appbrain/a/h;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/appbrain/a;

    invoke-direct {v0}, Lcom/appbrain/a;-><init>()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/appbrain/e/f;)V
    .locals 1

    invoke-static {}, Lcom/appbrain/a/b;->a()Lcom/appbrain/a/b;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/appbrain/a/a;->a(Landroid/content/Context;Lcom/appbrain/e/f;Lcom/appbrain/a/b;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/appbrain/e/f;Lcom/appbrain/a/b;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appbrain/AppBrainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activity"

    const-string v2, "offerwall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "src"

    invoke-virtual {p1}, Lcom/appbrain/e/f;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/appbrain/a/b;->b(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static a(Landroid/content/Context;ZLcom/appbrain/a/b;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appbrain/AppBrainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activity"

    const-string v2, "interstitial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "maybe"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/appbrain/a/b;->b(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
