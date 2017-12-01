.class public Lcom/android/notification/AdService;
.super Landroid/app/Service;
.source "AdService.java"


# instance fields
.field private downApkThread:Lcom/android/notification/DwonApkThread;

.field private downinfo:Lcom/android/notification/bean/DownApkInfo;

.field private g_context:Landroid/content/Context;

.field private g_intent:Landroid/content/Intent;

.field private position_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 26
    iput-object v0, p0, Lcom/android/notification/AdService;->downApkThread:Lcom/android/notification/DwonApkThread;

    .line 28
    iput-object v0, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/notification/AdService;->position_type:I

    .line 23
    return-void
.end method

.method private GetApkFileLenth()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v2

    if-nez v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/notification/AdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    .line 194
    invoke-static {v2, v3}, Lcom/android/notification/util/AppUtil;->getWebStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "webStatus":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    const-string v2, "NONET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/notification/util/AppUtil;->GetDownSize(Lcom/android/notification/bean/DownApkInfo;I)I

    .line 201
    .end local v1    # "webStatus":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v2

    if-nez v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    const-string v3, "\u7f51\u7edc\u5f02\u5e38\u7ec8\u6b62\u4e0b\u8f7d..."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 203
    iget-object v2, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/notification/AdService;->stopService(Landroid/content/Intent;)Z

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/android/notification/AdService;->startThead()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    iget-object v2, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    const-string v3, "\u7f51\u7edc\u5f02\u5e38\u7ec8\u6b62\u4e0b\u8f7d..."

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private GetNotiID(I)I
    .locals 4
    .param p1, "adID"    # I

    .prologue
    .line 161
    const v0, 0x1330290

    .line 162
    .local v0, "APPNOTI_ID":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "NotiId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v0

    .line 167
    return v0
.end method

.method private RequestInstall()V
    .locals 8

    .prologue
    .line 267
    sget-object v6, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 268
    const-string v7, "USER_ID"

    .line 267
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "user_id":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v6}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v2

    .line 273
    .local v2, "id":I
    :try_start_0
    iget-object v6, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/notification/util/AppUtil;->GetApkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "app_key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&record_type=3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 278
    const-string v7, "&position_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/notification/AdService;->position_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&apk_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    invoke-static {v6, v7}, Lcom/android/notification/util/AppUtil;->getWebStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "webflag":Ljava/lang/String;
    const-string v6, "NONET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 283
    const-string v6, "jwd"

    .line 284
    const-string v7, "class:DownLoadService  func:RequestInstall  text:Send installApk request"

    .line 283
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {v3}, Lcom/android/notification/util/Tool;->MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/android/notification/AdService;->SysinstallApk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v0    # "app_key":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v5    # "webflag":Ljava/lang/String;
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    const-string v6, "jwd"

    .line 294
    const-string v7, "class:DownLoadService  func:RequestInstall  text:message:"

    .line 292
    invoke-static {v6, v7, v1}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    invoke-direct {p0}, Lcom/android/notification/AdService;->SysinstallApk()V

    goto :goto_0
.end method

.method private SendCilckRequest()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 320
    iget-object v7, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v7}, Lcom/android/notification/bean/DownApkInfo;->getCilckTime()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "oldClickTime":Ljava/lang/String;
    invoke-static {}, Lcom/android/notification/util/Tool;->getSysTime()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "newClickTime":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 324
    const-wide/16 v7, 0x0

    invoke-static {v3}, Lcom/android/notification/util/Tool;->ChangeStrToLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 325
    :cond_0
    iget-object v7, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v7, v0}, Lcom/android/notification/bean/DownApkInfo;->setCilckTime(Ljava/lang/String;)V

    .line 326
    sget-object v7, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-static {v7, v8, v6}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 327
    const-string v7, "jwd"

    .line 328
    const-string v8, "class:AadService  func:SendCilckRequest  text:oldClickTime is null"

    .line 327
    invoke-static {v7, v8}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_0
    return v6

    .line 332
    :cond_1
    invoke-static {v3}, Lcom/android/notification/util/Tool;->ChangeStrToLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 333
    .local v4, "oldtime":J
    invoke-static {v0}, Lcom/android/notification/util/Tool;->ChangeStrToLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 335
    .local v1, "newtime":J
    iget-object v7, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v7, v0}, Lcom/android/notification/bean/DownApkInfo;->setCilckTime(Ljava/lang/String;)V

    .line 336
    sget-object v7, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-static {v7, v8, v6}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 338
    const-string v7, "jwd"

    .line 339
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "class:AadService  func:SendCilckRequest  text:oldClickTime :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "newClickTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 339
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 338
    invoke-static {v7, v8}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sub-long v7, v1, v4

    const-wide/16 v9, 0xf

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 343
    const-string v7, "jwd"

    .line 344
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "class:AadService  func:SendCilckRequest  text:oldClickTime < newClickTime :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 344
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 343
    invoke-static {v7, v8}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_2
    const-string v6, "jwd"

    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "class:AadService  func:SendCilckRequest  text:oldClickTime == newClickTime:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 349
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 348
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private StartDwonApk()V
    .locals 3

    .prologue
    .line 248
    sget v0, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    iget-object v1, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    iget-object v0, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/notification/AdService;->stopService(Landroid/content/Intent;)Z

    .line 259
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v0}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/android/notification/AdService;->GetApkFileLenth()V

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/android/notification/AdService;->startThead()V

    goto :goto_0
.end method

.method private SysinstallApk()V
    .locals 4

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 309
    const-string v3, "application/vnd.android.package-archive"

    .line 308
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    iget-object v2, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method private ifApkOk()Z
    .locals 5

    .prologue
    .line 234
    sget v1, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    iget-object v2, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 235
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 237
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 241
    .end local v0    # "apkFile":Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private push()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v0}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/notification/util/Tool;->IfAPKOk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/notification/AdService;->pushApk()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/notification/AdService;->pushAd()V

    goto :goto_0
.end method

.method private pushAd()V
    .locals 5

    .prologue
    .line 144
    iget-object v3, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "adurl":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 151
    .local v1, "content_url":Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 152
    const-string v3, "com.android.browser"

    .line 153
    const-string v4, "com.android.browser.BrowserActivity"

    .line 152
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    iget-object v3, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    iget-object v3, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/notification/AdService;->stopService(Landroid/content/Intent;)Z

    .line 158
    .end local v1    # "content_url":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private pushApk()V
    .locals 3

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/notification/AdService;->ifApkOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    .line 177
    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    check-cast v0, Landroid/app/NotificationManager;

    .line 178
    .local v0, "notificationMagager":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/notification/AdService;->GetNotiID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 179
    invoke-direct {p0}, Lcom/android/notification/AdService;->RequestInstall()V

    .line 180
    iget-object v1, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/notification/AdService;->stopService(Landroid/content/Intent;)Z

    .line 185
    .end local v0    # "notificationMagager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/notification/AdService;->StartDwonApk()V

    goto :goto_0
.end method

.method private sendRequest(I)V
    .locals 12
    .param p1, "AppId"    # I

    .prologue
    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/android/notification/AdService;->SendCilckRequest()Z

    move-result v5

    .line 85
    .local v5, "ifDown":Z
    if-nez v5, :cond_1

    .line 86
    const-string v9, "jwd"

    .line 87
    const-string v10, "class:DownLoadService  func:sendRequest  text:error click"

    .line 86
    invoke-static {v9, v10}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v9, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/android/notification/AdService;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v5    # "ifDown":Z
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_1
    invoke-direct {p0}, Lcom/android/notification/AdService;->push()V

    .line 98
    iget-object v9, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    const-string v10, "SendCilck"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 99
    .local v3, "flag":I
    invoke-virtual {p0}, Lcom/android/notification/AdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 100
    iget-object v10, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    .line 99
    invoke-static {v9, v10}, Lcom/android/notification/util/AppUtil;->getWebStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "webStatus":Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "NONET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 104
    const/4 v9, 0x1

    if-ne v9, v3, :cond_0

    .line 107
    sget-object v9, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 108
    const-string v10, "USER_ID"

    .line 106
    invoke-static {v9, v10}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "user_id":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v9}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v4

    .line 111
    .local v4, "id":I
    iget-object v9, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/notification/util/AppUtil;->GetApkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "app_key":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&record_type=1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 115
    const-string v10, "&position_type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/notification/AdService;->position_type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&apk_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 116
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 112
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/notification/util/Tool;->MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 120
    .end local v0    # "app_key":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "user_id":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 125
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private startThead()V
    .locals 5

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 222
    new-instance v0, Lcom/android/notification/DwonApkThread;

    iget-object v1, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 223
    invoke-virtual {p0}, Lcom/android/notification/AdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/notification/AdService;->position_type:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/notification/DwonApkThread;-><init>(Lcom/android/notification/bean/DownApkInfo;Landroid/content/Context;Landroid/content/Intent;I)V

    .line 222
    iput-object v0, p0, Lcom/android/notification/AdService;->downApkThread:Lcom/android/notification/DwonApkThread;

    .line 224
    iget-object v0, p0, Lcom/android/notification/AdService;->downApkThread:Lcom/android/notification/DwonApkThread;

    invoke-virtual {v0}, Lcom/android/notification/DwonApkThread;->start()V

    .line 225
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startid"    # I

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/android/notification/AdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lcom/android/notification/AdService;->g_intent:Landroid/content/Intent;

    .line 45
    if-nez p1, :cond_0

    .line 46
    iget-object v2, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    const-string v3, "\u7f51\u7edc\u5f02\u5e38\u7ec8\u6b62\u4e0b\u8f7d..."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 77
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v2, "ADID"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "AppId":I
    const-string v2, "position_type"

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/notification/AdService;->position_type:I

    .line 54
    :try_start_0
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfo(Ljava/lang/String;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 56
    iget-object v2, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    if-nez v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/notification/AdService;->g_context:Landroid/content/Context;

    const-string v3, "\u7f51\u7edc\u5f02\u5e38\u7ec8\u6b62\u4e0b\u8f7d..."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/notification/AdService;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    invoke-direct {p0, v0}, Lcom/android/notification/AdService;->sendRequest(I)V

    goto :goto_0

    .line 62
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :try_start_1
    sget v2, Lcom/android/notification/configure/DownStatus;->BAN_DOWN:I

    iget-object v3, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 63
    iget-object v2, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 64
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/notification/AdService;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 65
    const/4 v4, 0x1

    .line 64
    invoke-static {v2, v3, v4}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 68
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/notification/AdService;->sendRequest(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
