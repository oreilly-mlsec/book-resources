.class public Lu/aly/k$a;
.super Ljava/lang/Object;
.source "CacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lu/aly/k;

.field private b:Lcom/umeng/analytics/ReportPolicy$i;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lu/aly/k;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 463
    iput-object p1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput v1, p0, Lu/aly/k$a;->c:I

    .line 458
    iput v1, p0, Lu/aly/k$a;->d:I

    .line 460
    iput v1, p0, Lu/aly/k$a;->e:I

    .line 461
    iput v1, p0, Lu/aly/k$a;->f:I

    .line 464
    invoke-static {p1}, Lu/aly/k;->a(Lu/aly/k;)Lu/aly/f$a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lu/aly/f$a;->a(II)[I

    move-result-object v0

    .line 465
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/k$a;->c:I

    .line 466
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/k$a;->d:I

    .line 467
    return-void
.end method

.method private b(II)Lcom/umeng/analytics/ReportPolicy$i;
    .locals 4

    .prologue
    .line 531
    .line 533
    packed-switch p1, :pswitch_data_0

    .line 561
    :pswitch_0
    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 565
    :goto_0
    return-object v0

    .line 535
    :pswitch_1
    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$d;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$d;-><init>()V

    goto :goto_0

    .line 538
    :pswitch_2
    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$e;

    if-eqz v0, :cond_1

    .line 539
    iget-object v1, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    move-object v0, v1

    .line 540
    check-cast v0, Lcom/umeng/analytics/ReportPolicy$e;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/umeng/analytics/ReportPolicy$e;->a(J)V

    move-object v0, v1

    goto :goto_0

    .line 542
    :cond_1
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$e;

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->c(Lu/aly/k;)Lu/aly/aa;

    move-result-object v1

    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/ReportPolicy$e;-><init>(Lu/aly/aa;J)V

    goto :goto_0

    .line 546
    :pswitch_3
    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$g;

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    .line 547
    invoke-static {v1}, Lu/aly/k;->c(Lu/aly/k;)Lu/aly/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$g;-><init>(Lu/aly/aa;)V

    goto :goto_0

    .line 550
    :pswitch_4
    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$h;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$h;-><init>()V

    goto :goto_0

    .line 553
    :pswitch_5
    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$j;

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    .line 554
    invoke-static {v1}, Lu/aly/k;->f(Lu/aly/k;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$j;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 557
    :pswitch_6
    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v0, v0, Lcom/umeng/analytics/ReportPolicy$k;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$k;

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    .line 558
    invoke-static {v1}, Lu/aly/k;->c(Lu/aly/k;)Lu/aly/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$k;-><init>(Lu/aly/aa;)V

    goto :goto_0

    .line 561
    :cond_6
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$d;

    invoke-direct {v0}, Lcom/umeng/analytics/ReportPolicy$d;-><init>()V

    goto/16 :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .prologue
    .line 569
    iput p1, p0, Lu/aly/k$a;->e:I

    .line 570
    iput p2, p0, Lu/aly/k$a;->f:I

    .line 571
    return-void
.end method

.method public a(Lu/aly/f$a;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 574
    invoke-virtual {p1, v0, v0}, Lu/aly/f$a;->a(II)[I

    move-result-object v0

    .line 575
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/k$a;->c:I

    .line 576
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/k$a;->d:I

    .line 577
    return-void
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 473
    iget-object v2, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v2}, Lu/aly/k;->b(Lu/aly/k;)Lu/aly/al;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/al;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 475
    iget-object v2, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v2, v2, Lcom/umeng/analytics/ReportPolicy$b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v2}, Lcom/umeng/analytics/ReportPolicy$i;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    :goto_1
    iput-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 514
    :cond_0
    :goto_2
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/bt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void

    :cond_1
    move v1, v0

    .line 475
    goto :goto_0

    .line 476
    :cond_2
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$b;

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->c(Lu/aly/k;)Lu/aly/aa;

    move-result-object v1

    iget-object v2, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v2}, Lu/aly/k;->b(Lu/aly/k;)Lu/aly/al;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/ReportPolicy$b;-><init>(Lu/aly/aa;Lu/aly/al;)V

    goto :goto_1

    .line 478
    :cond_3
    iget-object v2, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    instance-of v2, v2, Lcom/umeng/analytics/ReportPolicy$c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    invoke-virtual {v2}, Lcom/umeng/analytics/ReportPolicy$i;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 479
    :goto_3
    if-nez v1, :cond_0

    .line 480
    if-eqz p1, :cond_5

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->d(Lu/aly/k;)Lu/aly/am;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/am;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 481
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$c;

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->d(Lu/aly/k;)Lu/aly/am;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/am;->b()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$c;-><init>(I)V

    iput-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    .line 482
    iget-object v0, p0, Lu/aly/k$a;->a:Lu/aly/k;

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->d(Lu/aly/k;)Lu/aly/am;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/am;->b()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Lu/aly/k;->a(Lu/aly/k;I)V

    goto :goto_2

    :cond_4
    move v1, v0

    .line 478
    goto :goto_3

    .line 485
    :cond_5
    sget-boolean v1, Lu/aly/bt;->a:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->a(Lu/aly/k;)Lu/aly/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/f$a;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 486
    const-string v0, "MobclickAgent"

    const-string v1, "Debug: send log every 15 seconds"

    invoke-static {v0, v1}, Lu/aly/bt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v0, Lcom/umeng/analytics/ReportPolicy$a;

    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->c(Lu/aly/k;)Lu/aly/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/ReportPolicy$a;-><init>(Lu/aly/aa;)V

    iput-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_2

    .line 488
    :cond_6
    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->e(Lu/aly/k;)Lu/aly/ak;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/ak;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 489
    const-string v1, "MobclickAgent"

    const-string v2, "Start A/B Test"

    invoke-static {v1, v2}, Lu/aly/bt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->e(Lu/aly/k;)Lu/aly/ak;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/ak;->b()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 492
    iget-object v0, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v0}, Lu/aly/k;->a(Lu/aly/k;)Lu/aly/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/f$a;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 493
    iget-object v0, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v0}, Lu/aly/k;->a(Lu/aly/k;)Lu/aly/f$a;

    move-result-object v0

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lu/aly/f$a;->d(I)I

    move-result v0

    .line 500
    :cond_7
    :goto_4
    iget-object v1, p0, Lu/aly/k$a;->a:Lu/aly/k;

    invoke-static {v1}, Lu/aly/k;->e(Lu/aly/k;)Lu/aly/ak;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/ak;->b()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lu/aly/k$a;->b(II)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    iput-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_2

    .line 494
    :cond_8
    iget v0, p0, Lu/aly/k$a;->d:I

    if-lez v0, :cond_9

    .line 495
    iget v0, p0, Lu/aly/k$a;->d:I

    goto :goto_4

    .line 497
    :cond_9
    iget v0, p0, Lu/aly/k$a;->f:I

    goto :goto_4

    .line 502
    :cond_a
    iget v1, p0, Lu/aly/k$a;->e:I

    .line 503
    iget v0, p0, Lu/aly/k$a;->f:I

    .line 504
    iget v2, p0, Lu/aly/k$a;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 505
    iget v1, p0, Lu/aly/k$a;->c:I

    .line 506
    iget v0, p0, Lu/aly/k$a;->d:I

    .line 508
    :cond_b
    invoke-direct {p0, v1, v0}, Lu/aly/k$a;->b(II)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    iput-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    goto/16 :goto_2
.end method

.method public b(Z)Lcom/umeng/analytics/ReportPolicy$i;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lu/aly/k$a;->a(Z)V

    .line 519
    iget-object v0, p0, Lu/aly/k$a;->b:Lcom/umeng/analytics/ReportPolicy$i;

    return-object v0
.end method
