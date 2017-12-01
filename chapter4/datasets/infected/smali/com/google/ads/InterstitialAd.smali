.class public Lcom/google/ads/InterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/Ad;


# instance fields
.field private a:Lcom/google/ads/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adUnitId"    # Ljava/lang/String;
    .param p3, "shortTimeout"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/google/ads/d;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/d;-><init>(Landroid/app/Activity;Lcom/google/ads/Ad;Lcom/google/ads/AdSize;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/d;

    .line 91
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->o()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/ads/AdRequest;)V
    .locals 1
    .param p1, "adRequest"    # Lcom/google/ads/AdRequest;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/d;

    invoke-virtual {v0, p1}, Lcom/google/ads/d;->a(Lcom/google/ads/AdRequest;)V

    .line 113
    return-void
.end method

.method public setAdListener(Lcom/google/ads/AdListener;)V
    .locals 1
    .param p1, "adListener"    # Lcom/google/ads/AdListener;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/d;

    invoke-virtual {v0, p1}, Lcom/google/ads/d;->a(Lcom/google/ads/AdListener;)V

    .line 147
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/ads/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->y()V

    .line 127
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->v()V

    .line 130
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/d;

    new-instance v1, Lcom/google/ads/e;

    const-string v2, "interstitial"

    invoke-direct {v1, v2}, Lcom/google/ads/e;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/d;Lcom/google/ads/e;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "Cannot show interstitial because it is not loaded and ready."

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->z()V

    .line 157
    return-void
.end method
