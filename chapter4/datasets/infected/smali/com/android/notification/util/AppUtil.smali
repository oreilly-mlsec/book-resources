.class public Lcom/android/notification/util/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# static fields
.field public static BOOT_FLAG:I = 0x0

.field public static final g_DownTime:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/android/notification/util/AppUtil;->BOOT_FLAG:I

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AddDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;)V
    .locals 18
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2444
    if-nez p1, :cond_0

    .line 2528
    :goto_0
    return-void

    .line 2448
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2449
    .local v2, "AdId":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2450
    const-string v2, "0"

    .line 2451
    :cond_1
    move-object v14, v2

    .line 2452
    .local v14, "key":Ljava/lang/String;
    move-object v15, v2

    .line 2455
    .local v15, "value":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2456
    .local v4, "AdType":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2457
    const-string v4, "0"

    .line 2458
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2461
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getCilckTime()Ljava/lang/String;

    move-result-object v8

    .line 2462
    .local v8, "DownTime":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 2463
    const-string v8, "0"

    .line 2464
    :cond_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2467
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getDownFlag()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 2468
    .local v13, "downflag":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2469
    const-string v13, "0"

    .line 2470
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2473
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v11

    .line 2474
    .local v11, "ImgUrl":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2475
    const-string v11, "0"

    .line 2476
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2479
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v9

    .line 2480
    .local v9, "ImgFile":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2481
    const-string v9, "0"

    .line 2482
    :cond_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2485
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 2486
    .local v12, "Imgflag":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2487
    const-string v12, "0"

    .line 2488
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2491
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getImgSize()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 2492
    .local v10, "ImgSize":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 2493
    const-string v10, "0"

    .line 2494
    :cond_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2497
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v5

    .line 2498
    .local v5, "AdUrl":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 2499
    const-string v5, "0"

    .line 2500
    :cond_9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2503
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v1

    .line 2504
    .local v1, "AdFile":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 2505
    const-string v1, "0"

    .line 2506
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2509
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2510
    .local v7, "Adflag":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 2511
    const-string v7, "0"

    .line 2512
    :cond_b
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2515
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2516
    .local v3, "AdSize":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 2517
    const-string v3, "0"

    .line 2518
    :cond_c
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2521
    invoke-virtual/range {p1 .. p1}, Lcom/android/notification/bean/DownApkInfo;->getAddRecoedTime()Ljava/lang/String;

    move-result-object v6

    .line 2522
    .local v6, "AddRecordTime":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 2523
    const-string v6, "0"

    .line 2524
    :cond_d
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2526
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/notification/util/Tool;->WriteDownPropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static CheckRecordFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2190
    const/4 v0, 0x0

    .line 2193
    .local v0, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2202
    const-string v2, "jwd"

    const-string v3, "class:AppUtil  func:CheckXMLFile text:CheckXMLFile"

    invoke-static {v2, v3}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2205
    :cond_0
    const-string v2, "jwd"

    const-string v3, "class:AppUtil  func:CheckXMLFile text:xml is null"

    invoke-static {v2, v3}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    :cond_1
    return-void

    .line 2209
    :cond_2
    const/4 v1, 0x0

    .local v1, "nI":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2211
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2212
    new-instance v3, Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2213
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 2216
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2217
    new-instance v3, Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2218
    sget v3, Lcom/android/notification/configure/DownStatus;->BAN_DOWN:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v2

    if-eq v3, v2, :cond_4

    .line 2219
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 2222
    :cond_4
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getDownFlag()I

    move-result v2

    if-ne v3, v2, :cond_5

    .line 2223
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 2226
    :cond_5
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v2

    if-ne v3, v2, :cond_6

    .line 2227
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 2230
    :cond_6
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v2

    if-ne v3, v2, :cond_7

    .line 2231
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 2235
    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/notification/util/Tool;->IfAPKOk(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2236
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v2

    if-ne v3, v2, :cond_8

    .line 2237
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 2257
    :goto_1
    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 2209
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2239
    :cond_8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    goto :goto_1

    .line 2242
    :cond_9
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v2

    if-ne v3, v2, :cond_a

    .line 2243
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v2

    if-ne v3, v2, :cond_a

    .line 2244
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    goto :goto_1

    .line 2246
    :cond_a
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    .line 2247
    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v2

    .line 2246
    if-ne v3, v2, :cond_b

    .line 2248
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    .line 2249
    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v2

    .line 2248
    if-ne v3, v2, :cond_b

    .line 2250
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    goto :goto_1

    .line 2252
    :cond_b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    goto :goto_1
.end method

.method public static Checkconfigfile(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2045
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2046
    .local v0, "Phonefile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2047
    invoke-static {p0, p1}, Lcom/android/notification/util/AppUtil;->getDefaultPhoneConfig(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2050
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2051
    .local v2, "Timerfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2052
    invoke-static {}, Lcom/android/notification/util/AppUtil;->getDefaultTimerConfig()V

    .line 2063
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2064
    .local v1, "Pushfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2065
    invoke-static {}, Lcom/android/notification/util/AppUtil;->getDefaultPushConfig()V

    .line 2067
    :cond_2
    return-void

    .line 2056
    .end local v1    # "Pushfile":Ljava/io/File;
    :cond_3
    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 2057
    const-string v4, "TIMER_VERSION"

    .line 2055
    invoke-static {v3, v4}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2058
    invoke-static {}, Lcom/android/notification/util/AppUtil;->getDefaultTimerConfig()V

    goto :goto_0
.end method

.method public static CreateDir(Ljava/lang/String;)V
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1744
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1745
    .local v3, "patharray":[Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1746
    .local v2, "path":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "ni":I
    :goto_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_1

    .line 1750
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1751
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1752
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1754
    :cond_0
    return-void

    .line 1747
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1746
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static DeleteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;)V
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2408
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2409
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2434
    :goto_0
    return-void

    .line 2413
    :cond_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2415
    .local v4, "ps":Ljava/util/Properties;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2416
    .local v1, "inputfile":Ljava/io/FileInputStream;
    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2419
    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2420
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2421
    const-string v2, "0"

    .line 2424
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2425
    invoke-virtual {v4, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2428
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2429
    .local v3, "outputFile":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2431
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 2432
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 2433
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0
.end method

.method private static DownInfoListBubbleSort(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2295
    .local p0, "downApkInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "nI":I
    :goto_0
    if-gez v2, :cond_0

    .line 2311
    return-object p0

    .line 2296
    :cond_0
    const/4 v3, 0x0

    .local v3, "nJ":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    if-le v4, v2, :cond_1

    .line 2295
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2298
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/notification/bean/DownApkInfo;

    .line 2299
    invoke-virtual {v4}, Lcom/android/notification/bean/DownApkInfo;->getAddRecoedTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/notification/bean/DownApkInfo;

    .line 2300
    invoke-virtual {v4}, Lcom/android/notification/bean/DownApkInfo;->getAddRecoedTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2298
    invoke-static {v5, v4}, Lcom/android/notification/util/Tool;->CompareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2302
    .local v1, "flag":I
    if-lez v1, :cond_2

    .line 2304
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/notification/bean/DownApkInfo;

    .line 2305
    .local v0, "downApkInfo":Lcom/android/notification/bean/DownApkInfo;
    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2306
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2296
    .end local v0    # "downApkInfo":Lcom/android/notification/bean/DownApkInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static DownLoadAdImg(Ljava/util/List;I)V
    .locals 6
    .param p1, "downtime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1406
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {p0, v2, v5, v4}, Lcom/android/notification/util/AppUtil;->UpdateRecordFile(Ljava/util/List;Ljava/lang/String;II)V

    .line 1408
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->saveAppImgPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v1, "imgpath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1411
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1414
    :cond_0
    invoke-static {p0, v5}, Lcom/android/notification/util/AppUtil;->GetLastAdRecord(Ljava/util/List;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v0

    .line 1416
    .local v0, "downinfo":Lcom/android/notification/bean/DownApkInfo;
    if-eqz v0, :cond_3

    sget v2, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v0}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1417
    invoke-static {v0, p1, v5, v4}, Lcom/android/notification/util/AppUtil;->DownloadImg(Lcom/android/notification/bean/DownApkInfo;III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1419
    sget v2, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v0, v2}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 1420
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v2, v0, v4}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1422
    invoke-virtual {v0}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/notification/util/Tool;->IfAPKOk(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1424
    sget v2, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v0, v2}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 1425
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v2, v0, v4}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1442
    :cond_1
    :goto_0
    return-void

    .line 1429
    :cond_2
    invoke-virtual {v0}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v2

    if-nez v2, :cond_1

    .line 1430
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/notification/util/AppUtil;->GetDownSize(Lcom/android/notification/bean/DownApkInfo;I)I

    .line 1431
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v2, v0, v4}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    goto :goto_0

    .line 1438
    :cond_3
    const-string v2, "jwd"

    .line 1439
    const-string v3, "class:AppUtil  func:DownLoadAdImg text:no need to down ad"

    .line 1438
    invoke-static {v2, v3}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static DownLoadAppInternalImg(Ljava/util/List;I)Z
    .locals 8
    .param p1, "downtime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1459
    const/4 v0, 0x0

    .line 1461
    .local v0, "downOk":Z
    if-nez p0, :cond_0

    move v1, v0

    .line 1513
    .end local v0    # "downOk":Z
    .local v1, "downOk":I
    :goto_0
    return v1

    .line 1463
    .end local v1    # "downOk":I
    .restart local v0    # "downOk":Z
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1464
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v4}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 1466
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {p0, v4, v6, v6}, Lcom/android/notification/util/AppUtil;->UpdateRecordFile(Ljava/util/List;Ljava/lang/String;II)V

    .line 1479
    :cond_1
    :goto_1
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->saveAppImgPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v3, "imgpath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1481
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1484
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1486
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    .line 1488
    .local v2, "downinfo":Lcom/android/notification/bean/DownApkInfo;
    if-eqz v2, :cond_4

    .line 1489
    sget v4, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v5

    if-eq v4, v5, :cond_4

    sget v4, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 1490
    invoke-static {v2, p1, v6, v6}, Lcom/android/notification/util/AppUtil;->DownloadImg(Lcom/android/notification/bean/DownApkInfo;III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1491
    sget v4, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 1492
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v4, v2, v7}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1494
    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->IfAPKOk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1496
    sget v4, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 1497
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v4, v2, v7}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1508
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .end local v2    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    :cond_4
    move v1, v0

    .line 1513
    .restart local v1    # "downOk":I
    goto :goto_0

    .line 1470
    .end local v1    # "downOk":I
    .end local v3    # "imgpath":Ljava/io/File;
    :cond_5
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {p0, v4, v7, v6}, Lcom/android/notification/util/AppUtil;->UpdateRecordFile(Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_1

    .line 1474
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1476
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {p0, v4, v6, v6}, Lcom/android/notification/util/AppUtil;->UpdateRecordFile(Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_1

    .line 1501
    .restart local v2    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    .restart local v3    # "imgpath":Ljava/io/File;
    :cond_7
    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v4

    if-nez v4, :cond_3

    .line 1503
    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/android/notification/util/AppUtil;->GetDownSize(Lcom/android/notification/bean/DownApkInfo;I)I

    .line 1504
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v4, v2, v7}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    goto :goto_2
.end method

.method public static DownloadApp(Ljava/util/List;ILandroid/content/Context;)V
    .locals 5
    .param p1, "position_type"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "downInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v4, 0x1

    .line 1528
    if-nez p0, :cond_0

    .line 1538
    :goto_0
    return-void

    .line 1530
    :cond_0
    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {p0, v3, v4, v4}, Lcom/android/notification/util/AppUtil;->UpdateRecordFile(Ljava/util/List;Ljava/lang/String;II)V

    .line 1531
    invoke-static {p0, v4}, Lcom/android/notification/util/AppUtil;->GetLastAdRecord(Ljava/util/List;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v0

    .line 1532
    .local v0, "downInfo":Lcom/android/notification/bean/DownApkInfo;
    invoke-static {v0, p1, p2}, Lcom/android/notification/util/AppUtil;->toDwonApk(Lcom/android/notification/bean/DownApkInfo;ILandroid/content/Context;)V

    .line 1534
    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfo(Ljava/lang/String;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v2

    .line 1535
    .local v2, "newdownInfo":Lcom/android/notification/bean/DownApkInfo;
    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1536
    .local v1, "index":I
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1537
    invoke-interface {p0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static DownloadImg(Lcom/android/notification/bean/DownApkInfo;III)Z
    .locals 21
    .param p0, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;
    .param p1, "downtime"    # I
    .param p2, "adType"    # I
    .param p3, "position_type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    const/4 v9, 0x0

    .line 637
    .local v9, "conn":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 638
    .local v7, "apkfile":Ljava/io/File;
    const/4 v3, 0x0

    .line 640
    .local v3, "DownAppOk":Z
    if-nez p0, :cond_0

    move/from16 v17, v3

    .line 738
    :goto_0
    return v17

    .line 643
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, "ImgUrl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v6

    .line 645
    .local v6, "SaveFile":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getImgSize()I

    move-result v4

    .line 647
    .local v4, "ImgSize":I
    const/4 v13, 0x0

    .line 648
    .local v13, "mPos":I
    new-instance v7, Ljava/io/File;

    .end local v7    # "apkfile":Ljava/io/File;
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    .restart local v7    # "apkfile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 650
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v13, v0

    .line 655
    :goto_1
    if-eqz v13, :cond_2

    if-ne v13, v4, :cond_2

    .line 657
    const/16 v17, 0x1

    goto :goto_0

    .line 652
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    .line 660
    :cond_2
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 661
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    check-cast v9, Ljava/net/HttpURLConnection;

    .line 664
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    const/16 v17, 0x1388

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 666
    const v17, 0x1b7740

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 668
    const/4 v12, 0x0

    .line 669
    .local v12, "length":I
    if-nez v4, :cond_4

    if-eqz v13, :cond_4

    .line 671
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 672
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    .line 673
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/notification/bean/DownApkInfo;->setImgSize(I)V

    .line 674
    sget-object v17, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 676
    if-ne v13, v12, :cond_3

    .line 678
    const/4 v3, 0x1

    .line 680
    :cond_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    move/from16 v17, v3

    .line 681
    goto :goto_0

    .line 685
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "bytes="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 686
    .local v15, "property":Ljava/lang/String;
    const-string v17, "RANGE"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 689
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v12

    .line 692
    add-int v17, v12, v13

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/notification/bean/DownApkInfo;->setImgSize(I)V

    .line 693
    sget-object v17, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 696
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 697
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    const/16 v18, 0xce

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 698
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    move/from16 v17, v3

    .line 699
    goto/16 :goto_0

    .line 702
    :cond_5
    const-string v17, "jwd"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "class:AppUtil  func:DownloadImg  text:ImgUrl:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 702
    invoke-static/range {v17 .. v18}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v17, "jwd"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "class:AppUtil  func:DownloadImg  text:SaveFile:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 704
    invoke-static/range {v17 .. v18}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 708
    .local v11, "is":Ljava/io/InputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v10, v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 710
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v8, v0, [B

    .line 712
    .local v8, "buf":[B
    :goto_2
    invoke-virtual {v11, v8}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .line 713
    .local v14, "numread":I
    if-gtz v14, :cond_7

    .line 719
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 720
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 721
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 723
    add-int v17, v13, v12

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-eqz v17, :cond_6

    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 724
    :cond_6
    add-int v17, v13, v12

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-nez v17, :cond_8

    .line 725
    const/4 v3, 0x1

    .line 726
    const-string v17, "jwd"

    .line 727
    const-string v18, "class:AppUtil  func:DownloadImg  text:DownloadImg Ok"

    .line 726
    invoke-static/range {v17 .. v18}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move/from16 v17, v3

    .line 738
    goto/16 :goto_0

    .line 716
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v8, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 729
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 732
    :cond_9
    const-string v17, "jwd"

    .line 733
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "class:AppUtil  func:DownloadImg  text:DownloadImg Failure downtime:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 733
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 732
    invoke-static/range {v17 .. v18}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_3
.end method

.method private static DownloadOverRequest(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "position_type"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    const-string v5, "jwd"

    .line 384
    const-string v6, "class:AppUtil  func:DownloadOverRequest  text:DownloadOverRequest"

    .line 383
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 386
    const-string v6, "USER_ID"

    .line 385
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "user_id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 390
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Lcom/android/notification/util/AppUtil;->GetApkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "app_key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&record_type=2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 393
    const-string v6, "&position_type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&apk_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 391
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "url":Ljava/lang/String;
    const-string v5, "jwd"

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class:AppUtil  func:DownloadOverRequest  text:url"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 394
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {v3}, Lcom/android/notification/util/Tool;->MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 416
    .end local v0    # "app_key":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 403
    const-string v5, "jwd"

    .line 404
    const-string v6, "class:AppUtil func:DownloadOverRequest  text:message:"

    .line 403
    invoke-static {v5, v6, v1}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 405
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 407
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 408
    const-string v5, "jwd"

    .line 409
    const-string v6, "class:AppUtil func:DownloadOverRequest  text:message:"

    .line 408
    invoke-static {v5, v6, v1}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 410
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 412
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 413
    const-string v5, "jwd"

    .line 414
    const-string v6, "class:AppUtil func:DownloadOverRequest  text:message:"

    .line 413
    invoke-static {v5, v6, v1}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static Downloadapk(Lcom/android/notification/bean/DownApkInfo;ILandroid/os/Handler;ILandroid/content/Context;)Z
    .locals 24
    .param p0, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;
    .param p1, "downtime"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "position_type"    # I
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v8, 0x0

    .line 482
    .local v8, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 483
    .local v5, "apkfile":Ljava/io/File;
    const/4 v3, 0x0

    .line 485
    .local v3, "DownAppOk":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "apkUrl":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    sget-object v20, Lcom/android/notification/configure/ConfigureFile;->saveAPKPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 489
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v20

    if-nez v20, :cond_0

    move/from16 v20, v3

    .line 617
    :goto_0
    return v20

    .line 494
    :cond_0
    const/4 v14, 0x0

    .line 495
    .local v14, "mPos":I
    new-instance v5, Ljava/io/File;

    .end local v5    # "apkfile":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    .restart local v5    # "apkfile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 497
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v14, v0

    .line 502
    :goto_1
    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v20

    move/from16 v0, v20

    if-ne v14, v0, :cond_2

    .line 504
    const-string v20, "jwd"

    .line 505
    const-string v21, "class:AppUtil  func:Downloadapk  text:apk size is ok"

    .line 504
    invoke-static/range {v20 .. v21}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/16 v20, 0x1

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    .line 509
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v20

    move/from16 v0, v20

    if-le v14, v0, :cond_3

    .line 512
    const/4 v14, 0x0

    .line 513
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 514
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 517
    :cond_3
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 518
    .local v19, "url":Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    check-cast v8, Ljava/net/HttpURLConnection;

    .line 521
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    const/16 v20, 0x1388

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 523
    const v20, 0x1b7740

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 525
    const/4 v13, 0x0

    .line 526
    .local v13, "length":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v20

    if-nez v20, :cond_5

    if-eqz v14, :cond_5

    .line 528
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 529
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    .line 530
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/notification/bean/DownApkInfo;->setAdSize(I)V

    .line 531
    sget-object v20, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 533
    if-ne v14, v13, :cond_4

    .line 535
    const/4 v3, 0x1

    .line 538
    :cond_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    move/from16 v20, v3

    .line 539
    goto/16 :goto_0

    .line 543
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "bytes="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 544
    .local v18, "property":Ljava/lang/String;
    const-string v20, "RANGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 547
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    .line 549
    const-string v20, "jwd"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "class:AppUtil  func:Downloadapk  text:apkUrl = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 549
    invoke-static/range {v20 .. v21}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 554
    .local v7, "code":I
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-eq v7, v0, :cond_6

    const/16 v20, 0xce

    move/from16 v0, v20

    if-eq v7, v0, :cond_6

    .line 556
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    move/from16 v20, v3

    .line 557
    goto/16 :goto_0

    .line 560
    :cond_6
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 561
    .local v11, "is":Ljava/io/InputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v10, v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 563
    .local v10, "fos":Ljava/io/FileOutputStream;
    add-int v20, v13, v14

    div-int/lit8 v16, v20, 0x14

    .line 564
    .local v16, "notilen":I
    const/4 v12, 0x0

    .line 566
    .local v12, "len":I
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v6, v0, [B

    .line 568
    .local v6, "buf":[B
    :goto_2
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .line 569
    .local v17, "numread":I
    if-gtz v17, :cond_9

    .line 588
    if-eqz p2, :cond_7

    .line 590
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 591
    .local v15, "msg":Landroid/os/Message;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v15, Landroid/os/Message;->what:I

    .line 592
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    .end local v15    # "msg":Landroid/os/Message;
    :cond_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 596
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 597
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-eqz v20, :cond_8

    const/16 v20, 0x2

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 601
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_b

    .line 603
    const/4 v3, 0x1

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/notification/util/AppUtil;->DownloadOverRequest(Ljava/lang/String;ILandroid/content/Context;)V

    :goto_3
    move/from16 v20, v3

    .line 617
    goto/16 :goto_0

    .line 573
    :cond_9
    if-eqz p2, :cond_a

    .line 575
    add-int v12, v12, v17

    .line 576
    move/from16 v0, v16

    if-lt v12, v0, :cond_a

    .line 578
    const/4 v12, 0x0

    .line 579
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 580
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v15, Landroid/os/Message;->what:I

    .line 581
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 585
    .end local v15    # "msg":Landroid/os/Message;
    :cond_a
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v10, v6, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto/16 :goto_2

    .line 607
    :cond_b
    const-string v20, "jwd"

    .line 608
    const-string v21, "class:AppUtil  func:Downloadapk  text:Downloadapk Failure"

    .line 607
    invoke-static/range {v20 .. v21}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 612
    :cond_c
    const-string v20, "jwd"

    .line 613
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "class:AppUtil  func:Downloadapk  text:Downloadapk Failure down time"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 613
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 612
    invoke-static/range {v20 .. v21}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static GetAdRecordIndex(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "adIndex"    # Ljava/lang/String;
    .param p2, "adType"    # I
    .param p3, "webStatus"    # Ljava/lang/String;
    .param p4, "apk_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, "updatedownInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v3, -0x1

    .line 1072
    .local v3, "retIndex":I
    if-nez p1, :cond_0

    .line 1073
    const-string p1, "0"

    .line 1076
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v1

    .line 1077
    .local v1, "index":I
    invoke-static {p0, p2}, Lcom/android/notification/util/AppUtil;->GetAppRecordNum(Ljava/util/List;I)I

    move-result v5

    if-nez v5, :cond_1

    move v4, v3

    .line 1107
    .end local v3    # "retIndex":I
    .local v4, "retIndex":I
    :goto_0
    return v4

    .line 1081
    .end local v4    # "retIndex":I
    .restart local v3    # "retIndex":I
    :cond_1
    const/4 v0, 0x0

    .line 1083
    .local v0, "ifout":Z
    const/4 v2, 0x0

    .local v2, "nI":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_4

    .line 1103
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 1104
    move v3, v1

    :cond_3
    move v4, v3

    .line 1107
    .end local v3    # "retIndex":I
    .restart local v4    # "retIndex":I
    goto :goto_0

    .line 1084
    .end local v4    # "retIndex":I
    .restart local v3    # "retIndex":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 1085
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_5

    .line 1086
    const/4 v1, 0x0

    .line 1089
    :cond_5
    invoke-static {p0, v1, p3, p4}, Lcom/android/notification/util/AppUtil;->ShowAdRequest(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1091
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v5}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v5

    if-ne p2, v5, :cond_6

    .line 1092
    const/4 v0, 0x1

    .line 1093
    goto :goto_2

    .line 1083
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static GetApkId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 2577
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2578
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 2577
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2579
    .local v0, "Info":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 2581
    .local v1, "apk_id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2582
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2583
    const-string v4, "APP_KEY"

    const/4 v5, 0x0

    .line 2582
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2584
    .local v2, "appkey":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2591
    .end local v2    # "appkey":I
    :goto_0
    return-object v1

    .line 2588
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public static GetAppRecordNum(Ljava/util/List;I)I
    .locals 5
    .param p1, "adType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1181
    .local p0, "updatedownInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v1, 0x0

    .line 1182
    .local v1, "ret":I
    if-nez p0, :cond_0

    move v2, v1

    .line 1195
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1185
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "nI":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 1191
    if-nez p1, :cond_1

    .line 1192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v3, v1

    :cond_1
    move v2, v1

    .line 1195
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 1186
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_2
    const/4 v4, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v3

    if-ne v4, v3, :cond_3

    .line 1187
    add-int/lit8 v1, v1, 0x1

    .line 1185
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static GetDownSize(Lcom/android/notification/bean/DownApkInfo;I)I
    .locals 8
    .param p0, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 426
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->saveAPKPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 428
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v3

    .line 433
    :cond_1
    const/4 v0, 0x0

    .line 434
    .local v0, "AdUrl":Ljava/lang/String;
    if-ne v6, p1, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/android/notification/bean/DownApkInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 447
    :goto_1
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 448
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 450
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v5, 0x1388

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 451
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 452
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 453
    .local v3, "length":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 455
    if-ne v6, p1, :cond_3

    .line 457
    invoke-virtual {p0, v3}, Lcom/android/notification/bean/DownApkInfo;->setImgSize(I)V

    goto :goto_0

    .line 438
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "length":I
    .end local v4    # "url":Ljava/net/URL;
    :cond_2
    if-ne v7, p1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 459
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "length":I
    .restart local v4    # "url":Ljava/net/URL;
    :cond_3
    if-ne v7, p1, :cond_0

    .line 461
    invoke-virtual {p0, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdSize(I)V

    goto :goto_0
.end method

.method public static GetLastAdRecord(Ljava/util/List;I)Lcom/android/notification/bean/DownApkInfo;
    .locals 5
    .param p1, "adType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I)",
            "Lcom/android/notification/bean/DownApkInfo;"
        }
    .end annotation

    .prologue
    .line 971
    .local p0, "updatedownInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v2, 0x0

    .line 972
    .local v2, "retAI":Lcom/android/notification/bean/DownApkInfo;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 984
    .end local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    .local v3, "retAI":Lcom/android/notification/bean/DownApkInfo;
    :goto_0
    return-object v3

    .line 975
    .end local v3    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    .restart local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 977
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "nI":I
    :goto_1
    if-gez v1, :cond_1

    :goto_2
    move-object v3, v2

    .line 984
    .end local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    .restart local v3    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    goto :goto_0

    .line 978
    .end local v3    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    .restart local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v4}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 979
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    .line 980
    .restart local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    goto :goto_2

    .line 977
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static GetLastAdRecordIndex(Ljava/util/List;I)I
    .locals 5
    .param p1, "adType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 944
    .local p0, "updatedownInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v2, 0x0

    .line 945
    .local v2, "retAI":I
    if-nez p0, :cond_0

    move v3, v2

    .line 957
    .end local v2    # "retAI":I
    .local v3, "retAI":I
    :goto_0
    return v3

    .line 948
    .end local v3    # "retAI":I
    .restart local v2    # "retAI":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 950
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "nI":I
    :goto_1
    if-gez v1, :cond_1

    :goto_2
    move v3, v2

    .line 957
    .end local v2    # "retAI":I
    .restart local v3    # "retAI":I
    goto :goto_0

    .line 951
    .end local v3    # "retAI":I
    .restart local v2    # "retAI":I
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v4}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 952
    move v2, v1

    .line 953
    goto :goto_2

    .line 950
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static GetNextAdRecordIndex(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "adIndex"    # Ljava/lang/String;
    .param p2, "appIndex"    # Ljava/lang/String;
    .param p3, "adType"    # I
    .param p4, "webStatus"    # Ljava/lang/String;
    .param p5, "apk_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "updatedownInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1123
    const/4 v0, -0x1

    .line 1124
    .local v0, "retIndex":I
    if-nez p0, :cond_0

    move v1, v0

    .line 1140
    .end local v0    # "retIndex":I
    .local v1, "retIndex":I
    :goto_0
    return v1

    .line 1126
    .end local v1    # "retIndex":I
    .restart local v0    # "retIndex":I
    :cond_0
    if-nez p3, :cond_2

    .line 1127
    invoke-static {p0, p3}, Lcom/android/notification/util/AppUtil;->GetAppRecordNum(Ljava/util/List;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1128
    invoke-static {p0, p2, v4, p4, p5}, Lcom/android/notification/util/AppUtil;->GetAdRecordIndex(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_1
    move v1, v0

    .line 1140
    .end local v0    # "retIndex":I
    .restart local v1    # "retIndex":I
    goto :goto_0

    .line 1130
    .end local v1    # "retIndex":I
    .restart local v0    # "retIndex":I
    :cond_1
    invoke-static {p0, p1, v3, p4, p5}, Lcom/android/notification/util/AppUtil;->GetAdRecordIndex(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 1133
    :cond_2
    invoke-static {p0, p3}, Lcom/android/notification/util/AppUtil;->GetAppRecordNum(Ljava/util/List;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 1134
    invoke-static {p0, p1, v3, p4, p5}, Lcom/android/notification/util/AppUtil;->GetAdRecordIndex(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 1136
    :cond_3
    invoke-static {p0, p2, v4, p4, p5}, Lcom/android/notification/util/AppUtil;->GetAdRecordIndex(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public static GetfirstAdRecord(Ljava/util/List;I)Lcom/android/notification/bean/DownApkInfo;
    .locals 5
    .param p1, "adType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I)",
            "Lcom/android/notification/bean/DownApkInfo;"
        }
    .end annotation

    .prologue
    .line 1154
    .local p0, "updatedownInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v2, 0x0

    .line 1155
    .local v2, "retAI":Lcom/android/notification/bean/DownApkInfo;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 1167
    .end local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    .local v3, "retAI":Lcom/android/notification/bean/DownApkInfo;
    :goto_0
    return-object v3

    .line 1158
    .end local v3    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    .restart local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1160
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "nI":I
    :goto_1
    if-lt v1, v0, :cond_2

    :cond_1
    move-object v3, v2

    .line 1167
    .end local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    .restart local v3    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    goto :goto_0

    .line 1161
    .end local v3    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    .restart local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    .line 1162
    .restart local v2    # "retAI":Lcom/android/notification/bean/DownApkInfo;
    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v4

    if-eq p1, v4, :cond_1

    .line 1160
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static IfADURLOk(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1382
    const/4 v0, 0x0

    .line 1383
    .local v0, "ret":Z
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1384
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1385
    .local v1, "str":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1386
    const/4 v0, 0x1

    .line 1388
    :cond_0
    return v0
.end method

.method private static IfDownTimerConfig()Z
    .locals 7

    .prologue
    .line 188
    const/4 v1, 0x1

    .line 190
    .local v1, "ifrestart":Z
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "strDate":Ljava/lang/String;
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 195
    const-string v5, "START_TIMER_TIME"

    .line 193
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "timerStartTime":Ljava/lang/String;
    const-string v4, "jwd"

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "class:AppUtil  func:IfDownTimerConfig  text:strDate:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v3}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 203
    const-string v5, "START_TIMER_TIME"

    .line 202
    invoke-static {v4, v5, v2}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return v1

    .line 205
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    const/4 v1, 0x0

    goto :goto_0

    .line 208
    :cond_1
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 209
    const-string v5, "START_TIMER_TIME"

    .line 208
    invoke-static {v4, v5, v2}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static IfReStartTimer()Z
    .locals 4

    .prologue
    .line 1671
    const/4 v0, 0x0

    .line 1673
    .local v0, "ifrestart":Z
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 1674
    const-string v3, "IF_START_TIMER"

    .line 1673
    invoke-static {v2, v3}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1676
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1677
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1680
    :cond_0
    return v0
.end method

.method public static MyServiceOrNotStart(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 157
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 153
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x1

    goto :goto_1

    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ReadDownLoadInfo(Ljava/lang/String;I)Lcom/android/notification/bean/DownApkInfo;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "adId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2365
    const/4 v1, 0x0

    .line 2367
    .local v1, "downinfo":Lcom/android/notification/bean/DownApkInfo;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2368
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v1

    .line 2381
    .end local v1    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    .local v2, "downinfo":Lcom/android/notification/bean/DownApkInfo;
    :goto_0
    return-object v2

    .line 2373
    .end local v2    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    .restart local v1    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    :cond_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2375
    .local v4, "ps":Ljava/util/Properties;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2376
    .local v3, "inputfile":Ljava/io/FileInputStream;
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2377
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2379
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/notification/util/AppUtil;->ReadSingleDownInfo(Ljava/util/Properties;Ljava/lang/String;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v1

    move-object v2, v1

    .line 2381
    .end local v1    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    .restart local v2    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    goto :goto_0
.end method

.method public static ReadDownLoadInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2325
    .local v3, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2326
    .local v1, "downFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2353
    :goto_0
    return-object v3

    .line 2331
    :cond_0
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 2333
    .local v6, "ps":Ljava/util/Properties;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2334
    .local v5, "inputfile":Ljava/io/FileInputStream;
    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2335
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 2337
    invoke-virtual {v6}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 2338
    .local v4, "enums":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2351
    invoke-static {v3}, Lcom/android/notification/util/AppUtil;->DownInfoListBubbleSort(Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 2339
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2341
    .local v0, "adId":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2343
    invoke-static {v6, v0}, Lcom/android/notification/util/AppUtil;->ReadSingleDownInfo(Ljava/util/Properties;Ljava/lang/String;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v2

    .line 2344
    .local v2, "downinfo":Lcom/android/notification/bean/DownApkInfo;
    if-eqz v2, :cond_1

    .line 2346
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static ReadSingleDownInfo(Ljava/util/Properties;Ljava/lang/String;)Lcom/android/notification/bean/DownApkInfo;
    .locals 6
    .param p0, "Ps"    # Ljava/util/Properties;
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 2538
    const/4 v2, 0x0

    .line 2540
    .local v2, "downinfo":Lcom/android/notification/bean/DownApkInfo;
    invoke-static {p0, p1}, Lcom/android/notification/util/Tool;->ReadDownPropertie(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2541
    .local v0, "Info":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 2564
    .end local v2    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    .local v3, "downinfo":Lcom/android/notification/bean/DownApkInfo;
    :goto_0
    return-object v3

    .line 2542
    .end local v3    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    .restart local v2    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    :cond_0
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2544
    .local v1, "downInfo":[Ljava/lang/String;
    const/16 v4, 0xd

    array-length v5, v1

    if-ne v4, v5, :cond_1

    .line 2546
    new-instance v2, Lcom/android/notification/bean/DownApkInfo;

    .end local v2    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    invoke-direct {v2}, Lcom/android/notification/bean/DownApkInfo;-><init>()V

    .line 2548
    .restart local v2    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setAdID(I)V

    .line 2549
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setAdType(I)V

    .line 2550
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setCilckTime(Ljava/lang/String;)V

    .line 2551
    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 2552
    const/4 v4, 0x4

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setImgUrl(Ljava/lang/String;)V

    .line 2553
    const/4 v4, 0x5

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setImgFlie(Ljava/lang/String;)V

    .line 2554
    const/4 v4, 0x6

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 2555
    const/4 v4, 0x7

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setImgSize(I)V

    .line 2556
    const/16 v4, 0x8

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setAdUrl(Ljava/lang/String;)V

    .line 2557
    const/16 v4, 0x9

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setAdFlie(Ljava/lang/String;)V

    .line 2558
    const/16 v4, 0xa

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 2559
    const/16 v4, 0xb

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setAdSize(I)V

    .line 2561
    const/16 v4, 0xc

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/notification/bean/DownApkInfo;->setAddRecoedTime(Ljava/lang/String;)V

    :cond_1
    move-object v3, v2

    .line 2564
    .end local v2    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    .restart local v3    # "downinfo":Lcom/android/notification/bean/DownApkInfo;
    goto/16 :goto_0
.end method

.method public static RegistrationUser()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 313
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 314
    .local v5, "paraMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, ""

    .line 315
    .local v8, "user_id":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 316
    const-string v13, "USER_ID"

    .line 315
    invoke-static {v12, v13}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 317
    const-string v11, "user_id"

    invoke-virtual {v5, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v7, ""

    .line 319
    .local v7, "user_address":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 320
    const-string v13, "CITYNAME"

    .line 319
    invoke-static {v12, v13}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 321
    const-string v11, "user_address"

    invoke-virtual {v5, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v3, ""

    .line 323
    .local v3, "model":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 324
    const-string v13, "MODEL"

    .line 323
    invoke-static {v12, v13}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    const-string v11, "model"

    invoke-virtual {v5, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v6, ""

    .line 327
    .local v6, "sp_name":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 328
    const-string v13, "SP_NAME"

    .line 327
    invoke-static {v12, v13}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 329
    const-string v11, "sp_name"

    invoke-virtual {v5, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v2, ""

    .line 332
    .local v2, "mobile_os":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 333
    const-string v13, "OS"

    .line 332
    invoke-static {v12, v13}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    const-string v11, "mobile_os"

    invoke-virtual {v5, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v11, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 338
    const-string v12, "IFREGIST"

    .line 336
    invoke-static {v11, v12}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 341
    .local v0, "ifregist":Z
    sget-object v11, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 342
    const-string v12, "IFUPDATE"

    .line 340
    invoke-static {v11, v12}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 344
    .local v1, "ifupdate":Z
    if-eqz v0, :cond_1

    .line 345
    const-string v11, "flag"

    const-string v12, "1"

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :goto_0
    const-string v11, "jwd"

    .line 353
    const-string v12, "class:AppUtil  func:RegistrationUser  text:to RegistrationUser"

    .line 352
    invoke-static {v11, v12}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v4, ""

    .line 356
    .local v4, "newUserId":Ljava/lang/String;
    const-string v11, "http://www.9wedo.com:89/ads_manage/registUser"

    invoke-static {v11, v5}, Lcom/android/notification/util/Tool;->MyHttpPostHashMap(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-static {v4}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 360
    sget-object v11, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 361
    const-string v12, "USER_ID"

    .line 360
    invoke-static {v11, v12, v4}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    if-eqz v0, :cond_3

    .line 364
    sget-object v11, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 365
    const-string v12, "IFREGIST"

    .line 366
    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    .line 364
    invoke-static {v11, v12, v9}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .end local v4    # "newUserId":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 346
    :cond_1
    if-eqz v1, :cond_0

    .line 347
    const-string v11, "flag"

    const-string v12, "2"

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local v4    # "newUserId":Ljava/lang/String;
    :cond_2
    move v9, v10

    .line 366
    goto :goto_1

    .line 367
    :cond_3
    if-eqz v1, :cond_0

    .line 368
    sget-object v11, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 369
    const-string v12, "IFUPDATE"

    .line 370
    if-eqz v1, :cond_4

    :goto_3
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    .line 368
    invoke-static {v11, v12, v9}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v9, v10

    .line 370
    goto :goto_3
.end method

.method private static ShowAdRequest(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "index"    # I
    .param p2, "webStatus"    # Ljava/lang/String;
    .param p3, "apk_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v10, 0x2

    .line 997
    const/4 v3, 0x0

    .line 999
    .local v3, "ifShow":Z
    sget-object v8, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 1000
    const-string v9, "USER_ID"

    .line 999
    invoke-static {v8, v9}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1002
    .local v7, "user_id":Ljava/lang/String;
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v8}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v2

    .line 1003
    .local v2, "id":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&record_type=4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1005
    const-string v9, "&position_type=2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&apk_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1003
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1007
    .local v6, "url":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1008
    .local v4, "ret":Ljava/lang/String;
    const-string v8, "NONET"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1010
    :try_start_0
    invoke-static {v6}, Lcom/android/notification/util/Tool;->MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1012
    invoke-static {v4}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1013
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "array":[Ljava/lang/String;
    array-length v8, v0

    if-ne v10, v8, :cond_1

    .line 1016
    const/4 v8, 0x0

    aget-object v8, v0, v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget-object v8, v0, v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1017
    const/4 v3, 0x1

    .line 1018
    sget-object v8, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    .line 1019
    const-string v9, "true"

    .line 1018
    invoke-static {v8, p3, v9}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_0
    const/4 v8, 0x1

    aget-object v8, v0, v8

    const-string v9, "false"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1024
    sget-object v9, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/notification/bean/DownApkInfo;

    const/4 v10, 0x2

    invoke-static {v9, v8, v10}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1025
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1031
    .end local v0    # "array":[Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "true"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1032
    const/4 v3, 0x1

    .line 1033
    sget-object v8, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    .line 1034
    const-string v9, "true"

    .line 1033
    invoke-static {v8, p3, v9}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :cond_2
    :goto_0
    return v3

    .line 1036
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1039
    sget-object v8, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-static {v8, p3}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1041
    .local v5, "retex":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1042
    const/4 v3, 0x1

    goto :goto_0

    .line 1048
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "retex":Ljava/lang/String;
    :cond_3
    sget-object v8, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-static {v8, p3}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1050
    .restart local v5    # "retex":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1051
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static UpDateTimerConfigfile()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 228
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 229
    const-string v6, "IF_START_TIMER"

    const-string v7, "false"

    .line 228
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/android/notification/util/AppUtil;->IfDownTimerConfig()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 234
    new-instance v2, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, "strResult":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "httpUrl":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "http://www.9wedo.com:89/ads_manage/getTimerconfigure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Lcom/android/notification/util/Tool;->MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    const-string v5, "jwd"

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class:AppUtil  func:UpDateTimerConfigfile  text:strResult:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 242
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 241
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v2}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 247
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "timeconfig":[Ljava/lang/String;
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 250
    const-string v6, "TIMER_VERSION"

    .line 248
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "version":Ljava/lang/String;
    array-length v1, v3

    .line 252
    .local v1, "len":I
    aget-object v5, v3, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 253
    const-string v5, "jwd"

    .line 254
    const-string v6, "class:AppUtil  func:UpDateTimerConfigfile  text:to UpDateTimerConfigfile"

    .line 253
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-lez v1, :cond_0

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 257
    const-string v6, "IF_PUSH"

    .line 258
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 256
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    if-le v1, v9, :cond_1

    aget-object v5, v3, v9

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 260
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 261
    const-string v6, "AD_TIME_SLOT"

    .line 262
    aget-object v7, v3, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 260
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_1
    if-le v1, v10, :cond_2

    aget-object v5, v3, v10

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 264
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 265
    const-string v6, "AD_TIME_NOTITIME"

    .line 266
    aget-object v7, v3, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    if-le v1, v8, :cond_3

    aget-object v5, v3, v8

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 268
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 269
    const-string v6, "TIMER_VERSION"

    .line 270
    aget-object v7, v3, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 268
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_3
    if-le v1, v11, :cond_4

    aget-object v5, v3, v11

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 272
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 273
    const-string v6, "APP_TIME_SLOT"

    .line 274
    aget-object v7, v3, v11

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_4
    if-le v1, v12, :cond_5

    aget-object v5, v3, v12

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 276
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 277
    const-string v6, "APP_TIME_NOTITIME"

    .line 278
    aget-object v7, v3, v12

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 276
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_5
    const/4 v5, 0x6

    if-le v1, v5, :cond_6

    const/4 v5, 0x6

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 280
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 281
    const-string v6, "XML_APP_RECORD_NUM"

    .line 282
    const/4 v7, 0x6

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 280
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_6
    const/4 v5, 0x7

    if-le v1, v5, :cond_7

    const/4 v5, 0x7

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 285
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 286
    const-string v6, "XML_AD_RECORD_NUM"

    .line 287
    const/4 v7, 0x7

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 285
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_7
    const/16 v5, 0x8

    if-le v1, v5, :cond_8

    const/16 v5, 0x8

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 290
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 291
    const-string v6, "XML_AD_TIME"

    .line 292
    const/16 v7, 0x8

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 290
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_8
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 295
    const-string v6, "IF_START_TIMER"

    const-string v7, "true"

    .line 294
    invoke-static {v5, v6, v7}, Lcom/android/notification/util/Tool;->UpdatePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .end local v1    # "len":I
    .end local v3    # "timeconfig":[Ljava/lang/String;
    .end local v4    # "version":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method public static UpdateAdRecord(Ljava/util/List;)V
    .locals 1
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
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2269
    .local p0, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    if-nez p0, :cond_0

    .line 2272
    :goto_0
    return-void

    .line 2271
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/notification/util/AppUtil;->DownLoadAdImg(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public static UpdateAppRecord(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2282
    .local p0, "downinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    if-nez p0, :cond_0

    .line 2285
    :goto_0
    return-void

    .line 2284
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/notification/util/AppUtil;->DownloadApp(Ljava/util/List;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method private static UpdateRecordFile(Ljava/util/List;Ljava/lang/String;II)V
    .locals 15
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "adType"    # I
    .param p3, "position_type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "downInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    if-nez p0, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    const-string v1, ""

    .line 762
    .local v1, "Downurl":Ljava/lang/String;
    const-string v4, ""

    .line 763
    .local v4, "httpUrl":Ljava/lang/String;
    const/4 v5, 0x0

    .line 764
    .local v5, "id":I
    add-int/lit8 v2, p2, 0x1

    .line 765
    .local v2, "ad_class":I
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/notification/util/AppUtil;->GetLastAdRecord(Ljava/util/List;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 766
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/notification/util/AppUtil;->GetLastAdRecord(Ljava/util/List;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v5

    .line 768
    :cond_2
    sget-object v12, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 769
    const-string v13, "USER_ID"

    .line 768
    invoke-static {v12, v13}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 770
    .local v11, "user_id":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "http://www.9wedo.com:89/ads_manage/getDownloadInfo?id="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&user_id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&ad_class="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 770
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 773
    const-string v12, "jwd"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "class:AppUtil  func:UpdateXMLFile  text:httpUrl="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 773
    invoke-static {v12, v13}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-static {v4}, Lcom/android/notification/util/Tool;->MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-static {v1}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 782
    const-string v12, "jwd"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "class:AppUtil  func:UpdateXMLFile  text:Downurl="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 782
    invoke-static {v12, v13}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 786
    .local v9, "strarray":[Ljava/lang/String;
    move/from16 v0, p2

    invoke-static {v9, v0}, Lcom/android/notification/util/AppUtil;->WriteDownApkInfo([Ljava/lang/String;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v8

    .line 788
    .local v8, "newDwonInfo":Lcom/android/notification/bean/DownApkInfo;
    if-eqz v8, :cond_0

    .line 790
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 791
    .local v6, "len":I
    const/4 v7, 0x0

    .local v7, "nI":I
    :goto_1
    if-lt v7, v6, :cond_3

    .line 813
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v8, v12}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    goto/16 :goto_0

    .line 792
    :cond_3
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v12}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v12

    invoke-virtual {v8}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v13

    if-ne v12, v13, :cond_5

    .line 794
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/notification/bean/DownApkInfo;

    .line 795
    .local v3, "downInfo":Lcom/android/notification/bean/DownApkInfo;
    invoke-interface {p0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 798
    invoke-virtual {v8}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 800
    sget v12, Lcom/android/notification/configure/DownStatus;->BAN_DOWN:I

    invoke-virtual {v3, v12}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 804
    :cond_4
    invoke-static {}, Lcom/android/notification/util/Tool;->getSysTimeMS()Ljava/lang/String;

    move-result-object v10

    .line 805
    .local v10, "sysTime":Ljava/lang/String;
    invoke-virtual {v3, v10}, Lcom/android/notification/bean/DownApkInfo;->setAddRecoedTime(Ljava/lang/String;)V

    .line 807
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v12}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    goto/16 :goto_0

    .line 791
    .end local v3    # "downInfo":Lcom/android/notification/bean/DownApkInfo;
    .end local v10    # "sysTime":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private static WriteDownApkInfo([Ljava/lang/String;I)Lcom/android/notification/bean/DownApkInfo;
    .locals 8
    .param p0, "strarray"    # [Ljava/lang/String;
    .param p1, "adType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 829
    if-eqz p0, :cond_0

    aget-object v3, p0, v4

    if-nez v3, :cond_2

    .line 830
    :cond_0
    const/4 v1, 0x0

    .line 881
    :cond_1
    :goto_0
    return-object v1

    .line 832
    :cond_2
    new-instance v1, Lcom/android/notification/bean/DownApkInfo;

    invoke-direct {v1}, Lcom/android/notification/bean/DownApkInfo;-><init>()V

    .line 834
    .local v1, "retdi":Lcom/android/notification/bean/DownApkInfo;
    aget-object v3, p0, v4

    invoke-static {v3}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdID(I)V

    .line 835
    const-string v3, "0"

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setCilckTime(Ljava/lang/String;)V

    .line 836
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 837
    invoke-virtual {v1, p1}, Lcom/android/notification/bean/DownApkInfo;->setAdType(I)V

    .line 839
    invoke-static {}, Lcom/android/notification/util/Tool;->getSysTimeMS()Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, "sysTime":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/notification/bean/DownApkInfo;->setAddRecoedTime(Ljava/lang/String;)V

    .line 842
    array-length v0, p0

    .line 844
    .local v0, "len":I
    if-lez v0, :cond_3

    aget-object v3, p0, v5

    invoke-static {v3}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p0, v5

    invoke-static {v3}, Lcom/android/notification/util/AppUtil;->IfADURLOk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 845
    aget-object v3, p0, v5

    invoke-static {v3}, Lcom/android/notification/util/Tool;->IfAPKOk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 847
    aget-object v3, p0, v5

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdUrl(Ljava/lang/String;)V

    .line 848
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->saveAPKPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 849
    aget-object v4, p0, v5

    invoke-static {v4, p1}, Lcom/android/notification/util/AppUtil;->getLastFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 848
    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdFlie(Ljava/lang/String;)V

    .line 850
    sget v3, Lcom/android/notification/configure/DownStatus;->BAN_DOWN:I

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 851
    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setAdSize(I)V

    .line 862
    :cond_3
    :goto_1
    if-le v0, v7, :cond_4

    aget-object v3, p0, v7

    invoke-static {v3}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.9wedo.com:89/ads_manage"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p0, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setImgUrl(Ljava/lang/String;)V

    .line 865
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->saveAppImgPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 866
    aget-object v4, p0, v7

    invoke-static {v4, p1}, Lcom/android/notification/util/AppUtil;->getLastFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 865
    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setImgFlie(Ljava/lang/String;)V

    .line 868
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 869
    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setImgSize(I)V

    .line 872
    :cond_4
    if-le v0, v6, :cond_1

    aget-object v3, p0, v6

    invoke-static {v3}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 873
    aget-object v3, p0, v6

    invoke-static {v3}, Lcom/android/notification/util/Tool;->IfAPKOk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 874
    aget-object v3, p0, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdUrl(Ljava/lang/String;)V

    .line 875
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->saveAPKPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 876
    aget-object v4, p0, v6

    invoke-static {v4, p1}, Lcom/android/notification/util/AppUtil;->getLastFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 875
    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdFlie(Ljava/lang/String;)V

    .line 877
    sget v3, Lcom/android/notification/configure/DownStatus;->BAN_DOWN:I

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 878
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/notification/util/AppUtil;->GetDownSize(Lcom/android/notification/bean/DownApkInfo;I)I

    goto/16 :goto_0

    .line 855
    :cond_5
    aget-object v3, p0, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdUrl(Ljava/lang/String;)V

    .line 856
    aget-object v3, p0, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdFlie(Ljava/lang/String;)V

    .line 857
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v1, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 858
    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setAdSize(I)V

    goto/16 :goto_1
.end method

.method public static declared-synchronized WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2394
    const-class v1, Lcom/android/notification/util/AppUtil;

    monitor-enter v1

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 2396
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/notification/util/AppUtil;->AddDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2403
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 2398
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 2400
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/notification/util/AppUtil;->DeleteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2394
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static checkDefaultTimerConfig()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1877
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 1878
    const-string v6, "AD_TIME_SLOT"

    .line 1877
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1879
    .local v1, "adtimeslot":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return v4

    .line 1883
    :cond_1
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 1884
    const-string v6, "AD_TIME_NOTITIME"

    .line 1883
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1885
    .local v0, "adtime":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1889
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 1890
    const-string v6, "APP_TIME_SLOT"

    .line 1889
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1891
    .local v3, "apptimeslot":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1895
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 1896
    const-string v6, "APP_TIME_NOTITIME"

    .line 1895
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1897
    .local v2, "apptime":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1901
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static checkNetOrWifi(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    .line 65
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 66
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 75
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    .line 77
    const/4 v3, 0x1

    .line 84
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static createPath(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 139
    :cond_0
    return-void
.end method

.method public static getDefaultPhoneConfig(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1764
    const/4 v6, 0x0

    .line 1767
    .local v6, "ifupdate":Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v17, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1768
    .local v2, "Phonefile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1769
    sget-object v17, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/android/notification/util/AppUtil;->CreateDir(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1773
    :cond_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 1774
    .local v3, "Phoneps":Ljava/util/Properties;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1775
    .local v8, "inputfile":Ljava/io/FileInputStream;
    invoke-virtual {v3, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1776
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 1778
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 1777
    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 1781
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 1783
    .local v7, "imei":Ljava/lang/String;
    const-string v17, "USER_ID"

    .line 1782
    move-object/from16 v0, v17

    invoke-static {v3, v0, v7}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v13

    .line 1787
    .local v13, "softVer":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1789
    const-string v17, "SOFT_VER"

    .line 1788
    move-object/from16 v0, v17

    invoke-static {v3, v0, v13}, Lcom/android/notification/util/Tool;->UpdateDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const/4 v6, 0x0

    .line 1792
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v14

    .line 1793
    .local v14, "spName":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 1795
    const-string v17, "SP_NAME"

    .line 1794
    move-object/from16 v0, v17

    invoke-static {v3, v0, v14}, Lcom/android/notification/util/Tool;->UpdateDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const/4 v6, 0x0

    .line 1798
    :goto_1
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1800
    .local v9, "model":Ljava/lang/String;
    const-string v17, "MODEL"

    .line 1799
    move-object/from16 v0, v17

    invoke-static {v3, v0, v9}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    sget-object v12, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 1804
    .local v12, "sdk":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 1806
    const-string v17, "SDK"

    .line 1805
    move-object/from16 v0, v17

    invoke-static {v3, v0, v12}, Lcom/android/notification/util/Tool;->UpdateDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const/4 v6, 0x0

    .line 1809
    :goto_2
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1810
    .local v10, "os":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 1812
    const-string v17, "OS"

    .line 1811
    move-object/from16 v0, v17

    invoke-static {v3, v0, v10}, Lcom/android/notification/util/Tool;->UpdateDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    const/4 v6, 0x0

    .line 1815
    :goto_3
    const-string v5, "true"

    .line 1817
    .local v5, "ifregist":Ljava/lang/String;
    const-string v17, "IFREGIST"

    .line 1816
    move-object/from16 v0, v17

    invoke-static {v3, v0, v5}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .line 1822
    .local v15, "strifupdate":Ljava/lang/String;
    const-string v17, "IFUPDATE"

    .line 1821
    move-object/from16 v0, v17

    invoke-static {v3, v0, v15}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1826
    .local v11, "outputFile":Ljava/io/FileOutputStream;
    const-string v17, "PhoneConfigFile"

    move-object/from16 v0, v17

    invoke-virtual {v3, v11, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1827
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    .end local v2    # "Phonefile":Ljava/io/File;
    .end local v3    # "Phoneps":Ljava/util/Properties;
    .end local v5    # "ifregist":Ljava/lang/String;
    .end local v7    # "imei":Ljava/lang/String;
    .end local v8    # "inputfile":Ljava/io/FileInputStream;
    .end local v9    # "model":Ljava/lang/String;
    .end local v10    # "os":Ljava/lang/String;
    .end local v11    # "outputFile":Ljava/io/FileOutputStream;
    .end local v12    # "sdk":Ljava/lang/String;
    .end local v13    # "softVer":Ljava/lang/String;
    .end local v14    # "spName":Ljava/lang/String;
    .end local v15    # "strifupdate":Ljava/lang/String;
    .end local v16    # "tm":Landroid/telephony/TelephonyManager;
    :goto_4
    return-void

    .line 1788
    .restart local v2    # "Phonefile":Ljava/io/File;
    .restart local v3    # "Phoneps":Ljava/util/Properties;
    .restart local v7    # "imei":Ljava/lang/String;
    .restart local v8    # "inputfile":Ljava/io/FileInputStream;
    .restart local v13    # "softVer":Ljava/lang/String;
    .restart local v16    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 1794
    .restart local v14    # "spName":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    .line 1805
    .restart local v9    # "model":Ljava/lang/String;
    .restart local v12    # "sdk":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    .line 1811
    .restart local v10    # "os":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    .line 1829
    .end local v2    # "Phonefile":Ljava/io/File;
    .end local v3    # "Phoneps":Ljava/util/Properties;
    .end local v7    # "imei":Ljava/lang/String;
    .end local v8    # "inputfile":Ljava/io/FileInputStream;
    .end local v9    # "model":Ljava/lang/String;
    .end local v10    # "os":Ljava/lang/String;
    .end local v12    # "sdk":Ljava/lang/String;
    .end local v13    # "softVer":Ljava/lang/String;
    .end local v14    # "spName":Ljava/lang/String;
    .end local v16    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v4

    .line 1831
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1832
    const-string v17, "jwd"

    .line 1833
    const-string v18, "class:AppUtil  func:getDefaultPhoneConfig  text:message:"

    .line 1832
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static getDefaultPushConfig()V
    .locals 7

    .prologue
    .line 1993
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1994
    .local v0, "Pushfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1995
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/notification/util/AppUtil;->CreateDir(Ljava/lang/String;)V

    .line 1996
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 2000
    :cond_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 2001
    .local v1, "Pushps":Ljava/util/Properties;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2002
    .local v3, "inputfile":Ljava/io/FileInputStream;
    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2003
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2007
    const-string v5, "IS_APK_INSTALLATION"

    const-string v6, "false"

    .line 2006
    invoke-static {v1, v5, v6}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    const-string v5, "AD_SHOW_INDEX"

    const-string v6, "0"

    invoke-static {v1, v5, v6}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    const-string v5, "APK_SHOW_INDEX"

    const-string v6, "0"

    invoke-static {v1, v5, v6}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2026
    .local v4, "outputFile":Ljava/io/FileOutputStream;
    const-string v5, "TimerConfigFile"

    invoke-virtual {v1, v4, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2027
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2036
    .end local v1    # "Pushps":Ljava/util/Properties;
    .end local v3    # "inputfile":Ljava/io/FileInputStream;
    .end local v4    # "outputFile":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 2029
    :catch_0
    move-exception v2

    .line 2031
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2032
    const-string v5, "jwd"

    .line 2033
    const-string v6, "class:AppUtil  func:getDefaultPushConfig  text:message:"

    .line 2032
    invoke-static {v5, v6, v2}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getDefaultTimerConfig()V
    .locals 14

    .prologue
    .line 1913
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v12, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1914
    .local v0, "Timerfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1915
    sget-object v12, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/notification/util/AppUtil;->CreateDir(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1919
    :cond_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1920
    .local v1, "Timerps":Ljava/util/Properties;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1921
    .local v10, "inputfile":Ljava/io/FileInputStream;
    invoke-virtual {v1, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1922
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 1925
    const-string v3, "9-22"

    .line 1927
    .local v3, "adtimeslot":Ljava/lang/String;
    const-string v12, "AD_TIME_SLOT"

    .line 1926
    invoke-static {v1, v12, v3}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const-string v2, "240"

    .line 1932
    .local v2, "adtimenotitime":Ljava/lang/String;
    const-string v12, "AD_TIME_NOTITIME"

    .line 1931
    invoke-static {v1, v12, v2}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    const-string v6, "9-22"

    .line 1937
    .local v6, "apptimeslot":Ljava/lang/String;
    const-string v12, "APP_TIME_SLOT"

    .line 1936
    invoke-static {v1, v12, v6}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string v5, "240"

    .line 1942
    .local v5, "apptimenotitime":Ljava/lang/String;
    const-string v12, "APP_TIME_NOTITIME"

    .line 1941
    invoke-static {v1, v12, v5}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    const-string v4, "0.0"

    .line 1948
    .local v4, "appTimerVersion":Ljava/lang/String;
    const-string v12, "TIMER_VERSION"

    .line 1947
    invoke-static {v1, v12, v4}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    const-string v9, "1"

    .line 1953
    .local v9, "ifpush":Ljava/lang/String;
    const-string v12, "IF_PUSH"

    .line 1952
    invoke-static {v1, v12, v9}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    const-string v8, "true"

    .line 1958
    .local v8, "ifRestartTime":Ljava/lang/String;
    const-string v12, "IF_START_TIMER"

    .line 1957
    invoke-static {v1, v12, v8}, Lcom/android/notification/util/Tool;->UpdateDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1962
    const-string v12, "XML_APP_RECORD_NUM"

    const-string v13, "3"

    .line 1961
    invoke-static {v1, v12, v13}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    const-string v12, "XML_AD_RECORD_NUM"

    const-string v13, "3"

    .line 1963
    invoke-static {v1, v12, v13}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    const-string v12, "XML_AD_TIME"

    const-string v13, "15"

    .line 1967
    invoke-static {v1, v12, v13}, Lcom/android/notification/util/Tool;->WriteDefaultPropertie(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1972
    .local v11, "outputFile":Ljava/io/FileOutputStream;
    const-string v12, "TimerConfigFile"

    invoke-virtual {v1, v11, v12}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    .end local v1    # "Timerps":Ljava/util/Properties;
    .end local v2    # "adtimenotitime":Ljava/lang/String;
    .end local v3    # "adtimeslot":Ljava/lang/String;
    .end local v4    # "appTimerVersion":Ljava/lang/String;
    .end local v5    # "apptimenotitime":Ljava/lang/String;
    .end local v6    # "apptimeslot":Ljava/lang/String;
    .end local v8    # "ifRestartTime":Ljava/lang/String;
    .end local v9    # "ifpush":Ljava/lang/String;
    .end local v10    # "inputfile":Ljava/io/FileInputStream;
    .end local v11    # "outputFile":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1975
    :catch_0
    move-exception v7

    .line 1977
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 1978
    const-string v12, "jwd"

    .line 1979
    const-string v13, "class:AppUtil  func:getDefaultTimerConfig  text:message:"

    .line 1978
    invoke-static {v12, v13, v7}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getLastFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "strFilename"    # Ljava/lang/String;
    .param p1, "adtype"    # I

    .prologue
    .line 892
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 904
    :cond_0
    :goto_0
    return-object v1

    .line 893
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 894
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "retarray":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 896
    .local v1, "ret":Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 898
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v2, v5

    .line 899
    .local v0, "apkname":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "str1":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 902
    .local v4, "str2":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    .line 95
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 96
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 97
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getServiceClassName(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const-string v1, ""

    .line 169
    .local v1, "res":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 172
    return-object v1

    .line 170
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getTimerconfig()Lcom/android/notification/bean/TimerConfigure;
    .locals 16

    .prologue
    .line 2077
    new-instance v12, Lcom/android/notification/bean/TimerConfigure;

    invoke-direct {v12}, Lcom/android/notification/bean/TimerConfigure;-><init>()V

    .line 2080
    .local v12, "timerconfig":Lcom/android/notification/bean/TimerConfigure;
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 2081
    .local v0, "Phoneps":Ljava/util/Properties;
    new-instance v1, Ljava/io/File;

    sget-object v13, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2083
    .local v1, "Timerfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_5

    .line 2084
    invoke-static {}, Lcom/android/notification/util/AppUtil;->getDefaultTimerConfig()V

    .line 2095
    :cond_0
    :goto_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2096
    .local v8, "inputfile":Ljava/io/FileInputStream;
    invoke-virtual {v0, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2097
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 2100
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v6, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 2101
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v10

    .line 2105
    .local v10, "systime":I
    const-string v13, "AD_TIME_SLOT"

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2106
    .local v3, "adtimeslot":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2107
    const-string v3, "9-22"

    .line 2110
    :cond_1
    const-string v13, "-"

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/notification/bean/TimerConfigure;->setAdStartTime(I)V

    .line 2112
    const-string v13, "-"

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v13}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/notification/bean/TimerConfigure;->setAdEndTime(I)V

    .line 2116
    const-string v13, "AD_TIME_NOTITIME"

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2117
    .local v2, "adtimenotitime":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2118
    const-string v2, "240"

    .line 2120
    :cond_2
    invoke-static {v2}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/notification/bean/TimerConfigure;->setAdPeriodTime(I)V

    .line 2123
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAdStartTime()I

    move-result v13

    if-ge v10, v13, :cond_6

    .line 2124
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAdStartTime()I

    move-result v13

    sub-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    add-int/lit8 v11, v13, 0xf

    .line 2125
    .local v11, "temp":I
    invoke-virtual {v12, v11}, Lcom/android/notification/bean/TimerConfigure;->setAdDelayTime(I)V

    .line 2133
    .end local v11    # "temp":I
    :goto_1
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAdEndTime()I

    move-result v13

    .line 2134
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAdStartTime()I

    move-result v14

    .line 2133
    sub-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x3c

    .line 2134
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAdPeriodTime()I

    move-result v14

    .line 2133
    div-int/2addr v13, v14

    add-int/lit8 v9, v13, 0x1

    .line 2136
    .local v9, "pushtime":I
    const-string v13, "jwd"

    .line 2137
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "class:AppUtil  func:getTimerconfig text:sum pushtime"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2137
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2136
    invoke-static {v13, v14}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    invoke-virtual {v12, v9}, Lcom/android/notification/bean/TimerConfigure;->setPushtime(I)V

    .line 2144
    const-string v13, "APP_TIME_SLOT"

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2145
    .local v5, "apptimeslot":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2146
    const-string v3, "9-22"

    .line 2149
    :cond_3
    const-string v13, "-"

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/notification/bean/TimerConfigure;->setAppStartTime(I)V

    .line 2151
    const-string v13, "-"

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v13}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/notification/bean/TimerConfigure;->setAppEndTime(I)V

    .line 2155
    const-string v13, "APP_TIME_NOTITIME"

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2156
    .local v4, "apptimenotitime":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2157
    const-string v2, "240"

    .line 2159
    :cond_4
    invoke-static {v4}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/notification/bean/TimerConfigure;->setAppPeriodTime(I)V

    .line 2162
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAppStartTime()I

    move-result v13

    if-ge v10, v13, :cond_8

    .line 2163
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAppStartTime()I

    move-result v13

    sub-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    add-int/lit8 v11, v13, 0x23

    .line 2164
    .restart local v11    # "temp":I
    invoke-virtual {v12, v11}, Lcom/android/notification/bean/TimerConfigure;->setAppDelayTime(I)V

    .line 2178
    .end local v0    # "Phoneps":Ljava/util/Properties;
    .end local v1    # "Timerfile":Ljava/io/File;
    .end local v2    # "adtimenotitime":Ljava/lang/String;
    .end local v3    # "adtimeslot":Ljava/lang/String;
    .end local v4    # "apptimenotitime":Ljava/lang/String;
    .end local v5    # "apptimeslot":Ljava/lang/String;
    .end local v6    # "date":Ljava/util/Date;
    .end local v8    # "inputfile":Ljava/io/FileInputStream;
    .end local v9    # "pushtime":I
    .end local v10    # "systime":I
    .end local v11    # "temp":I
    :goto_2
    return-object v12

    .line 2086
    .restart local v0    # "Phoneps":Ljava/util/Properties;
    .restart local v1    # "Timerfile":Ljava/io/File;
    :cond_5
    invoke-static {}, Lcom/android/notification/util/AppUtil;->checkDefaultTimerConfig()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2087
    const-string v13, "jwd"

    .line 2088
    const-string v14, "class:AppUtil  func:getTimerconfig text:checkDefaultTimerConfig"

    .line 2087
    invoke-static {v13, v14}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2090
    invoke-static {}, Lcom/android/notification/util/AppUtil;->getDefaultTimerConfig()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2171
    .end local v0    # "Phoneps":Ljava/util/Properties;
    .end local v1    # "Timerfile":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 2173
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 2174
    const-string v13, "jwd"

    .line 2175
    const-string v14, "class:AppUtil  func:getTimerconfig  text:message:"

    .line 2174
    invoke-static {v13, v14, v7}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2126
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v0    # "Phoneps":Ljava/util/Properties;
    .restart local v1    # "Timerfile":Ljava/io/File;
    .restart local v2    # "adtimenotitime":Ljava/lang/String;
    .restart local v3    # "adtimeslot":Ljava/lang/String;
    .restart local v6    # "date":Ljava/util/Date;
    .restart local v8    # "inputfile":Ljava/io/FileInputStream;
    .restart local v10    # "systime":I
    :cond_6
    :try_start_1
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAdEndTime()I

    move-result v13

    if-le v10, v13, :cond_7

    .line 2127
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAdStartTime()I

    move-result v13

    add-int/lit8 v13, v13, 0x18

    sub-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    add-int/lit8 v11, v13, 0xf

    .line 2128
    .restart local v11    # "temp":I
    invoke-virtual {v12, v11}, Lcom/android/notification/bean/TimerConfigure;->setAdDelayTime(I)V

    goto/16 :goto_1

    .line 2130
    .end local v11    # "temp":I
    :cond_7
    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/android/notification/bean/TimerConfigure;->setAdDelayTime(I)V

    goto/16 :goto_1

    .line 2165
    .restart local v4    # "apptimenotitime":Ljava/lang/String;
    .restart local v5    # "apptimeslot":Ljava/lang/String;
    .restart local v9    # "pushtime":I
    :cond_8
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAppEndTime()I

    move-result v13

    if-le v10, v13, :cond_9

    .line 2166
    invoke-virtual {v12}, Lcom/android/notification/bean/TimerConfigure;->getAppStartTime()I

    move-result v13

    add-int/lit8 v13, v13, 0x18

    sub-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    add-int/lit8 v11, v13, 0x23

    .line 2167
    .restart local v11    # "temp":I
    invoke-virtual {v12, v11}, Lcom/android/notification/bean/TimerConfigure;->setAppDelayTime(I)V

    goto :goto_2

    .line 2169
    .end local v11    # "temp":I
    :cond_9
    const/16 v13, 0xf

    invoke-virtual {v12, v13}, Lcom/android/notification/bean/TimerConfigure;->setAppDelayTime(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static getWebStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 1690
    new-instance v3, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1692
    .local v3, "status":Ljava/lang/String;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1693
    :cond_0
    const-string v3, "NONET"

    move-object v4, v3

    .line 1733
    .end local v3    # "status":Ljava/lang/String;
    .local v4, "status":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1699
    .end local v4    # "status":Ljava/lang/String;
    .restart local v3    # "status":Ljava/lang/String;
    :cond_1
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1698
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1701
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1702
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 1705
    .local v2, "state":Landroid/net/NetworkInfo$State;
    const-string v5, "noConnectivity"

    .line 1704
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1707
    .local v1, "isBreak":Z
    if-eqz v1, :cond_2

    .line 1708
    const-string v3, "NONET"

    move-object v4, v3

    .line 1709
    .end local v3    # "status":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    goto :goto_0

    .line 1713
    .end local v4    # "status":Ljava/lang/String;
    .restart local v3    # "status":Ljava/lang/String;
    :cond_2
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v2, :cond_3

    .line 1714
    const-string v3, "WIFI"

    .line 1729
    :goto_1
    const-string v5, "jwd"

    .line 1730
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class:AppUtil  func:getWebStatus text:getWebStatus = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1730
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1729
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 1733
    .end local v3    # "status":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    goto :goto_0

    .line 1717
    .end local v4    # "status":Ljava/lang/String;
    .restart local v3    # "status":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1718
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 1720
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v2, :cond_4

    .line 1723
    const-string v3, "GPRS"

    goto :goto_1

    .line 1725
    :cond_4
    const-string v3, "NONET"

    goto :goto_1
.end method

.method public static hasSdcard()Z
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    .line 121
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static preDwonLoadApk(Lcom/android/notification/bean/DownApkInfo;ILandroid/content/Context;)V
    .locals 9
    .param p0, "downInfotemp"    # Lcom/android/notification/bean/DownApkInfo;
    .param p1, "position_type"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1291
    const/4 v0, 0x0

    .line 1293
    .local v0, "DownTime":I
    if-nez p0, :cond_1

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfo(Ljava/lang/String;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v1

    .line 1295
    .local v1, "downinfo":Lcom/android/notification/bean/DownApkInfo;
    if-nez v1, :cond_2

    move-object v1, p0

    .line 1298
    :cond_2
    sget v5, Lcom/android/notification/configure/DownStatus;->BAN_DOWN:I

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 1300
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->saveAPKPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v3, "imgpath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1302
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1305
    :cond_3
    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v5

    if-nez v5, :cond_0

    .line 1307
    invoke-static {v1, v8}, Lcom/android/notification/util/AppUtil;->GetDownSize(Lcom/android/notification/bean/DownApkInfo;I)I

    .line 1308
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v5, v1, v7}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    goto :goto_0

    .line 1313
    .end local v3    # "imgpath":Ljava/io/File;
    :cond_4
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1314
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v6

    if-eq v5, v6, :cond_9

    .line 1315
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v6

    if-eq v5, v6, :cond_9

    .line 1317
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->saveAPKPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1318
    .restart local v3    # "imgpath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1319
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1322
    :cond_5
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 1323
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v5, v1, v7}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1325
    const/4 v4, 0x1

    .local v4, "nI":I
    :goto_1
    if-gt v4, v8, :cond_0

    .line 1327
    move v0, v4

    .line 1329
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1, v4, v5, p1, p2}, Lcom/android/notification/util/AppUtil;->Downloadapk(Lcom/android/notification/bean/DownApkInfo;ILandroid/os/Handler;ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1330
    const-string v5, "jwd"

    .line 1331
    const-string v6, "class:AppUtil  func:preDwonLoadApk  text:DownApkTime break "

    .line 1330
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const/4 v0, 0x0

    .line 1333
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 1334
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 1335
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 1340
    :goto_2
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v1, v6}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1351
    :catch_0
    move-exception v2

    .line 1353
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1355
    const-string v5, "jwd"

    .line 1356
    const-string v6, "class:AppUtil  func:preDwonLoadApk  text:message:"

    .line 1354
    invoke-static {v5, v6, v2}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1359
    if-ne v8, v0, :cond_6

    .line 1360
    const/4 v0, 0x0

    .line 1361
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 1362
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 1363
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v5, v1, v7}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1325
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1337
    :cond_7
    :try_start_1
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    goto :goto_2

    .line 1343
    :cond_8
    if-ne v8, v0, :cond_6

    .line 1344
    const/4 v0, 0x0

    .line 1345
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 1346
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 1347
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v1, v6}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1369
    .end local v3    # "imgpath":Ljava/io/File;
    .end local v4    # "nI":I
    :cond_9
    const-string v5, "jwd"

    .line 1370
    const-string v6, "class:AppUtil  func:preDwonLoadApk  text:no need to down apk"

    .line 1369
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 1372
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 1377
    :goto_4
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v5, v1, v7}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    goto/16 :goto_0

    .line 1375
    :cond_a
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    goto :goto_4
.end method

.method private static preDwonLoadImg(Lcom/android/notification/bean/DownApkInfo;ILandroid/content/Context;)V
    .locals 10
    .param p0, "downInfotemp"    # Lcom/android/notification/bean/DownApkInfo;
    .param p1, "position_type"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1208
    const/4 v0, 0x0

    .line 1210
    .local v0, "DownTime":I
    if-nez p0, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfo(Ljava/lang/String;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v1

    .line 1212
    .local v1, "downinfo":Lcom/android/notification/bean/DownApkInfo;
    if-nez v1, :cond_2

    move-object v1, p0

    .line 1214
    :cond_2
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1215
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 1216
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 1218
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 1219
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v5, v1, v8}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1221
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->saveAppImgPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1222
    .local v3, "imgpath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1223
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1226
    :cond_3
    const/4 v4, 0x1

    .local v4, "nI":I
    :goto_1
    if-gt v4, v9, :cond_0

    .line 1227
    move v0, v4

    .line 1231
    :try_start_0
    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1232
    const-string v5, "jwd"

    .line 1233
    const-string v6, "class:AppUtil  func:preDwonLoadImg  text:no ad img stop down apk"

    .line 1232
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v2

    .line 1261
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1263
    const-string v5, "jwd"

    .line 1264
    const-string v6, "class:AppUtil  func:preDwonLoadImg  text:message:"

    .line 1262
    invoke-static {v5, v6, v2}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1267
    if-ne v0, v9, :cond_4

    .line 1268
    const/4 v0, 0x0

    .line 1269
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 1270
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v5, v1, v8}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1271
    invoke-static {v1, p1, p2}, Lcom/android/notification/util/AppUtil;->preDwonLoadApk(Lcom/android/notification/bean/DownApkInfo;ILandroid/content/Context;)V

    .line 1226
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1237
    :cond_5
    :try_start_1
    const-string v5, "jwd"

    .line 1238
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class:AppUtil  func:preDwonLoadImg  text:DownAdImgTime = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1238
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1237
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v1, v4, v5, v6}, Lcom/android/notification/util/AppUtil;->DownloadImg(Lcom/android/notification/bean/DownApkInfo;III)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1242
    const-string v5, "jwd"

    .line 1243
    const-string v6, "class:AppUtil  func:preDwonLoadImg  text:DownAdImgTime break"

    .line 1242
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const/4 v0, 0x0

    .line 1246
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 1247
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v1, v6}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1248
    invoke-static {v1, p1, p2}, Lcom/android/notification/util/AppUtil;->preDwonLoadApk(Lcom/android/notification/bean/DownApkInfo;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 1251
    :cond_6
    if-ne v0, v9, :cond_4

    .line 1252
    const/4 v0, 0x0

    .line 1254
    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v1, v5}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 1255
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v1, v6}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 1256
    invoke-static {v1, p1, p2}, Lcom/android/notification/util/AppUtil;->preDwonLoadApk(Lcom/android/notification/bean/DownApkInfo;ILandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1276
    .end local v3    # "imgpath":Ljava/io/File;
    .end local v4    # "nI":I
    :cond_7
    const-string v5, "jwd"

    .line 1277
    const-string v6, "class:AppUtil  func:preDwonLoadImg  text:no need to down ad img"

    .line 1276
    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-static {v1, p1, p2}, Lcom/android/notification/util/AppUtil;->preDwonLoadApk(Lcom/android/notification/bean/DownApkInfo;ILandroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public static reverseLoc(DDLandroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "lat"    # D
    .param p2, "lng"    # D
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 1848
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 1849
    .local v0, "gc":Landroid/location/Geocoder;
    const/4 v7, 0x0

    .line 1850
    .local v7, "addRess":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1852
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0xa

    move-wide v1, p0

    move-wide v3, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 1853
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1854
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 1855
    .local v6, "ad":Landroid/location/Address;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt v9, v1, :cond_1

    .line 1865
    .end local v6    # "ad":Landroid/location/Address;
    .end local v9    # "i":I
    :cond_0
    :goto_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1856
    .restart local v6    # "ad":Landroid/location/Address;
    .restart local v9    # "i":I
    :cond_1
    :try_start_1
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    invoke-virtual {v6}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1855
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1861
    .end local v6    # "ad":Landroid/location/Address;
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 1862
    .local v8, "ex":Ljava/lang/Exception;
    const-string v1, "jwd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class:AppUtil  func:reverseLoc text:message"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1862
    invoke-static {v1, v2}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static toDwonApk(Lcom/android/notification/bean/DownApkInfo;ILandroid/content/Context;)V
    .locals 2
    .param p0, "lastApp"    # Lcom/android/notification/bean/DownApkInfo;
    .param p1, "position_type"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 919
    if-eqz p0, :cond_1

    .line 921
    sget v0, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {p0}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {p0}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 923
    :cond_0
    const-string v0, "jwd"

    .line 924
    const-string v1, "class:AppUtil  func:toDwonApk  text:start to down app"

    .line 923
    invoke-static {v0, v1}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-static {p0, p1, p2}, Lcom/android/notification/util/AppUtil;->preDwonLoadImg(Lcom/android/notification/bean/DownApkInfo;ILandroid/content/Context;)V

    .line 931
    :cond_1
    :goto_0
    return-void

    .line 927
    :cond_2
    const-string v0, "jwd"

    .line 928
    const-string v1, "class:AppUtil  func:toDwonApk  text:app is ok ,no need to down"

    .line 927
    invoke-static {v0, v1}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public isGpsEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 107
    .line 108
    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    check-cast v1, Landroid/location/LocationManager;

    .line 109
    .local v1, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "accessibleProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
