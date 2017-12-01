.class public Lcom/android/notification/DwonApkThread;
.super Ljava/lang/Thread;
.source "DwonApkThread.java"


# instance fields
.field private APPNOTI_ID:I

.field private apkName:Ljava/lang/String;

.field private downinfo:Lcom/android/notification/bean/DownApkInfo;

.field private g_context:Landroid/content/Context;

.field private g_intent:Landroid/content/Intent;

.field private handler:Landroid/os/Handler;

.field private notification:Landroid/app/Notification;

.field private notificationMagager:Landroid/app/NotificationManager;

.field private position_type:I


# direct methods
.method public constructor <init>(Lcom/android/notification/bean/DownApkInfo;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;
    .param p2, "g_context"    # Landroid/content/Context;
    .param p3, "g_intent"    # Landroid/content/Intent;
    .param p4, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    const v0, 0x1330290

    iput v0, p0, Lcom/android/notification/DwonApkThread;->APPNOTI_ID:I

    .line 31
    iput-object v1, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    .line 32
    iput-object v1, p0, Lcom/android/notification/DwonApkThread;->notificationMagager:Landroid/app/NotificationManager;

    .line 34
    iput-object v1, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 36
    iput-object v1, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lcom/android/notification/DwonApkThread;->g_intent:Landroid/content/Intent;

    .line 39
    iput-object v1, p0, Lcom/android/notification/DwonApkThread;->apkName:Ljava/lang/String;

    .line 42
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/notification/DwonApkThread;->position_type:I

    .line 44
    new-instance v0, Lcom/android/notification/DwonApkThread$1;

    invoke-direct {v0, p0}, Lcom/android/notification/DwonApkThread$1;-><init>(Lcom/android/notification/DwonApkThread;)V

    iput-object v0, p0, Lcom/android/notification/DwonApkThread;->handler:Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 105
    iput-object p2, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/android/notification/DwonApkThread;->g_intent:Landroid/content/Intent;

    .line 107
    iput p4, p0, Lcom/android/notification/DwonApkThread;->position_type:I

    .line 108
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->setNotiID()V

    .line 109
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->CheckFile()V

    .line 110
    return-void
.end method

.method private CheckFile()V
    .locals 5

    .prologue
    .line 181
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 187
    :cond_0
    return-void
.end method

.method private GetApkName()V
    .locals 5

    .prologue
    .line 197
    iget-object v3, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "apkUrl":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "akp":[Ljava/lang/String;
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v0, v3

    .line 201
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 204
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/notification/DwonApkThread;->apkName:Ljava/lang/String;

    .line 205
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->apkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/notification/DwonApkThread;->apkName:Ljava/lang/String;

    .line 206
    return-void
.end method

.method private GetApkSize()I
    .locals 4

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "progress":I
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .line 213
    :cond_0
    return v1
.end method

.method private GetProgress()I
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v1}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->GetApkSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v2

    div-int v0, v1, v2

    .line 221
    .local v0, "ret":I
    goto :goto_0
.end method

.method private InitNotification()V
    .locals 6

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    .line 229
    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 228
    iput-object v1, p0, Lcom/android/notification/DwonApkThread;->notificationMagager:Landroid/app/NotificationManager;

    .line 231
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->notificationMagager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/notification/DwonApkThread;->APPNOTI_ID:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 233
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    .line 234
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    const v2, 0x1080081

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 235
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 236
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdappprogress()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 236
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 238
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdnotiprogress()I

    move-result v2

    .line 239
    iget-object v3, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v3

    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->GetApkSize()I

    move-result v4

    const/4 v5, 0x0

    .line 238
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 240
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdtextdown()I

    move-result v2

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->GetProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 243
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdapkname()I

    move-result v2

    iget-object v3, p0, Lcom/android/notification/DwonApkThread;->apkName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->g_intent:Landroid/content/Intent;

    const-string v2, "SendCilck"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v2

    iget-object v3, p0, Lcom/android/notification/DwonApkThread;->g_intent:Landroid/content/Intent;

    .line 248
    const/high16 v4, 0x8000000

    .line 247
    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 250
    .local v0, "pengdingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 252
    iget-object v1, p0, Lcom/android/notification/DwonApkThread;->notificationMagager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/notification/DwonApkThread;->APPNOTI_ID:I

    iget-object v3, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 253
    return-void
.end method

.method private RequestInstall()V
    .locals 8

    .prologue
    .line 261
    sget-object v6, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 262
    const-string v7, "USER_ID"

    .line 261
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "user_id":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v6}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v2

    .line 267
    .local v2, "id":I
    :try_start_0
    iget-object v6, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/notification/util/AppUtil;->GetApkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "app_key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
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

    .line 272
    const-string v7, "&position_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/notification/DwonApkThread;->position_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&apk_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 269
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/notification/DwonApkThread;->g_intent:Landroid/content/Intent;

    invoke-static {v6, v7}, Lcom/android/notification/util/AppUtil;->getWebStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "webflag":Ljava/lang/String;
    const-string v6, "NONET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 277
    const-string v6, "jwd"

    .line 278
    const-string v7, "class:RequestInstall  func:RequestInstall  text:Send installApk request"

    .line 277
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {v3}, Lcom/android/notification/util/Tool;->MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->SysinstallApk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v0    # "app_key":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v5    # "webflag":Ljava/lang/String;
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    const-string v6, "jwd"

    .line 288
    const-string v7, "class:DownLoadService  func:RequestInstall  text:message:"

    .line 286
    invoke-static {v6, v7, v1}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->SysinstallApk()V

    goto :goto_0
.end method

.method private SysinstallApk()V
    .locals 4

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "str":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 303
    const-string v3, "application/vnd.android.package-archive"

    .line 302
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    iget-object v2, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method private Updatedowninfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    sget-object v1, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v2

    .line 170
    invoke-static {v1, v2}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfo(Ljava/lang/String;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v0

    .line 172
    .local v0, "tempinfo":Lcom/android/notification/bean/DownApkInfo;
    if-eqz v0, :cond_0

    .line 173
    iput-object v0, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 175
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/notification/DwonApkThread;)I
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->GetProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/android/notification/DwonApkThread;)Lcom/android/notification/bean/DownApkInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/notification/DwonApkThread;)I
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->GetApkSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/android/notification/DwonApkThread;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/notification/DwonApkThread;->notificationMagager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/notification/DwonApkThread;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/android/notification/DwonApkThread;->APPNOTI_ID:I

    return v0
.end method

.method static synthetic access$6(Lcom/android/notification/DwonApkThread;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/notification/DwonApkThread;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->RequestInstall()V

    return-void
.end method

.method static synthetic access$8(Lcom/android/notification/DwonApkThread;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/notification/DwonApkThread;->g_intent:Landroid/content/Intent;

    return-object v0
.end method

.method private setNotiID()V
    .locals 3

    .prologue
    .line 190
    iget v1, p0, Lcom/android/notification/DwonApkThread;->APPNOTI_ID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "NotiId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/notification/DwonApkThread;->APPNOTI_ID:I

    .line 194
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 114
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->GetApkName()V

    .line 115
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 116
    .local v2, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->InitNotification()V

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/android/notification/DwonApkThread;->Updatedowninfo()V

    .line 120
    sget v4, Lcom/android/notification/configure/DownStatus;->BAN_DOWN:I

    iget-object v5, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v5}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v5

    if-eq v4, v5, :cond_0

    sget v4, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    iget-object v5, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 121
    invoke-virtual {v5}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 123
    :cond_0
    const-string v4, "jwd"

    .line 124
    const-string v5, "class:DwonApkThread  func:run  text:begin Down"

    .line 123
    invoke-static {v4, v5}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    invoke-virtual {v4, v5}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 127
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 128
    const/4 v6, 0x1

    .line 127
    invoke-static {v4, v5, v6}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 129
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/notification/DwonApkThread;->g_intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/notification/util/AppUtil;->getWebStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "webflag":Ljava/lang/String;
    const-string v4, "NONET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 132
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/notification/DwonApkThread;->handler:Landroid/os/Handler;

    .line 133
    iget v7, p0, Lcom/android/notification/DwonApkThread;->position_type:I

    iget-object v8, p0, Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;

    .line 132
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/notification/util/AppUtil;->Downloadapk(Lcom/android/notification/bean/DownApkInfo;ILandroid/os/Handler;ILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 135
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v4, v5}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 137
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v4, v5}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 138
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    const/4 v6, 0x1

    .line 138
    invoke-static {v4, v5, v6}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 167
    .end local v3    # "webflag":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 143
    .restart local v3    # "webflag":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    iput v4, v2, Landroid/os/Message;->what:I

    .line 144
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v4, v5}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 146
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v4, v5}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 147
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    .line 148
    iget-object v5, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    const/4 v6, 0x1

    .line 147
    invoke-static {v4, v5, v6}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v3    # "webflag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    iput v9, v2, Landroid/os/Message;->what:I

    .line 156
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v4, v5}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 158
    iget-object v4, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    sget v5, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v4, v5}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 160
    :try_start_1
    sget-object v4, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 161
    const/4 v6, 0x1

    .line 160
    invoke-static {v4, v5, v6}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 162
    :catch_1
    move-exception v1

    .line 164
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
