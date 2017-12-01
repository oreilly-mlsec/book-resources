.class final Lcom/android/view/ViewLayout$1ContentJavascriptInterface;
.super Ljava/lang/Object;
.source "ViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/view/ViewLayout;->settingForWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ContentJavascriptInterface"
.end annotation


# instance fields
.field private RecordNum:I

.field final synthetic this$0:Lcom/android/view/ViewLayout;


# direct methods
.method constructor <init>(Lcom/android/view/ViewLayout;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->RecordNum:I

    .line 273
    return-void
.end method


# virtual methods
.method public final DownAdImg()V
    .locals 5

    .prologue
    .line 279
    const-string v3, "jwd"

    .line 280
    const-string v4, "class:ViewLayout  func:DownAdImg  text:DownAdImg"

    .line 279
    invoke-static {v3, v4}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :try_start_0
    iget-object v3, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/view/ViewLayout;->access$0(Lcom/android/view/ViewLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/view/ViewLayout;->getViewWebStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "web":Ljava/lang/String;
    const-string v3, "NONET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    .end local v2    # "web":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local v2    # "web":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 288
    .local v0, "downInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/notification/util/AppUtil;->DownLoadAppInternalImg(Ljava/util/List;I)Z

    .line 289
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->RecordNum:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    .end local v0    # "downInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    .end local v2    # "web":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 295
    const-string v3, "jwd"

    .line 296
    const-string v4, "class:ViewLayout  func:DownAdImg  text:message:"

    .line 295
    invoke-static {v3, v4, v1}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final GetDownInfoByFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 325
    iget-object v1, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->downinfo:Lcom/android/notification/bean/DownApkInfo;
    invoke-static {v1}, Lcom/android/view/ViewLayout;->access$1(Lcom/android/view/ViewLayout;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 328
    :cond_1
    const-string v1, "adID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->downinfo:Lcom/android/notification/bean/DownApkInfo;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$1(Lcom/android/view/ViewLayout;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_2
    const-string v1, "imgFlie"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->downinfo:Lcom/android/notification/bean/DownApkInfo;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$1(Lcom/android/view/ViewLayout;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_3
    const-string v1, "imgFlag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->downinfo:Lcom/android/notification/bean/DownApkInfo;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$1(Lcom/android/view/ViewLayout;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final Getinterval()I
    .locals 3

    .prologue
    .line 309
    sget-object v1, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 310
    const-string v2, "XML_AD_TIME"

    .line 308
    invoke-static {v1, v2}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 313
    const/16 v0, 0xf

    .line 315
    :cond_0
    return v0
.end method

.method public final IfViewActive()Z
    .locals 3

    .prologue
    .line 341
    # getter for: Lcom/android/view/ViewLayout;->contextList:Ljava/util/List;
    invoke-static {}, Lcom/android/view/ViewLayout;->access$2()Ljava/util/List;

    move-result-object v1

    # getter for: Lcom/android/view/ViewLayout;->contextList:Ljava/util/List;
    invoke-static {}, Lcom/android/view/ViewLayout;->access$2()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 342
    .local v0, "creContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/view/ViewLayout;->access$0(Lcom/android/view/ViewLayout;)Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 343
    const/4 v1, 0x0

    .line 345
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final UpdateShowRecord()V
    .locals 9

    .prologue
    .line 376
    const/4 v8, 0x0

    .line 377
    .local v8, "retIndex":I
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$0(Lcom/android/view/ViewLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/view/ViewLayout;->getViewWebStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, "web":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->RecordNum:I

    iget-object v3, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;
    invoke-static {v3}, Lcom/android/view/ViewLayout;->access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    .line 382
    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 381
    invoke-static {v0, v3}, Lcom/android/view/ViewLayout;->access$4(Lcom/android/view/ViewLayout;Ljava/util/List;)V

    .line 383
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->RecordNum:I

    .line 391
    :cond_1
    sget-object v0, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 392
    const-string v3, "XML_AD_TYPE"

    .line 390
    invoke-static {v0, v3}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 394
    .local v6, "adType":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    const-string v6, "0"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    :cond_2
    const/4 v5, 0x0

    .line 400
    .local v5, "apk_id":Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$0(Lcom/android/view/ViewLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/notification/util/AppUtil;->GetApkId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 407
    :goto_0
    :try_start_2
    sget-object v0, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 408
    const-string v3, "XML_AD_INDEX"

    .line 406
    invoke-static {v0, v3}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "ad_index":Ljava/lang/String;
    sget-object v0, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 411
    const-string v3, "XML_APP_INDEX"

    .line 409
    invoke-static {v0, v3}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "app_index":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 414
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;

    move-result-object v0

    .line 415
    const/4 v3, 0x0

    .line 414
    invoke-static/range {v0 .. v5}, Lcom/android/notification/util/AppUtil;->GetNextAdRecordIndex(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 422
    :goto_1
    const/4 v0, -0x1

    if-ne v0, v8, :cond_5

    .line 440
    .end local v1    # "ad_index":Ljava/lang/String;
    .end local v2    # "app_index":Ljava/lang/String;
    .end local v5    # "apk_id":Ljava/lang/String;
    .end local v6    # "adType":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 401
    .restart local v5    # "apk_id":Ljava/lang/String;
    .restart local v6    # "adType":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 403
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 436
    .end local v5    # "apk_id":Ljava/lang/String;
    .end local v6    # "adType":Ljava/lang/String;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    .line 438
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 418
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v1    # "ad_index":Ljava/lang/String;
    .restart local v2    # "app_index":Ljava/lang/String;
    .restart local v5    # "apk_id":Ljava/lang/String;
    .restart local v6    # "adType":Ljava/lang/String;
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;

    move-result-object v0

    .line 419
    const/4 v3, 0x1

    .line 418
    invoke-static/range {v0 .. v5}, Lcom/android/notification/util/AppUtil;->GetNextAdRecordIndex(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    .line 425
    :cond_5
    iget-object v3, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/notification/bean/DownApkInfo;

    invoke-static {v3, v0}, Lcom/android/view/ViewLayout;->access$5(Lcom/android/view/ViewLayout;Lcom/android/notification/bean/DownApkInfo;)V

    .line 427
    iget-object v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->downinfo:Lcom/android/notification/bean/DownApkInfo;
    invoke-static {v0}, Lcom/android/view/ViewLayout;->access$1(Lcom/android/view/ViewLayout;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->setAdIndex(ILjava/lang/String;)V

    .line 429
    iget v0, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->RecordNum:I

    iget-object v3, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;
    invoke-static {v3}, Lcom/android/view/ViewLayout;->access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 430
    const-string v0, "jwd"

    .line 431
    const-string v3, "class:ViewLayout  func:UpdateShowRecord  text:UpdateShowRecord"

    .line 430
    invoke-static {v0, v3}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->UpdateShowRecord()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public final fileExist(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 450
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->downinfo:Lcom/android/notification/bean/DownApkInfo;
    invoke-static {v2}, Lcom/android/view/ViewLayout;->access$1(Lcom/android/view/ViewLayout;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getImgSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v1

    .line 456
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final setAdIndex(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 359
    const-string v1, "XML_AD_INDEX"

    .line 360
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-static {v0, v1, v2}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_0
    sget-object v0, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 368
    const-string v1, "XML_AD_TYPE"

    .line 367
    invoke-static {v0, v1, p2}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void

    .line 362
    :cond_0
    sget-object v0, Lcom/android/notification/configure/ConfigureFile;->TimerConfigFile:Ljava/lang/String;

    .line 363
    const-string v1, "XML_APP_INDEX"

    .line 364
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-static {v0, v1, v2}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final startintent(Ljava/lang/String;)V
    .locals 4
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 476
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/view/ViewLayout;->access$0(Lcom/android/view/ViewLayout;)Landroid/content/Context;

    move-result-object v2

    .line 477
    const-class v3, Lcom/android/notification/AdService;

    .line 476
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 479
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 480
    invoke-static {p1}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v0

    .line 481
    .local v0, "Id":I
    const-string v2, "ADID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    const-string v2, "position_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    const-string v2, "SendCilck"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    iget-object v2, p0, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;->this$0:Lcom/android/view/ViewLayout;

    # getter for: Lcom/android/view/ViewLayout;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/view/ViewLayout;->access$0(Lcom/android/view/ViewLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 485
    return-void
.end method
