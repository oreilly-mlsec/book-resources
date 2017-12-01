.class public Lcom/android/notification/DownThread;
.super Ljava/lang/Thread;
.source "DownThread.java"


# instance fields
.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field private mCruApp:Lcom/android/notification/bean/DownApkInfo;

.field private mDownInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/notification/bean/DownApkInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    .line 30
    iput-object v0, p0, Lcom/android/notification/DownThread;->context:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/android/notification/DownThread;->intent:Landroid/content/Intent;

    .line 35
    iput-object p1, p0, Lcom/android/notification/DownThread;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/notification/DownThread;->intent:Landroid/content/Intent;

    .line 37
    return-void
.end method

.method private DownAllAd()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/notification/DownThread;->DownSingleAd()V

    .line 207
    return-void
.end method

.method private DownAllApk()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/notification/DownThread;->DownSingleRecord()V

    .line 147
    return-void
.end method

.method private DownAllRecord()V
    .locals 3

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/notification/DownThread;->mDownInfos:Ljava/util/List;

    if-nez v2, :cond_1

    .line 254
    :cond_0
    return-void

    .line 230
    :cond_1
    const/4 v1, 0x0

    .local v1, "nI":I
    :goto_0
    iget-object v2, p0, Lcom/android/notification/DownThread;->mDownInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/notification/DownThread;->mDownInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/notification/bean/DownApkInfo;

    iput-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    .line 233
    :try_start_0
    invoke-direct {p0}, Lcom/android/notification/DownThread;->UpdatemCruApp()V

    .line 235
    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    if-nez v2, :cond_2

    .line 230
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_2
    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdType()I

    move-result v2

    if-nez v2, :cond_4

    .line 239
    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/notification/util/Tool;->IfAPKOk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/android/notification/DownThread;->DownAllApk()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/notification/DownThread;->DownAllAd()V

    goto :goto_1

    .line 245
    :cond_4
    invoke-direct {p0}, Lcom/android/notification/DownThread;->DownAllApk()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private DownSingleAd()V
    .locals 6

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    if-eqz v2, :cond_0

    .line 117
    :try_start_0
    sget v2, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    iget-object v3, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 118
    sget v2, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    iget-object v3, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getImgFlag()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 120
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    .line 121
    iget-object v3, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    const/4 v4, 0x1

    .line 120
    invoke-static {v2, v3, v4}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V

    .line 122
    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/notification/util/AppUtil;->DownloadImg(Lcom/android/notification/bean/DownApkInfo;III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 124
    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 125
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    const/4 v4, 0x1

    .line 125
    invoke-static {v2, v3, v4}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setImgFlag(I)V

    .line 133
    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v2, v3}, Lcom/android/notification/bean/DownApkInfo;->setDownFlag(I)V

    .line 135
    :try_start_1
    sget-object v2, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    const/4 v4, 0x1

    .line 135
    invoke-static {v2, v3, v4}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 137
    :catch_1
    move-exception v1

    .line 139
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private DownSingleRecord()V
    .locals 6

    .prologue
    .line 72
    iget-object v3, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    if-nez v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    sget v4, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v3, v4}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 75
    :try_start_0
    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    .line 76
    const/4 v5, 0x1

    .line 75
    invoke-static {v3, v4, v5}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x1

    .line 88
    .local v2, "ifNotiSend":Z
    :try_start_1
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    iget-object v4, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v4}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 89
    const/4 v2, 0x0

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/notification/DownThread;->context:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/android/notification/util/AppUtil;->toDwonApk(Lcom/android/notification/bean/DownApkInfo;ILandroid/content/Context;)V

    .line 93
    invoke-direct {p0}, Lcom/android/notification/DownThread;->UpdatemCruApp()V

    .line 94
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_OK:I

    iget-object v4, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v4}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    invoke-direct {p0, v3}, Lcom/android/notification/DownThread;->setNotiID(Lcom/android/notification/bean/DownApkInfo;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    sget v3, Lcom/android/notification/configure/DownStatus;->DOWN_NOW:I

    iget-object v4, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v4}, Lcom/android/notification/bean/DownApkInfo;->getAdFlag()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    sget v4, Lcom/android/notification/configure/DownStatus;->DOWN_ERROR:I

    invoke-virtual {v3, v4}, Lcom/android/notification/bean/DownApkInfo;->setAdFlag(I)V

    .line 103
    :try_start_2
    sget-object v3, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    .line 104
    iget-object v4, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    const/4 v5, 0x1

    .line 103
    invoke-static {v3, v4, v5}, Lcom/android/notification/util/AppUtil;->WriteDownLoadInfo(Ljava/lang/String;Lcom/android/notification/bean/DownApkInfo;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 105
    :catch_2
    move-exception v1

    .line 107
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private GetApkName(Lcom/android/notification/bean/DownApkInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getAdUrl()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "apkUrl":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "akp":[Ljava/lang/String;
    const-string v1, ""

    .line 153
    .local v1, "apkName":Ljava/lang/String;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v0, v4

    .line 155
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 157
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 158
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    return-object v1
.end method

.method private GetDownInfo()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    const-string v1, "jwd"

    .line 59
    const-string v2, "class:MainService  func:onStart  text:WIFI down start"

    .line 58
    invoke-static {v1, v2}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/android/notification/DownThread;->mDownInfos:Ljava/util/List;

    .line 62
    iget-object v1, p0, Lcom/android/notification/DownThread;->mDownInfos:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/notification/DownThread;->mDownInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/notification/DownThread;->DownAllRecord()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private UpdatemCruApp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v1, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v2}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v2

    .line 216
    invoke-static {v1, v2}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfo(Ljava/lang/String;I)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v0

    .line 219
    .local v0, "tempInfo":Lcom/android/notification/bean/DownApkInfo;
    if-eqz v0, :cond_0

    .line 220
    iput-object v0, p0, Lcom/android/notification/DownThread;->mCruApp:Lcom/android/notification/bean/DownApkInfo;

    .line 223
    :cond_0
    return-void
.end method

.method private setNotiID(Lcom/android/notification/bean/DownApkInfo;)V
    .locals 10
    .param p1, "downinfo"    # Lcom/android/notification/bean/DownApkInfo;

    .prologue
    const/4 v9, 0x0

    .line 171
    const v0, 0x1330290

    .line 173
    .local v0, "APPNOTI_ID":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "NotiId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getAdID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Lcom/android/notification/util/Tool;->ChangeStrToInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    iget-object v7, p0, Lcom/android/notification/DownThread;->context:Landroid/content/Context;

    .line 178
    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 177
    check-cast v4, Landroid/app/NotificationManager;

    .line 180
    .local v4, "notificationMagager":Landroid/app/NotificationManager;
    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 181
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 182
    .local v3, "notification":Landroid/app/Notification;
    const v7, 0x1080082

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 183
    invoke-virtual {p1}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "str":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "apkintent":Landroid/content/Intent;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 186
    const-string v8, "application/vnd.android.package-archive"

    .line 185
    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v7, p0, Lcom/android/notification/DownThread;->context:Landroid/content/Context;

    invoke-static {v7, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 190
    .local v5, "pengdingIntent":Landroid/app/PendingIntent;
    iput-object v5, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 191
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v8, p0, Lcom/android/notification/DownThread;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 192
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdappprogress()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 191
    iput-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 193
    iget-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 194
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdtextdown()I

    move-result v8

    const-string v9, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 195
    iget-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdapkname()I

    move-result v8

    .line 196
    invoke-direct {p0, p1}, Lcom/android/notification/DownThread;->GetApkName(Lcom/android/notification/bean/DownApkInfo;)Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 198
    const/16 v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 199
    iget-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdnotiprogress()I

    move-result v8

    .line 200
    const/4 v9, 0x4

    .line 199
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    invoke-virtual {v4, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 203
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    :try_start_0
    const-string v2, "jwd"

    .line 44
    const-string v3, "class:MainService  func:onStart  text:WIFI wait 4 mins...."

    .line 43
    invoke-static {v2, v3}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-wide/32 v2, 0x2bf20

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 46
    iget-object v2, p0, Lcom/android/notification/DownThread;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/notification/DownThread;->intent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/notification/util/AppUtil;->getWebStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "webStatus":Ljava/lang/String;
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/android/notification/DownThread;->GetDownInfo()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "webStatus":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
