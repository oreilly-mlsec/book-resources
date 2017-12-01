.class public final Lcom/google/ads/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/c$e;,
        Lcom/google/ads/c$c;,
        Lcom/google/ads/c$a;,
        Lcom/google/ads/c$b;,
        Lcom/google/ads/c$d;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/ads/b;

.field private d:Lcom/google/ads/d;

.field private e:Lcom/google/ads/AdRequest;

.field private f:Landroid/webkit/WebView;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Z

.field private j:Lcom/google/ads/AdRequest$ErrorCode;

.field private k:Z

.field private l:I

.field private m:Ljava/lang/Thread;

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    .line 310
    iput-object v2, p0, Lcom/google/ads/c;->g:Ljava/lang/String;

    .line 314
    iput-object v2, p0, Lcom/google/ads/c;->a:Ljava/lang/String;

    .line 315
    iput-object v2, p0, Lcom/google/ads/c;->b:Ljava/lang/String;

    .line 322
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/c;->h:Ljava/util/LinkedList;

    .line 326
    iput-object v2, p0, Lcom/google/ads/c;->j:Lcom/google/ads/AdRequest$ErrorCode;

    .line 330
    iput-boolean v3, p0, Lcom/google/ads/c;->k:Z

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/c;->l:I

    .line 336
    invoke-virtual {p1}, Lcom/google/ads/d;->e()Landroid/app/Activity;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    .line 341
    new-instance v1, Lcom/google/ads/h;

    invoke-direct {v1, v0, v2}, Lcom/google/ads/h;-><init>(Landroid/content/Context;Lcom/google/ads/AdSize;)V

    iput-object v1, p0, Lcom/google/ads/c;->f:Landroid/webkit/WebView;

    .line 342
    iget-object v0, p0, Lcom/google/ads/c;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/ads/i;

    sget-object v2, Lcom/google/ads/a;->a:Ljava/util/Map;

    invoke-direct {v1, p1, v2, v3, v3}, Lcom/google/ads/i;-><init>(Lcom/google/ads/d;Ljava/util/Map;ZZ)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 346
    iget-object v0, p0, Lcom/google/ads/c;->f:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/google/ads/c;->f:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 350
    new-instance v0, Lcom/google/ads/b;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/b;-><init>(Lcom/google/ads/c;Lcom/google/ads/d;)V

    iput-object v0, p0, Lcom/google/ads/c;->c:Lcom/google/ads/b;

    .line 358
    :goto_0
    return-void

    .line 354
    :cond_0
    iput-object v2, p0, Lcom/google/ads/c;->f:Landroid/webkit/WebView;

    .line 355
    iput-object v2, p0, Lcom/google/ads/c;->c:Lcom/google/ads/b;

    .line 356
    const-string v0, "activity was null while trying to create an AdLoader."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/google/ads/AdRequest;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/c$b;,
            Lcom/google/ads/c$d;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 583
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 587
    invoke-virtual {p1, v0}, Lcom/google/ads/AdRequest;->getRequestMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 590
    iget-object v2, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    invoke-virtual {v2}, Lcom/google/ads/d;->l()Lcom/google/ads/f;

    move-result-object v2

    .line 593
    invoke-virtual {v2}, Lcom/google/ads/f;->h()J

    move-result-wide v3

    .line 594
    cmp-long v5, v3, v6

    if-lez v5, :cond_0

    .line 595
    const-string v5, "prl"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_0
    invoke-virtual {v2}, Lcom/google/ads/f;->g()Ljava/lang/String;

    move-result-object v3

    .line 600
    if-eqz v3, :cond_1

    .line 601
    const-string v4, "ppcl"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_1
    invoke-virtual {v2}, Lcom/google/ads/f;->f()Ljava/lang/String;

    move-result-object v3

    .line 607
    if-eqz v3, :cond_2

    .line 608
    const-string v4, "pcl"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_2
    invoke-virtual {v2}, Lcom/google/ads/f;->e()J

    move-result-wide v3

    .line 613
    cmp-long v5, v3, v6

    if-lez v5, :cond_3

    .line 614
    const-string v5, "pcc"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_3
    const-string v3, "preqs"

    invoke-static {}, Lcom/google/ads/f;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-virtual {v2}, Lcom/google/ads/f;->j()Ljava/lang/String;

    move-result-object v3

    .line 622
    if-eqz v3, :cond_4

    .line 623
    const-string v4, "pai"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_4
    invoke-virtual {v2}, Lcom/google/ads/f;->k()Z

    move-result v3

    .line 628
    if-eqz v3, :cond_5

    .line 629
    const-string v3, "aoi_timeout"

    const-string v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_5
    invoke-virtual {v2}, Lcom/google/ads/f;->m()Z

    move-result v3

    .line 634
    if-eqz v3, :cond_6

    .line 635
    const-string v3, "aoi_nofill"

    const-string v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_6
    invoke-virtual {v2}, Lcom/google/ads/f;->p()Ljava/lang/String;

    move-result-object v3

    .line 640
    if-eqz v3, :cond_7

    .line 641
    const-string v4, "pit"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_7
    invoke-virtual {v2}, Lcom/google/ads/f;->a()V

    .line 648
    invoke-virtual {v2}, Lcom/google/ads/f;->d()V

    .line 651
    iget-object v2, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    invoke-virtual {v2}, Lcom/google/ads/d;->f()Lcom/google/ads/Ad;

    move-result-object v2

    instance-of v2, v2, Lcom/google/ads/InterstitialAd;

    if-eqz v2, :cond_9

    .line 652
    const-string v2, "format"

    const-string v3, "interstitial_mb"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :goto_0
    const-string v2, "slotname"

    iget-object v3, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    invoke-virtual {v3}, Lcom/google/ads/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v2, "js"

    const-string v3, "afma-sdk-a-v4.3.1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 677
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 683
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 686
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 688
    const-string v4, "mv"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_8
    const-string v3, "msid"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string v3, "app_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".android."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string v2, "isu"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 703
    if-nez v2, :cond_b

    .line 704
    new-instance v0, Lcom/google/ads/c$d;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/c$d;-><init>(Lcom/google/ads/c;Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_9
    iget-object v2, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    invoke-virtual {v2}, Lcom/google/ads/d;->k()Lcom/google/ads/AdSize;

    move-result-object v2

    .line 655
    invoke-virtual {v2}, Lcom/google/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v3

    .line 656
    if-eqz v3, :cond_a

    .line 657
    const-string v2, "format"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 659
    :cond_a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 660
    const-string v4, "w"

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v4, "h"

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v2, "ad_frame"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 681
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/ads/c$b;

    const-string v1, "NameNotFoundException"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/c$b;-><init>(Lcom/google/ads/c;Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_b
    const-string v3, "net"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 711
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    .line 712
    const-string v3, "cap"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_c
    const-string v2, "u_audio"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->g(Landroid/content/Context;)Lcom/google/ads/util/AdUtil$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/util/AdUtil$a;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-static {p2}, Lcom/google/ads/util/AdUtil;->a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 723
    const-string v3, "u_sd"

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v3, "u_h"

    invoke-static {v0, v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v3, "u_w"

    invoke-static {v0, v2}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string v0, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 738
    const-string v0, "simulator"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    :cond_d
    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/ads/c;->e:Lcom/google/ads/AdRequest;

    instance-of v0, v0, Lcom/google/ads/searchads/SearchAdRequest;

    if-eqz v0, :cond_e

    const-string v0, "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AFMA_buildAdURL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</script></head><body></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adRequestUrlHtml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 751
    return-object v0

    .line 745
    :cond_e
    const-string v0, "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>"

    goto :goto_1
.end method

.method private a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .locals 8

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/ads/c;->c:Lcom/google/ads/b;

    invoke-virtual {v0}, Lcom/google/ads/b;->a()V

    .line 767
    iget-object v7, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/c$a;

    iget-object v2, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    iget-object v3, p0, Lcom/google/ads/c;->f:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/google/ads/c;->c:Lcom/google/ads/b;

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/c$a;-><init>(Lcom/google/ads/c;Lcom/google/ads/d;Landroid/webkit/WebView;Lcom/google/ads/b;Lcom/google/ads/AdRequest$ErrorCode;Z)V

    invoke-virtual {v7, v0}, Lcom/google/ads/d;->a(Ljava/lang/Runnable;)V

    .line 772
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 371
    const-string v0, "AdLoader cancelled."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/google/ads/c;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 375
    iget-object v0, p0, Lcom/google/ads/c;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 378
    iget-object v0, p0, Lcom/google/ads/c;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/google/ads/c;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/c;->m:Ljava/lang/Thread;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/google/ads/c;->c:Lcom/google/ads/b;

    invoke-virtual {v0}, Lcom/google/ads/b;->a()V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/c;->i:Z

    .line 387
    return-void
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 869
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/c;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    monitor-exit p0

    return-void

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 1

    .prologue
    .line 845
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/c;->j:Lcom/google/ads/AdRequest$ErrorCode;

    .line 846
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    monitor-exit p0

    return-void

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/google/ads/AdRequest;)V
    .locals 1

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/ads/c;->e:Lcom/google/ads/AdRequest;

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/c;->i:Z

    .line 397
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/c;->m:Ljava/lang/Thread;

    .line 398
    iget-object v0, p0, Lcom/google/ads/c;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 399
    return-void
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/c;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 815
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/google/ads/c;->a:Ljava/lang/String;

    .line 816
    iput-object p1, p0, Lcom/google/ads/c;->b:Ljava/lang/String;

    .line 817
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    monitor-exit p0

    return-void

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 879
    iput-boolean p1, p0, Lcom/google/ads/c;->n:Z

    .line 880
    return-void
.end method

.method final declared-synchronized b()V
    .locals 1

    .prologue
    .line 858
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/c;->k:Z

    .line 859
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    monitor-exit p0

    return-void

    .line 858
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/c;->g:Ljava/lang/String;

    .line 832
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    monitor-exit p0

    return-void

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 407
    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/c;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/c;->c:Lcom/google/ads/b;

    if-nez v0, :cond_1

    .line 412
    :cond_0
    const-string v0, "adRequestWebView was null while trying to load an ad."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :goto_0
    return-void

    .line 418
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->e()Landroid/app/Activity;

    move-result-object v2

    .line 419
    if-nez v2, :cond_2

    .line 420
    const-string v0, "activity was null while forming an ad request."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 426
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->n()J

    move-result-wide v3

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 431
    iget-object v0, p0, Lcom/google/ads/c;->e:Lcom/google/ads/AdRequest;

    invoke-virtual {v0, v2}, Lcom/google/ads/AdRequest;->getRequestMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "extras"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 433
    check-cast v0, Ljava/util/Map;

    .line 434
    const-string v1, "_adUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 435
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 436
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/ads/c;->a:Ljava/lang/String;

    .line 439
    :cond_3
    const-string v1, "_orientation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 441
    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 442
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/c;->l:I

    .line 451
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/ads/c;->a:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_d

    .line 454
    :try_start_5
    iget-object v0, p0, Lcom/google/ads/c;->e:Lcom/google/ads/AdRequest;

    invoke-direct {p0, v0, v2}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/google/ads/c$d; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/ads/c$b; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 464
    :try_start_6
    iget-object v1, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    new-instance v2, Lcom/google/ads/c$c;

    iget-object v7, p0, Lcom/google/ads/c;->f:Landroid/webkit/WebView;

    const/4 v8, 0x0

    invoke-direct {v2, p0, v7, v8, v0}, Lcom/google/ads/c$c;-><init>(Lcom/google/ads/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/d;->a(Ljava/lang/Runnable;)V

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    .line 469
    cmp-long v2, v0, v9

    if-lez v2, :cond_5

    .line 470
    :try_start_7
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 479
    :cond_5
    :try_start_8
    iget-boolean v0, p0, Lcom/google/ads/c;->i:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_7

    .line 480
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 443
    :cond_6
    :try_start_a
    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/c;->l:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 547
    :catch_0
    move-exception v0

    .line 549
    :try_start_b
    const-string v1, "An unknown error occurred in AdLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V

    .line 552
    :goto_2
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 455
    :catch_1
    move-exception v0

    .line 456
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to connect to network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 457
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 458
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 459
    :catch_2
    move-exception v0

    .line 460
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught internal exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 461
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 462
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    .line 472
    :catch_3
    move-exception v0

    .line 474
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while getting the URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 475
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 481
    :cond_7
    :try_start_12
    iget-object v0, p0, Lcom/google/ads/c;->j:Lcom/google/ads/AdRequest$ErrorCode;

    if-eqz v0, :cond_8

    .line 482
    iget-object v0, p0, Lcom/google/ads/c;->j:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 483
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_0

    .line 484
    :cond_8
    :try_start_14
    iget-object v0, p0, Lcom/google/ads/c;->g:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while getting the URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 488
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 489
    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_0

    .line 493
    :cond_9
    :try_start_16
    iget-object v0, p0, Lcom/google/ads/c;->c:Lcom/google/ads/b;

    iget-boolean v1, p0, Lcom/google/ads/c;->n:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/b;->a(Z)V

    .line 496
    iget-object v0, p0, Lcom/google/ads/c;->c:Lcom/google/ads/b;

    iget-object v1, p0, Lcom/google/ads/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/b;->a(Ljava/lang/String;)V

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    .line 501
    cmp-long v2, v0, v9

    if-lez v2, :cond_a

    .line 502
    :try_start_17
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 511
    :cond_a
    :try_start_18
    iget-boolean v0, p0, Lcom/google/ads/c;->i:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz v0, :cond_b

    .line 512
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_0

    .line 504
    :catch_4
    move-exception v0

    .line 506
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while getting the HTML: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 507
    :try_start_1b
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_0

    .line 513
    :cond_b
    :try_start_1c
    iget-object v0, p0, Lcom/google/ads/c;->j:Lcom/google/ads/AdRequest$ErrorCode;

    if-eqz v0, :cond_c

    .line 514
    iget-object v0, p0, Lcom/google/ads/c;->j:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 515
    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_0

    .line 516
    :cond_c
    :try_start_1e
    iget-object v0, p0, Lcom/google/ads/c;->b:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while getting the HTML."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 520
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 521
    :try_start_1f
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_0

    .line 526
    :cond_d
    :try_start_20
    iget-object v0, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->i()Lcom/google/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    invoke-virtual {v1}, Lcom/google/ads/d;->j()Lcom/google/ads/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/i;->b()V

    iget-object v1, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    new-instance v2, Lcom/google/ads/c$c;

    iget-object v7, p0, Lcom/google/ads/c;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/ads/c;->b:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v7, v8}, Lcom/google/ads/c$c;-><init>(Lcom/google/ads/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/d;->a(Ljava/lang/Runnable;)V

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    .line 531
    cmp-long v2, v0, v9

    if-lez v2, :cond_e

    .line 532
    :try_start_21
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_5
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 540
    :cond_e
    :try_start_22
    iget-boolean v0, p0, Lcom/google/ads/c;->k:Z

    if-eqz v0, :cond_f

    .line 541
    iget-object v0, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    new-instance v1, Lcom/google/ads/c$e;

    iget-object v2, p0, Lcom/google/ads/c;->d:Lcom/google/ads/d;

    iget-object v3, p0, Lcom/google/ads/c;->h:Ljava/util/LinkedList;

    iget v4, p0, Lcom/google/ads/c;->l:I

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/ads/c$e;-><init>(Lcom/google/ads/c;Lcom/google/ads/d;Ljava/util/LinkedList;I)V

    invoke-virtual {v0, v1}, Lcom/google/ads/d;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 534
    :catch_5
    move-exception v0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while loading the HTML: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 536
    :try_start_23
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/16 :goto_0

    .line 543
    :cond_f
    :try_start_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while loading the HTML."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->c(Ljava/lang/String;)V

    .line 545
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto/16 :goto_2
.end method
