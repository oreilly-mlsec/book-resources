.class public Lcom/android/notification/PushThread;
.super Ljava/lang/Thread;
.source "PushThread.java"


# static fields
.field private static final ADNOTI_ID:I = 0x8686

.field private static final APPNOTI_ID:I = 0x8989

.field private static pushtime:I


# instance fields
.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field private final nService:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/android/notification/PushThread;->pushtime:I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    const-string v0, "com.android.notification.MainService"

    iput-object v0, p0, Lcom/android/notification/PushThread;->nService:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    const-string v0, "com.android.notification.MainService"

    iput-object v0, p0, Lcom/android/notification/PushThread;->nService:Ljava/lang/String;

    .line 54
    const-string v0, "jwd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "class:PushThread  func:run  text:context = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/notification/PushThread;->intent:Landroid/content/Intent;

    .line 58
    return-void
.end method

.method private IfAppPush(Lcom/android/notification/bean/DownApkInfo;)Z
    .locals 6
    .param p1, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;

    .prologue
    const/4 v3, 0x0

    .line 327
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 328
    const-string v5, "IF_PUSH"

    .line 326
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v2

    .line 330
    .local v2, "flag":I
    const/4 v4, 0x2

    if-ne v4, v2, :cond_0

    .line 331
    const-string v4, "jwd"

    .line 332
    const-string v5, "class:PushThread  func:IfAppPush  text:not push app"

    .line 331
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    return v3

    .line 336
    :cond_0
    if-nez p1, :cond_1

    .line 337
    const-string v4, "jwd"

    .line 338
    const-string v5, "class:PushThread  func:IfAppPush  text:read xmlfile error"

    .line 337
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    sget v4, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 344
    const-string v4, "jwd"

    .line 345
    const-string v5, "class:PushThread  func:IfAppPush  text:app img not ok"

    .line 344
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 352
    const-string v4, "jwd"

    .line 353
    const-string v5, "class:PushThread  func:IfAppPush  text:no app img"

    .line 352
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 358
    const-string v4, "jwd"

    .line 359
    const-string v5, "class:PushThread  func:IfAppPush  text:app img error"

    .line 358
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private IfNetworkOk()Z
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/notification/PushThread;->intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/notification/util/AppUtil;->getWebStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "webflag":Ljava/lang/String;
    const-string v1, "NONET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    const/4 v1, 0x1

    .line 315
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ShowAdRequest(Ljava/util/List;I)Z
    .locals 13
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v10, 0x0

    .line 481
    const/4 v5, 0x0

    .line 483
    .local v5, "ifShow":Z
    const/4 v0, 0x0

    .line 485
    .local v0, "app_key":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/notification/util/AppUtil;->GetApkId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 491
    :goto_0
    invoke-static {v0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 493
    const-string v11, "jwd"

    .line 494
    const-string v12, "class:PushThread  func:adNotification  text:ad apk key is null"

    .line 493
    invoke-static {v11, v12}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :goto_1
    return v10

    .line 486
    :catch_0
    move-exception v3

    .line 488
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 499
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/notification/PushThread;->IfNetworkOk()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 502
    sget-object v10, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 503
    const-string v11, "USER_ID"

    .line 502
    invoke-static {v10, v11}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 504
    .local v9, "user_id":Ljava/lang/String;
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v10}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v4

    .line 506
    .local v4, "id":I
    const/4 v6, 0x0

    .line 509
    .local v6, "ret":Ljava/lang/String;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&record_type=4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 512
    const-string v11, "&position_type=1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&apk_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 509
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 513
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/notification/util/Tool;->MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 515
    invoke-static {v6}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 516
    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "array":[Ljava/lang/String;
    const/4 v10, 0x2

    array-length v11, v1

    if-ne v10, v11, :cond_1

    const/4 v10, 0x0

    aget-object v10, v1, v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 518
    const/4 v10, 0x1

    aget-object v10, v1, v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_1

    .line 519
    const/4 v5, 0x1

    .end local v1    # "array":[Ljava/lang/String;
    .end local v4    # "id":I
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "user_id":Ljava/lang/String;
    :cond_1
    :goto_2
    move v10, v5

    .line 543
    goto :goto_1

    .line 525
    .restart local v4    # "id":I
    .restart local v9    # "user_id":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 527
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    sget-object v10, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 530
    .local v7, "retex":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 531
    const/4 v5, 0x1

    goto :goto_2

    .line 536
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "id":I
    .end local v6    # "ret":Ljava/lang/String;
    .end local v7    # "retex":Ljava/lang/String;
    .end local v9    # "user_id":Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 538
    .restart local v6    # "ret":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "true"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 539
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private ShowAppRequest(Ljava/util/List;I)Z
    .locals 13
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v10, 0x0

    .line 557
    const/4 v5, 0x0

    .line 559
    .local v5, "ifShow":Z
    const/4 v0, 0x0

    .line 561
    .local v0, "app_key":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/notification/util/AppUtil;->GetApkId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 567
    :goto_0
    invoke-static {v0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 569
    const-string v11, "jwd"

    .line 570
    const-string v12, "class:PushThread  func:adNotification  text:app apk key is null"

    .line 569
    invoke-static {v11, v12}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :goto_1
    return v10

    .line 562
    :catch_0
    move-exception v3

    .line 564
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 575
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/notification/PushThread;->IfNetworkOk()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 577
    sget-object v10, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 578
    const-string v11, "USER_ID"

    .line 577
    invoke-static {v10, v11}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 579
    .local v9, "user_id":Ljava/lang/String;
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v10}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v4

    .line 581
    .local v4, "id":I
    const/4 v6, 0x0

    .line 585
    .local v6, "ret":Ljava/lang/String;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&record_type=4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 588
    const-string v11, "&position_type=1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&apk_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 585
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 590
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/notification/util/Tool;->MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 592
    invoke-static {v6}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 593
    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "array":[Ljava/lang/String;
    const/4 v10, 0x2

    array-length v11, v1

    if-ne v10, v11, :cond_1

    const/4 v10, 0x0

    aget-object v10, v1, v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 595
    const/4 v10, 0x1

    aget-object v10, v1, v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_1

    .line 596
    const/4 v5, 0x1

    .end local v1    # "array":[Ljava/lang/String;
    .end local v4    # "id":I
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "user_id":Ljava/lang/String;
    :cond_1
    :goto_2
    move v10, v5

    .line 618
    goto :goto_1

    .line 600
    .restart local v4    # "id":I
    .restart local v9    # "user_id":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 602
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 603
    sget-object v10, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 605
    .local v7, "retex":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 606
    const/4 v5, 0x1

    goto :goto_2

    .line 611
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "id":I
    .end local v6    # "ret":Ljava/lang/String;
    .end local v7    # "retex":Ljava/lang/String;
    .end local v9    # "user_id":Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 613
    .restart local v6    # "ret":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "true"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 614
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private UpdatePushAdRecord(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/notification/PushThread;->IfNetworkOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-static {p1}, Lcom/android/notification/util/AppUtil;->UpdateAdRecord(Ljava/util/List;)V

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/notification/PushThread;->UpdatePushAppRecord(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const-string v1, "jwd"

    .line 128
    const-string v2, "class:PushThread  func:UpdatePushAdRecord  text:message:"

    .line 127
    invoke-static {v1, v2, v0}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/android/notification/PushThread;->UpdatePushAppRecord(Ljava/util/List;)V

    goto :goto_0
.end method

.method private UpdatePushAppRecord(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/notification/PushThread;->IfNetworkOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/notification/util/AppUtil;->UpdateAppRecord(Ljava/util/List;Landroid/content/Context;)V

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/notification/PushThread;->onPrePushAdAndApk(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const-string v1, "jwd"

    .line 146
    const-string v2, "class:PushThread  func:UpdatePushAppRecord  text:message:"

    .line 144
    invoke-static {v1, v2, v0}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/android/notification/PushThread;->onPrePushAdAndApk(Ljava/util/List;)V

    goto :goto_0
.end method

.method private UpdatePushRecord()V
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 107
    .local v0, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    :try_start_0
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-direct {p0, v0}, Lcom/android/notification/PushThread;->UpdatePushAdRecord(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    const-string v2, "jwd"

    .line 113
    const-string v3, "class:PushThread  func:UpdatePushRecord  text:message:"

    .line 112
    invoke-static {v2, v3, v1}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private adNotification(Ljava/util/List;I)V
    .locals 13
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    if-nez p1, :cond_0

    .line 671
    :goto_0
    return-void

    .line 632
    :cond_0
    const-string v9, "jwd"

    .line 633
    const-string v10, "class:PushThread  func:adNotification  text:to psuh ad"

    .line 632
    invoke-static {v9, v10}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v9, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    .line 637
    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 636
    check-cast v3, Landroid/app/NotificationManager;

    .line 638
    .local v3, "manager":Landroid/app/NotificationManager;
    const v9, 0x8686

    invoke-virtual {v3, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 640
    new-instance v4, Landroid/app/Notification;

    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwddrawablead()I

    move-result v9

    .line 641
    const-string v10, "\u65b0\u901a\u77e5"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 640
    invoke-direct {v4, v9, v10, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 642
    .local v4, "notification":Landroid/app/Notification;
    const/16 v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 643
    const/4 v7, 0x0

    .line 645
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 646
    .local v2, "intentdisplay":Landroid/content/Intent;
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 648
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v9}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v0

    .line 649
    .local v0, "adId":I
    const-string v9, "ADID"

    invoke-virtual {v2, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    const-string v9, "position_type"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    const-string v9, "SendCilck"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    iget-object v9, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    .line 653
    const-class v10, Lcom/android/notification/AdService;

    .line 652
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 654
    iget-object v9, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    const v10, 0x8686

    .line 655
    const/high16 v11, 0x8000000

    .line 654
    invoke-static {v9, v10, v2, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 657
    iget-object v9, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 658
    .local v5, "packagename":Ljava/lang/String;
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdadlayout()I

    move-result v9

    invoke-direct {v8, v5, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 659
    .local v8, "view":Landroid/widget/RemoteViews;
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v9}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, "path":Ljava/lang/String;
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 661
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iput-object v8, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 662
    iget-object v9, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdadid()I

    move-result v10

    invoke-virtual {v9, v10, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 663
    const/4 v9, 0x1

    iput v9, v4, Landroid/app/Notification;->iconLevel:I

    .line 664
    iput-object v7, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 666
    const v9, 0x8686

    invoke-virtual {v3, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 668
    const-string v9, "jwd"

    .line 669
    const-string v10, "class:PushThread  func:adNotification  text:to psuh ad over"

    .line 668
    invoke-static {v9, v10}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private appNotification(Ljava/util/List;I)V
    .locals 13
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const v12, 0x8989

    const/4 v11, 0x1

    .line 375
    if-nez p1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 378
    :cond_0
    const-string v7, "jwd"

    .line 379
    const-string v8, "class:PushThread  func:appNotification  text:to push app"

    .line 378
    invoke-static {v7, v8}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v7, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    .line 382
    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 381
    check-cast v2, Landroid/app/NotificationManager;

    .line 383
    .local v2, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 384
    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwddrawableapk()I

    move-result v7

    .line 385
    const-string v8, "\u65b0\u901a\u77e5"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 384
    invoke-direct {v3, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 386
    .local v3, "notification":Landroid/app/Notification;
    const/16 v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 388
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    .line 389
    const-class v8, Lcom/android/notification/AdService;

    .line 388
    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .local v1, "intentdisplay":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 391
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    const-string v7, "APPID"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 393
    const-string v7, "position_type"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v7, "SendCilck"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const-string v8, "ADID"

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v7}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v7

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    iget-object v7, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    .line 397
    const/high16 v8, 0x8000000

    .line 396
    invoke-static {v7, v12, v1, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 399
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 400
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdapplayout()I

    move-result v8

    .line 399
    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 401
    .local v6, "view":Landroid/widget/RemoteViews;
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v7}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iput-object v6, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 404
    iget-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 405
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdappid()I

    move-result v8

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 406
    iput v11, v3, Landroid/app/Notification;->iconLevel:I

    .line 407
    iput-object v5, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 409
    invoke-virtual {v2, v12, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 411
    const-string v7, "jwd"

    .line 412
    const-string v8, "class:PushThread  func:appNotification  text:to push app over"

    .line 411
    invoke-static {v7, v8}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private ifPushAd(Lcom/android/notification/bean/DownApkInfo;)Z
    .locals 8
    .param p1, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;

    .prologue
    const/4 v3, 0x0

    .line 425
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 426
    const-string v5, "IF_PUSH"

    .line 424
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v2

    .line 428
    .local v2, "flag":I
    const/4 v4, 0x2

    if-ne v4, v2, :cond_0

    .line 429
    const-string v4, "jwd"

    .line 430
    const-string v5, "class:PushThread  func:ifPushAd  text:not push ad"

    .line 429
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_0
    return v3

    .line 434
    :cond_0
    if-nez p1, :cond_1

    .line 435
    const-string v4, "jwd"

    .line 436
    const-string v5, "class:PushThread  func:ifPushAd  text:read xmlfile error"

    .line 435
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_1
    sget v4, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 441
    const-string v4, "jwd"

    .line 442
    const-string v5, "class:PushThread  func:ifPushAd  text:down ad error"

    .line 441
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 448
    const-string v4, "jwd"

    .line 449
    const-string v5, "class:PushThread  func:ifPushAd  text:no ad img"

    .line 448
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getImgSize()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 454
    const-string v4, "jwd"

    .line 455
    const-string v5, "class:PushThread  func:ifPushAd  text:ad img not ok"

    .line 454
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 460
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    .line 461
    const-string v4, "jwd"

    .line 462
    const-string v5, "class:PushThread  func:ifPushAd  text:ad img error"

    .line 461
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private onPrePushAd(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v1, 0x0

    .line 208
    .local v1, "ifAdShow":Z
    const/4 v0, 0x0

    .line 211
    .local v0, "ifAdOk":Z
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    .line 212
    const-string v5, "AD_SHOW_INDEX"

    .line 210
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, "index":I
    invoke-direct {p0}, Lcom/android/notification/PushThread;->IfNetworkOk()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/notification/util/AppUtil;->GetLastAdRecordIndex(Ljava/util/List;I)I

    move-result v2

    .line 218
    :cond_2
    const/4 v3, 0x0

    .local v3, "nI":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 244
    :goto_2
    if-eqz v1, :cond_0

    .line 245
    invoke-direct {p0, p1, v2}, Lcom/android/notification/PushThread;->adNotification(Ljava/util/List;I)V

    goto :goto_0

    .line 221
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 222
    const/4 v2, 0x0

    .line 225
    :cond_4
    const/4 v5, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v4}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v4

    if-ne v5, v4, :cond_5

    .line 226
    add-int/lit8 v2, v2, 0x1

    .line 218
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 230
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/notification/bean/DownApkInfo;

    invoke-direct {p0, v4}, Lcom/android/notification/PushThread;->ifPushAd(Lcom/android/notification/bean/DownApkInfo;)Z

    move-result v0

    .line 231
    if-eqz v0, :cond_6

    .line 233
    invoke-direct {p0, p1, v2}, Lcom/android/notification/PushThread;->ShowAdRequest(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 234
    const/4 v1, 0x1

    .line 235
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    .line 236
    const-string v5, "AD_SHOW_INDEX"

    .line 237
    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 235
    invoke-static {v4, v5, v6}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 241
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private onPrePushAdAndApk(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 163
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 164
    .local v2, "hour":I
    invoke-static {}, Lcom/android/notification/util/AppUtil;->getTimerconfig()Lcom/android/notification/bean/TimerConfigure;

    move-result-object v3

    .line 166
    .local v3, "timerconfig":Lcom/android/notification/bean/TimerConfigure;
    invoke-virtual {v3}, Lcom/android/notification/bean/TimerConfigure;->getAdStartTime()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 167
    invoke-virtual {v3}, Lcom/android/notification/bean/TimerConfigure;->getAdEndTime()I

    move-result v4

    if-gt v2, v4, :cond_1

    .line 169
    sget v4, Lcom/android/notification/PushThread;->pushtime:I

    invoke-virtual {v3}, Lcom/android/notification/bean/TimerConfigure;->getPushtime()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 171
    sget v4, Lcom/android/notification/PushThread;->pushtime:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/notification/PushThread;->pushtime:I

    .line 174
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/notification/PushThread;->onPrePushAd(Ljava/util/List;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/android/notification/PushThread;->onPrepushApp(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v1

    .line 179
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    const-string v4, "jwd"

    .line 183
    const-string v5, "class:PushThread  func:onPrePushAdAndApk  text:message:"

    .line 181
    invoke-static {v4, v5, v1}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/android/notification/PushThread;->onPrepushApp(Ljava/util/List;)V

    goto :goto_0

    .line 189
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    sput v4, Lcom/android/notification/PushThread;->pushtime:I

    goto :goto_0
.end method

.method private onPrepushApp(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    if-nez p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const/4 v1, 0x0

    .line 261
    .local v1, "ifAppShow":Z
    const/4 v0, 0x0

    .line 264
    .local v0, "ifAppOk":Z
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    .line 265
    const-string v5, "APK_SHOW_INDEX"

    .line 263
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v2

    .line 267
    .local v2, "index":I
    invoke-direct {p0}, Lcom/android/notification/PushThread;->IfNetworkOk()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/android/notification/util/AppUtil;->GetLastAdRecordIndex(Ljava/util/List;I)I

    move-result v2

    .line 271
    :cond_2
    const/4 v3, 0x0

    .local v3, "nI":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 296
    :goto_2
    if-eqz v1, :cond_0

    .line 297
    invoke-direct {p0, p1, v2}, Lcom/android/notification/PushThread;->appNotification(Ljava/util/List;I)V

    goto :goto_0

    .line 273
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 274
    const/4 v2, 0x0

    .line 277
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v4}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v4

    if-nez v4, :cond_5

    .line 278
    add-int/lit8 v2, v2, 0x1

    .line 271
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/notification/bean/DownApkInfo;

    invoke-direct {p0, v4}, Lcom/android/notification/PushThread;->IfAppPush(Lcom/android/notification/bean/DownApkInfo;)Z

    move-result v0

    .line 283
    if-eqz v0, :cond_6

    .line 285
    invoke-direct {p0, p1, v2}, Lcom/android/notification/PushThread;->ShowAppRequest(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 286
    const/4 v1, 0x1

    .line 287
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    .line 288
    const-string v5, "APK_SHOW_INDEX"

    .line 289
    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-static {v4, v5, v6}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 293
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private reStartAlarmService()V
    .locals 6

    .prologue
    .line 719
    iget-object v4, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    .line 720
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 719
    check-cast v2, Landroid/app/ActivityManager;

    .line 722
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 724
    .local v3, "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const-string v4, "com.android.notification.MainService"

    .line 723
    invoke-static {v3, v4}, Lcom/android/notification/util/AppUtil;->MyServiceOrNotStart(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 726
    .local v0, "IfServiceOn":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 727
    .local v1, "intentservice":Landroid/content/Intent;
    const-string v4, "com.android.notification.MainService"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    if-eqz v0, :cond_0

    .line 731
    iget-object v4, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 734
    :cond_0
    const-string v4, "FLAG"

    const-string v5, "TIMER_RESTART"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    iget-object v4, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 736
    return-void
.end method

.method private updateLocalConfig()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 687
    .local v0, "IfRestartService":Z
    invoke-static {}, Lcom/android/notification/util/AppUtil;->hasSdcard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 689
    iget-object v2, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/notification/PushThread;->intent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/notification/util/AppUtil;->Checkconfigfile(Landroid/content/Context;Landroid/content/Intent;)V

    .line 691
    iget-object v2, p0, Lcom/android/notification/PushThread;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/notification/PushThread;->intent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/notification/util/AppUtil;->getWebStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "webflag":Ljava/lang/String;
    const-string v2, "NONET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 694
    invoke-static {}, Lcom/android/notification/util/AppUtil;->RegistrationUser()V

    .line 695
    invoke-static {}, Lcom/android/notification/util/AppUtil;->UpDateTimerConfigfile()V

    .line 698
    :cond_0
    invoke-static {}, Lcom/android/notification/util/AppUtil;->IfReStartTimer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 699
    const-string v2, "jwd"

    .line 700
    const-string v3, "class:PushThread  func:updateLocalConfig  text:Restart alarm"

    .line 699
    invoke-static {v2, v3}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const/4 v0, 0x1

    .line 702
    invoke-direct {p0}, Lcom/android/notification/PushThread;->reStartAlarmService()V

    .line 703
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 704
    const-string v3, "IF_START_TIMER"

    const-string v4, "false"

    .line 703
    invoke-static {v2, v3, v4}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .end local v1    # "webflag":Ljava/lang/String;
    :cond_1
    return v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 63
    const-string v5, "jwd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class:PushThread  func:run  text:turn pushtime = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    sget v7, Lcom/android/notification/PushThread;->pushtime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "strDate":Ljava/lang/String;
    const-string v5, "jwd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class:PushThread  func:run  text:startTime = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 68
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/android/notification/util/AppUtil;->hasSdcard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/android/notification/PushThread;->updateLocalConfig()Z

    move-result v2

    .line 77
    .local v2, "if_restart_service":Z
    if-nez v2, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/notification/PushThread;->UpdatePushRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v2    # "if_restart_service":Z
    :cond_0
    :goto_0
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "strDate1":Ljava/lang/String;
    const-string v5, "jwd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class:  func:run  text:endTime = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void

    .line 80
    .end local v4    # "strDate1":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const-string v5, "jwd"

    .line 84
    const-string v6, "class:PushThread  func:run  text:message:"

    .line 83
    invoke-static {v5, v6, v1}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    invoke-direct {p0}, Lcom/android/notification/PushThread;->UpdatePushRecord()V

    goto :goto_0
.end method
