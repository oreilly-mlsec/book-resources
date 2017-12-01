.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static ACTIVITY_DURATION_OPEN:Z

.field public static CATCH_EXCEPTION:Z

.field public static COMPRESS_DATA:Z

.field public static ENABLE_MEMORY_BUFFER:Z

.field public static GPU_RENDERER:Ljava/lang/String;

.field public static GPU_VENDER:Ljava/lang/String;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:[D

.field public static kContinueSessionMillis:J

.field public static mVerticalType:I

.field public static mWrapperType:Ljava/lang/String;

.field public static mWrapperVersion:Ljava/lang/String;

.field public static sEncrypt:Z

.field public static sLatentWindow:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    .line 11
    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 13
    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 14
    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    .line 91
    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    .line 110
    sput-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    .line 111
    sput-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->COMPRESS_DATA:Z

    .line 112
    sput-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->ENABLE_MEMORY_BUFFER:Z

    .line 113
    sput-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 114
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableEncrypt(Z)V
    .locals 0

    .prologue
    .line 24
    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    .line 25
    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0}, Lu/aly/bs;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    .line 69
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0}, Lu/aly/bs;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 77
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocation()[D
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 82
    const-string v0, "5.6.1.0"

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "5.6.1"

    goto :goto_0
.end method

.method public static setAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 31
    if-nez p0, :cond_1

    .line 32
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {p0}, Lu/aly/bs;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 39
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-string v0, "MobclickAgent"

    const-string v1, "Appkey\u548cAndroidManifest.xml\u4e2d\u914d\u7f6e\u7684\u4e0d\u4e00\u81f4 "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 47
    const-string v0, "MobclickAgent"

    const-string v1, "Appkey\u548c\u4e0a\u6b21\u914d\u7f6e\u7684\u4e0d\u4e00\u81f4 "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/h;->a(Ljava/lang/String;)V

    .line 53
    :cond_3
    :goto_1
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->a:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_4
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/h;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static setLatencyWindow(J)V
    .locals 1

    .prologue
    .line 107
    long-to-int v0, p0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    .line 108
    return-void
.end method

.method public static setLocation(DD)V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [D

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    .line 102
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    .line 103
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:[D

    const/4 v1, 0x1

    aput-wide p2, v0, v1

    .line 104
    return-void
.end method
