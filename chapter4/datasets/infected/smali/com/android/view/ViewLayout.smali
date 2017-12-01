.class public Lcom/android/view/ViewLayout;
.super Landroid/webkit/WebView;
.source "ViewLayout.java"


# static fields
.field private static contextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private downinfo:Lcom/android/notification/bean/DownApkInfo;

.field private g_downInfos:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/view/ViewLayout;->contextList:Ljava/util/List;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object v0, p0, Lcom/android/view/ViewLayout;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 45
    iput-object v0, p0, Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;

    .line 51
    const-string v0, "jwd"

    .line 52
    const-string v1, "class:ViewLayout  func:ViewLayout  text:Create ViewLayout"

    .line 51
    invoke-static {v0, v1}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/android/view/ViewLayout;->context:Landroid/content/Context;

    .line 54
    sget-object v0, Lcom/android/view/ViewLayout;->contextList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/view/ViewLayout;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-direct {p0, p0}, Lcom/android/view/ViewLayout;->settingForWebView(Landroid/webkit/WebView;)V

    .line 56
    const-string v0, "file:///android_asset/splash.html"

    invoke-virtual {p0, v0}, Lcom/android/view/ViewLayout;->loadUrl(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v0, p0, Lcom/android/view/ViewLayout;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    .line 45
    iput-object v0, p0, Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/android/view/ViewLayout;->context:Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/android/view/ViewLayout;->contextList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/view/ViewLayout;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0, p0}, Lcom/android/view/ViewLayout;->settingForWebView(Landroid/webkit/WebView;)V

    .line 64
    const-string v0, "file:///android_asset/splash.html"

    invoke-virtual {p0, v0}, Lcom/android/view/ViewLayout;->loadUrl(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private CreateSysDir()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/notification/configure/ConfigureFile;->savePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 80
    :cond_0
    return-void
.end method

.method private IfRecordBeShow()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 111
    :try_start_0
    sget-object v5, Lcom/android/notification/configure/ConfigureFile;->DownInfoFile:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/notification/util/AppUtil;->ReadDownLoadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "downInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 146
    .end local v0    # "downInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    :goto_0
    return v5

    .line 116
    .restart local v0    # "downInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    :cond_1
    const/4 v4, 0x0

    .local v4, "nI":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    .end local v0    # "downInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    .end local v4    # "nI":I
    :goto_2
    move v5, v6

    .line 146
    goto :goto_0

    .line 118
    .restart local v0    # "downInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    .restart local v4    # "nI":I
    :cond_2
    const/4 v2, 0x0

    .line 119
    .local v2, "ifShow":Z
    new-instance v3, Ljava/io/File;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/notification/bean/DownApkInfo;

    invoke-virtual {v5}, Lcom/android/notification/bean/DownApkInfo;->getImgFlie()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, "imgfile":Ljava/io/File;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    const/4 v2, 0x1

    .line 133
    :goto_3
    if-eqz v2, :cond_4

    .line 134
    const/4 v5, 0x1

    goto :goto_0

    .line 123
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 116
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 138
    .end local v0    # "downInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/notification/bean/DownApkInfo;>;"
    .end local v2    # "ifShow":Z
    .end local v3    # "imgfile":Ljava/io/File;
    .end local v4    # "nI":I
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const-string v5, "jwd"

    .line 142
    const-string v7, "class:ViewLayout  func:IfDownRecordBeShow  text:message:"

    .line 141
    invoke-static {v5, v7, v1}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private ShowAdRequest()Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 151
    const/4 v4, 0x0

    .line 153
    .local v4, "ret":Z
    const/4 v0, 0x0

    .line 155
    .local v0, "apk_id":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/view/ViewLayout;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/notification/util/AppUtil;->GetApkId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_0
    invoke-static {v0}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 216
    :goto_1
    return v10

    .line 156
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v10, p0, Lcom/android/view/ViewLayout;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/view/ViewLayout;->getViewWebStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "webStatus":Ljava/lang/String;
    const-string v10, "NONET"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 174
    sget-object v10, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "retex":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "true"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 177
    const/4 v4, 0x1

    :cond_1
    move v10, v4

    .line 179
    goto :goto_1

    .line 182
    .end local v5    # "retex":Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/android/notification/configure/ConfigureFile;->PhoneConfigFile:Ljava/lang/String;

    .line 183
    const-string v11, "USER_ID"

    .line 182
    invoke-static {v10, v11}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "user_id":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://www.9wedo.com:89/ads_manage/sendAdNewStatus?user_id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&id=-1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&record_type=4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 188
    const-string v11, "&position_type=2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&apk_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 186
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "url":Ljava/lang/String;
    const-string v10, "jwd"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "class:ViewLayout  func:ViewLayout  text:url"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_1
    invoke-static {v7}, Lcom/android/notification/util/Tool;->MyHttpRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "retstr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 196
    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "array":[Ljava/lang/String;
    const/4 v10, 0x2

    array-length v11, v1

    if-ne v10, v11, :cond_3

    const/4 v10, 0x0

    aget-object v10, v1, v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 198
    const/4 v4, 0x1

    .line 199
    sget-object v10, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    .line 200
    const-string v11, "true"

    .line 199
    invoke-static {v10, v0, v11}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "array":[Ljava/lang/String;
    .end local v6    # "retstr":Ljava/lang/String;
    :cond_3
    :goto_2
    move v10, v4

    .line 216
    goto/16 :goto_1

    .line 204
    :catch_1
    move-exception v2

    .line 206
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    const-string v10, "jwd"

    .line 208
    const-string v11, "class:ViewLayout  func:ShowAdRequest  text:message:"

    .line 207
    invoke-static {v10, v11, v2}, Lcom/android/notification/util/Tool;->JWDlogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    sget-object v10, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .restart local v5    # "retex":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "true"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 212
    const/4 v4, 0x1

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/android/view/ViewLayout;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/view/ViewLayout;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/view/ViewLayout;)Lcom/android/notification/bean/DownApkInfo;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/view/ViewLayout;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/view/ViewLayout;->contextList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/view/ViewLayout;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/view/ViewLayout;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/view/ViewLayout;->g_downInfos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$5(Lcom/android/view/ViewLayout;Lcom/android/notification/bean/DownApkInfo;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/view/ViewLayout;->downinfo:Lcom/android/notification/bean/DownApkInfo;

    return-void
.end method

.method public static getViewWebStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "status":Ljava/lang/String;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 87
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 90
    .local v1, "state":Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v1, :cond_0

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    :goto_0
    return-object v2

    .line 93
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 95
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v1, :cond_1

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "GPRS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 98
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "NONET"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private settingForWebView(Landroid/webkit/WebView;)V
    .locals 7
    .param p1, "childView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 233
    invoke-direct {p0}, Lcom/android/view/ViewLayout;->CreateSysDir()V

    .line 234
    iget-object v3, p0, Lcom/android/view/ViewLayout;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/view/ViewLayout;->getViewWebStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "web":Ljava/lang/String;
    const-string v3, "NONET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/view/ViewLayout;->IfRecordBeShow()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/view/ViewLayout;->ShowAdRequest()Z

    move-result v3

    if-nez v3, :cond_2

    .line 236
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 239
    :cond_2
    const-string v3, "newwebview"

    const-string v4, "new webview"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 241
    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 242
    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 243
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 245
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 246
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 247
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 248
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 249
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 250
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 251
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 252
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 253
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 254
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 256
    new-instance v3, Lcom/android/view/ViewLayout$1;

    invoke-direct {v3, p0}, Lcom/android/view/ViewLayout$1;-><init>(Lcom/android/view/ViewLayout;)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 488
    new-instance v3, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;

    invoke-direct {v3, p0}, Lcom/android/view/ViewLayout$1ContentJavascriptInterface;-><init>(Lcom/android/view/ViewLayout;)V

    .line 489
    const-string v4, "content"

    .line 488
    invoke-virtual {p1, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    new-instance v2, Lcom/android/view/ViewLayout$2;

    invoke-direct {v2, p0}, Lcom/android/view/ViewLayout$2;-><init>(Lcom/android/view/ViewLayout;)V

    .line 521
    .local v2, "wvcc":Landroid/webkit/WebChromeClient;
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 522
    new-instance v3, Lcom/android/view/ViewLayout$3;

    invoke-direct {v3, p0}, Lcom/android/view/ViewLayout$3;-><init>(Lcom/android/view/ViewLayout;)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 551
    return-void
.end method


# virtual methods
.method public ViewLayoutDestory()V
    .locals 3

    .prologue
    .line 69
    sget-object v1, Lcom/android/view/ViewLayout;->contextList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/view/ViewLayout;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 70
    .local v0, "location":I
    sget-object v1, Lcom/android/view/ViewLayout;->contextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Lcom/android/view/ViewLayout;->stopLoading()V

    .line 72
    invoke-virtual {p0}, Lcom/android/view/ViewLayout;->destroy()V

    .line 73
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 223
    sget-object v1, Lcom/android/view/ViewLayout;->contextList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/view/ViewLayout;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 224
    .local v0, "location":I
    sget-object v1, Lcom/android/view/ViewLayout;->contextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    invoke-virtual {p0}, Lcom/android/view/ViewLayout;->stopLoading()V

    .line 226
    invoke-virtual {p0}, Lcom/android/view/ViewLayout;->destroy()V

    .line 228
    return-void
.end method
