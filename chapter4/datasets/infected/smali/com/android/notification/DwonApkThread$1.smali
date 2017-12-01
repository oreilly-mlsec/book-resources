.class Lcom/android/notification/DwonApkThread$1;
.super Landroid/os/Handler;
.source "DwonApkThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/notification/DwonApkThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/notification/DwonApkThread;


# direct methods
.method constructor <init>(Lcom/android/notification/DwonApkThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x1080082

    const/4 v7, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 94
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$6(Lcom/android/notification/DwonApkThread;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->g_intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/notification/DwonApkThread;->access$8(Lcom/android/notification/DwonApkThread;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 98
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 53
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdtextdown()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # invokes: Lcom/android/notification/DwonApkThread;->GetProgress()I
    invoke-static {v6}, Lcom/android/notification/DwonApkThread;->access$1(Lcom/android/notification/DwonApkThread;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 54
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 55
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdnotiprogress()I

    move-result v4

    iget-object v5, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;
    invoke-static {v5}, Lcom/android/notification/DwonApkThread;->access$2(Lcom/android/notification/DwonApkThread;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v5

    .line 56
    iget-object v6, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # invokes: Lcom/android/notification/DwonApkThread;->GetApkSize()I
    invoke-static {v6}, Lcom/android/notification/DwonApkThread;->access$3(Lcom/android/notification/DwonApkThread;)I

    move-result v6

    .line 54
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 57
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notificationMagager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$4(Lcom/android/notification/DwonApkThread;)Landroid/app/NotificationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->APPNOTI_ID:I
    invoke-static {v4}, Lcom/android/notification/DwonApkThread;->access$5(Lcom/android/notification/DwonApkThread;)I

    move-result v4

    iget-object v5, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$2(Lcom/android/notification/DwonApkThread;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/notification/bean/DownApkInfo;->getAdFlie()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "str":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "apkintent":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 65
    const-string v4, "application/vnd.android.package-archive"

    .line 64
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$6(Lcom/android/notification/DwonApkThread;)Landroid/content/Context;

    move-result-object v3

    .line 67
    invoke-static {v3, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 69
    .local v1, "pengdingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v3

    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 70
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v3

    iput-object v1, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 71
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 72
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdtextdown()I

    move-result v4

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 71
    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v3

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 74
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 75
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdnotiprogress()I

    move-result v4

    const/4 v5, 0x4

    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 76
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notificationMagager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$4(Lcom/android/notification/DwonApkThread;)Landroid/app/NotificationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->APPNOTI_ID:I
    invoke-static {v4}, Lcom/android/notification/DwonApkThread;->access$5(Lcom/android/notification/DwonApkThread;)I

    move-result v4

    iget-object v5, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 77
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # invokes: Lcom/android/notification/DwonApkThread;->RequestInstall()V
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$7(Lcom/android/notification/DwonApkThread;)V

    .line 78
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$6(Lcom/android/notification/DwonApkThread;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->g_intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/notification/DwonApkThread;->access$8(Lcom/android/notification/DwonApkThread;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 83
    .end local v0    # "apkintent":Landroid/content/Intent;
    .end local v1    # "pengdingIntent":Landroid/app/PendingIntent;
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v3

    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 84
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 85
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdtextdown()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # invokes: Lcom/android/notification/DwonApkThread;->GetProgress()I
    invoke-static {v6}, Lcom/android/notification/DwonApkThread;->access$1(Lcom/android/notification/DwonApkThread;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 86
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 87
    invoke-static {}, Lcom/android/notification/bean/ResID;->getJwdnotiprogress()I

    move-result v4

    iget-object v5, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->downinfo:Lcom/android/notification/bean/DownApkInfo;
    invoke-static {v5}, Lcom/android/notification/DwonApkThread;->access$2(Lcom/android/notification/DwonApkThread;)Lcom/android/notification/bean/DownApkInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/notification/bean/DownApkInfo;->getAdSize()I

    move-result v5

    .line 88
    iget-object v6, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # invokes: Lcom/android/notification/DwonApkThread;->GetApkSize()I
    invoke-static {v6}, Lcom/android/notification/DwonApkThread;->access$3(Lcom/android/notification/DwonApkThread;)I

    move-result v6

    .line 86
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 89
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notificationMagager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$4(Lcom/android/notification/DwonApkThread;)Landroid/app/NotificationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->APPNOTI_ID:I
    invoke-static {v4}, Lcom/android/notification/DwonApkThread;->access$5(Lcom/android/notification/DwonApkThread;)I

    move-result v4

    iget-object v5, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->notification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/notification/DwonApkThread;->access$0(Lcom/android/notification/DwonApkThread;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 90
    iget-object v3, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->g_context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/notification/DwonApkThread;->access$6(Lcom/android/notification/DwonApkThread;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/notification/DwonApkThread$1;->this$0:Lcom/android/notification/DwonApkThread;

    # getter for: Lcom/android/notification/DwonApkThread;->g_intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/notification/DwonApkThread;->access$8(Lcom/android/notification/DwonApkThread;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
