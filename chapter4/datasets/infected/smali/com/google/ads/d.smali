.class public final Lcom/google/ads/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/ads/Ad;

.field private d:Lcom/google/ads/AdListener;

.field private e:Lcom/google/ads/c;

.field private f:Lcom/google/ads/AdRequest;

.field private g:Lcom/google/ads/AdSize;

.field private h:Lcom/google/ads/f;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/ads/h;

.field private k:Lcom/google/ads/i;

.field private l:Landroid/os/Handler;

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Landroid/content/SharedPreferences;

.field private q:J

.field private r:Lcom/google/ads/x;

.field private s:Z

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/Ad;Lcom/google/ads/AdSize;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/d;->b:Ljava/lang/ref/WeakReference;

    .line 148
    iput-object p2, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    .line 149
    iput-object p3, p0, Lcom/google/ads/d;->g:Lcom/google/ads/AdSize;

    .line 150
    iput-object p4, p0, Lcom/google/ads/d;->i:Ljava/lang/String;

    .line 151
    iput-boolean p5, p0, Lcom/google/ads/d;->s:Z

    .line 154
    new-instance v0, Lcom/google/ads/f;

    invoke-direct {v0}, Lcom/google/ads/f;-><init>()V

    iput-object v0, p0, Lcom/google/ads/d;->h:Lcom/google/ads/f;

    .line 158
    iput-object v2, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    .line 162
    iput-object v2, p0, Lcom/google/ads/d;->e:Lcom/google/ads/c;

    .line 165
    iput-object v2, p0, Lcom/google/ads/d;->f:Lcom/google/ads/AdRequest;

    .line 169
    iput-boolean v1, p0, Lcom/google/ads/d;->n:Z

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/ads/d;->l:Landroid/os/Handler;

    .line 175
    iput-wide v5, p0, Lcom/google/ads/d;->q:J

    .line 176
    iput-boolean v1, p0, Lcom/google/ads/d;->o:Z

    .line 179
    sget-object v1, Lcom/google/ads/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "GoogleAdMobAdsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/d;->p:Landroid/content/SharedPreferences;

    .line 182
    if-eqz p5, :cond_1

    .line 183
    iget-object v0, p0, Lcom/google/ads/d;->p:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 185
    cmp-long v0, v2, v5

    if-gez v0, :cond_0

    .line 187
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/ads/d;->m:J

    .line 195
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    new-instance v0, Lcom/google/ads/x;

    invoke-direct {v0, p0}, Lcom/google/ads/x;-><init>(Lcom/google/ads/d;)V

    iput-object v0, p0, Lcom/google/ads/d;->r:Lcom/google/ads/x;

    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/d;->t:Ljava/util/LinkedList;

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/d;->u:Ljava/util/LinkedList;

    .line 207
    invoke-virtual {p0}, Lcom/google/ads/d;->a()V

    .line 210
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    .line 211
    return-void

    .line 190
    :cond_0
    :try_start_1
    iput-wide v2, p0, Lcom/google/ads/d;->m:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 193
    :cond_1
    const-wide/32 v2, 0xea60

    :try_start_2
    iput-wide v2, p0, Lcom/google/ads/d;->m:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized A()Z
    .locals 1

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized B()V
    .locals 6

    .prologue
    .line 687
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 688
    if-nez v0, :cond_1

    .line 689
    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :cond_0
    monitor-exit p0

    return-void

    .line 694
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/d;->u:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 695
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/w;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/w;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 697
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/d;->e()Landroid/app/Activity;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    .line 248
    const-string v0, "activity was null while trying to create an AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/ads/h;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/d;->g:Lcom/google/ads/AdSize;

    invoke-direct {v1, v0, v2}, Lcom/google/ads/h;-><init>(Landroid/content/Context;Lcom/google/ads/AdSize;)V

    iput-object v1, p0, Lcom/google/ads/d;->j:Lcom/google/ads/h;

    .line 255
    iget-object v0, p0, Lcom/google/ads/d;->j:Lcom/google/ads/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/h;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    .line 259
    new-instance v0, Lcom/google/ads/i;

    sget-object v1, Lcom/google/ads/a;->b:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/ads/i;-><init>(Lcom/google/ads/d;Ljava/util/Map;ZZ)V

    iput-object v0, p0, Lcom/google/ads/d;->k:Lcom/google/ads/i;

    .line 265
    :goto_1
    iget-object v0, p0, Lcom/google/ads/d;->j:Lcom/google/ads/h;

    iget-object v1, p0, Lcom/google/ads/d;->k:Lcom/google/ads/i;

    invoke-virtual {v0, v1}, Lcom/google/ads/h;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 262
    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/ads/i;

    sget-object v1, Lcom/google/ads/a;->b:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/ads/i;-><init>(Lcom/google/ads/d;Ljava/util/Map;ZZ)V

    iput-object v0, p0, Lcom/google/ads/d;->k:Lcom/google/ads/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(F)V
    .locals 2

    .prologue
    .line 788
    monitor-enter p0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    :try_start_0
    iput-wide v0, p0, Lcom/google/ads/d;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    monitor-exit p0

    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/d;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 4

    .prologue
    .line 760
    sget-object v1, Lcom/google/ads/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/d;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 763
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 765
    iget-boolean v0, p0, Lcom/google/ads/d;->s:Z

    if-eqz v0, :cond_0

    .line 766
    iput-wide p1, p0, Lcom/google/ads/d;->m:J

    .line 768
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/AdListener;)V
    .locals 1

    .prologue
    .line 748
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    monitor-exit p0

    return-void

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2

    .prologue
    .line 544
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/c;

    .line 547
    iget-object v0, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 548
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/google/ads/d;->h:Lcom/google/ads/f;

    .line 550
    invoke-virtual {v0}, Lcom/google/ads/f;->n()V

    .line 557
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    iget-object v1, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    invoke-interface {v0, v1, p1}, Lcom/google/ads/AdListener;->onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_1
    monitor-exit p0

    return-void

    .line 551
    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/google/ads/d;->h:Lcom/google/ads/f;

    .line 553
    invoke-virtual {v0}, Lcom/google/ads/f;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/AdRequest;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 487
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/d;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 494
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    const-string v0, "loadAd called while an interstitial or landing page is displayed, so aborting"

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 502
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/ads/d;->e()Landroid/app/Activity;

    move-result-object v1

    .line 503
    if-nez v1, :cond_3

    .line 504
    const-string v0, "activity is null while trying to load an ad."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/google/ads/d;->p:Landroid/content/SharedPreferences;

    const-string v3, "GoogleAdMobDoritosLife"

    const-wide/32 v4, 0xea60

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 517
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v1}, Lcom/google/ads/aa;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "drt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "drt_ts"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "drt_ts"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v6, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    .line 518
    invoke-static {v1}, Lcom/google/ads/z;->a(Landroid/app/Activity;)V

    .line 523
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/d;->n:Z

    .line 524
    iget-object v0, p0, Lcom/google/ads/d;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 527
    iput-object p1, p0, Lcom/google/ads/d;->f:Lcom/google/ads/AdRequest;

    .line 530
    new-instance v0, Lcom/google/ads/c;

    invoke-direct {v0, p0}, Lcom/google/ads/c;-><init>(Lcom/google/ads/d;)V

    iput-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/c;

    .line 531
    iget-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/c;

    invoke-virtual {v0, p1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/ads/d;->l:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 708
    return-void
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding a tracking URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/google/ads/d;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding a click tracking URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 236
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/ads/d;->u:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/ads/d;->a(Lcom/google/ads/AdListener;)V

    .line 277
    invoke-virtual {p0}, Lcom/google/ads/d;->z()V

    .line 278
    iget-object v0, p0, Lcom/google/ads/d;->j:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .locals 2

    .prologue
    .line 798
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    :cond_0
    monitor-exit p0

    return-void

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/d;->o:Z

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/google/ads/d;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/d;->r:Lcom/google/ads/x;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/d;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :goto_0
    monitor-exit p0

    return-void

    .line 294
    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 4

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    .line 306
    iget-boolean v0, p0, Lcom/google/ads/d;->o:Z

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/ads/d;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/google/ads/d;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/d;->r:Lcom/google/ads/x;

    iget-wide v2, p0, Lcom/google/ads/d;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/d;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_0
    monitor-exit p0

    return-void

    .line 313
    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 316
    :cond_1
    :try_start_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final e()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/ads/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public final f()Lcom/google/ads/Ad;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    return-object v0
.end method

.method public final declared-synchronized g()Lcom/google/ads/c;
    .locals 1

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/ads/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized i()Lcom/google/ads/h;
    .locals 1

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->j:Lcom/google/ads/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Lcom/google/ads/i;
    .locals 1

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->k:Lcom/google/ads/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Lcom/google/ads/AdSize;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/ads/AdSize;

    return-object v0
.end method

.method public final l()Lcom/google/ads/f;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/ads/d;->h:Lcom/google/ads/f;

    return-object v0
.end method

.method public final declared-synchronized m()I
    .locals 1

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/d;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()J
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Lcom/google/ads/d;->m:J

    return-wide v0
.end method

.method public final declared-synchronized o()Z
    .locals 1

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/d;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()Z
    .locals 1

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/d;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized q()V
    .locals 2

    .prologue
    .line 573
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/c;

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/d;->n:Z

    .line 579
    iget-object v0, p0, Lcom/google/ads/d;->j:Lcom/google/ads/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/h;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/google/ads/d;->h:Lcom/google/ads/f;

    invoke-virtual {v0}, Lcom/google/ads/f;->c()V

    .line 585
    iget-object v0, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/google/ads/d;->v()V

    .line 589
    :cond_0
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    iget-object v1, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onReceiveAd(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :cond_1
    monitor-exit p0

    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()V
    .locals 2

    .prologue
    .line 605
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->h:Lcom/google/ads/f;

    invoke-virtual {v0}, Lcom/google/ads/f;->o()V

    .line 607
    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    iget-object v1, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onDismissScreen(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :cond_0
    monitor-exit p0

    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()V
    .locals 2

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    iget-object v1, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onPresentScreen(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :cond_0
    monitor-exit p0

    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t()V
    .locals 2

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/google/ads/d;->d:Lcom/google/ads/AdListener;

    iget-object v1, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onLeaveApplication(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_0
    monitor-exit p0

    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/ads/d;->h:Lcom/google/ads/f;

    invoke-virtual {v0}, Lcom/google/ads/f;->b()V

    .line 650
    invoke-direct {p0}, Lcom/google/ads/d;->B()V

    .line 651
    return-void
.end method

.method public final declared-synchronized v()V
    .locals 6

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 659
    if-nez v0, :cond_1

    .line 660
    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :cond_0
    monitor-exit p0

    return-void

    .line 665
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/d;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 666
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/w;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/w;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 668
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized w()Z
    .locals 1

    .prologue
    .line 679
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->u:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized x()V
    .locals 4

    .prologue
    .line 715
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->f:Lcom/google/ads/AdRequest;

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    instance-of v0, v0, Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/google/ads/d;->c:Lcom/google/ads/Ad;

    check-cast v0, Lcom/google/ads/AdView;

    .line 721
    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/util/AdUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/google/ads/d;->f:Lcom/google/ads/AdRequest;

    invoke-virtual {p0, v0}, Lcom/google/ads/d;->a(Lcom/google/ads/AdRequest;)V

    .line 731
    :goto_0
    iget-object v0, p0, Lcom/google/ads/d;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/d;->r:Lcom/google/ads/x;

    iget-wide v2, p0, Lcom/google/ads/d;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    :goto_1
    monitor-exit p0

    return-void

    .line 727
    :cond_0
    :try_start_1
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 733
    :cond_1
    :try_start_2
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 736
    :cond_2
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized y()V
    .locals 1

    .prologue
    .line 777
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/d;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    monitor-exit p0

    return-void

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z()V
    .locals 1

    .prologue
    .line 809
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/c;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/c;

    invoke-virtual {v0}, Lcom/google/ads/c;->a()V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/d;->e:Lcom/google/ads/c;

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/google/ads/d;->j:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    monitor-exit p0

    return-void

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
