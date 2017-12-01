.class public Lcom/android/notification/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static pushThread:Ljava/lang/Thread;


# instance fields
.field private final adAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/android/notification/AlarmReceiver;->pushThread:Ljava/lang/Thread;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 9
    const-string v0, "android.alarm.notification.AD_pencilsketch"

    iput-object v0, p0, Lcom/android/notification/AlarmReceiver;->adAction:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    const-string v0, "android.alarm.notification.AD_pencilsketch"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/android/notification/PushThread;

    invoke-direct {v0, p1, p2}, Lcom/android/notification/PushThread;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    sput-object v0, Lcom/android/notification/AlarmReceiver;->pushThread:Ljava/lang/Thread;

    .line 20
    sget-object v0, Lcom/android/notification/AlarmReceiver;->pushThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    invoke-virtual {p0}, Lcom/android/notification/AlarmReceiver;->abortBroadcast()V

    .line 24
    :cond_0
    return-void
.end method
