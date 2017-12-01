.class public Lcom/third/mx/utils/k;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/app/NotificationManager;

.field public static b:Landroid/telephony/TelephonyManager;

.field public static c:Landroid/net/ConnectivityManager;

.field public static d:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/third/mx/utils/k;->a:Landroid/app/NotificationManager;

    sput-object v0, Lcom/third/mx/utils/k;->b:Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/third/mx/utils/k;->c:Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/third/mx/utils/k;->d:Landroid/view/WindowManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/third/mx/utils/k;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/third/mx/utils/k;->b:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-object v0, Lcom/third/mx/utils/k;->b:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/third/mx/utils/k;->c:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/third/mx/utils/k;->c:Landroid/net/ConnectivityManager;

    :cond_0
    sget-object v0, Lcom/third/mx/utils/k;->c:Landroid/net/ConnectivityManager;

    return-object v0
.end method
