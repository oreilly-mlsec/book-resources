.class public Lcom/android/notification/WebRecevier;
.super Landroid/content/BroadcastReceiver;
.source "WebRecevier.java"


# static fields
.field private static downThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/android/notification/WebRecevier;->downThread:Ljava/lang/Thread;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 26
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 28
    invoke-static {}, Lcom/android/notification/util/AppUtil;->hasSdcard()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 30
    const-string v6, "jwd"

    .line 31
    const-string v7, "class:WebRecevier  func:onReceive  text:onReceive"

    .line 30
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 38
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v6, 0x1

    .line 37
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 38
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 40
    .local v4, "state":Landroid/net/NetworkInfo$State;
    const-string v6, "noConnectivity"

    const/4 v7, 0x0

    .line 39
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 41
    .local v3, "isBreak":Z
    const-string v6, "jwd"

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "class:WebRecevier  func:onReceive  text:isBreak = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 42
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v4, :cond_4

    if-nez v3, :cond_4

    .line 50
    const-string v6, "jwd"

    .line 51
    const-string v7, "class:WebRecevier  func:onReceive  text:using WIFI now"

    .line 50
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p1, p2}, Lcom/android/notification/util/AppUtil;->Checkconfigfile(Landroid/content/Context;Landroid/content/Intent;)V

    .line 58
    sget-object v6, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    .line 59
    const-string v7, "APK_BE_DOWN"

    .line 57
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->ReadPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "web_change_time":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/notification/util/Tool;->isStrEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 63
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 65
    .local v2, "if_down":Z
    if-nez v2, :cond_1

    .line 66
    const-string v6, "jwd"

    .line 67
    const-string v7, "class:WebRecevier  func:onReceive  text:refuse to down again"

    .line 66
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v2    # "if_down":Z
    .end local v3    # "isBreak":Z
    .end local v4    # "state":Landroid/net/NetworkInfo$State;
    .end local v5    # "web_change_time":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v0    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "isBreak":Z
    .restart local v4    # "state":Landroid/net/NetworkInfo$State;
    .restart local v5    # "web_change_time":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/notification/util/AppUtil;->CheckRecordFile()V

    .line 75
    sget-object v6, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    .line 76
    const-string v7, "APK_BE_DOWN"

    const-string v8, "false"

    .line 75
    invoke-static {v6, v7, v8}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v6, Lcom/android/notification/WebRecevier;->downThread:Ljava/lang/Thread;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/notification/WebRecevier;->downThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-nez v6, :cond_3

    .line 80
    :cond_2
    new-instance v6, Lcom/android/notification/DownThread;

    invoke-direct {v6, p1, p2}, Lcom/android/notification/DownThread;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    sput-object v6, Lcom/android/notification/WebRecevier;->downThread:Ljava/lang/Thread;

    .line 81
    sget-object v6, Lcom/android/notification/WebRecevier;->downThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 91
    .end local v5    # "web_change_time":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v6, "jwd"

    .line 92
    const-string v7, "class:WebRecevier  func:onReceive  text:onReceive over"

    .line 91
    invoke-static {v6, v7}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v3    # "isBreak":Z
    .end local v4    # "state":Landroid/net/NetworkInfo$State;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "isBreak":Z
    .restart local v4    # "state":Landroid/net/NetworkInfo$State;
    :cond_4
    :try_start_1
    sget-object v6, Lcom/android/notification/configure/ConfigureFile;->PushConfigFile:Ljava/lang/String;

    .line 85
    const-string v7, "APK_BE_DOWN"

    const-string v8, "true"

    .line 84
    invoke-static {v6, v7, v8}, Lcom/android/notification/util/Tool;->WritePropertie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/android/notification/util/AppUtil;->CheckRecordFile()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
