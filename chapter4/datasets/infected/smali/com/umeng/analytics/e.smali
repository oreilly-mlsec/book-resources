.class public Lcom/umeng/analytics/e;
.super Ljava/lang/Object;
.source "InternalConfig.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 11
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 12
    if-eqz p0, :cond_0

    .line 13
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    .line 30
    :goto_0
    return-object v0

    .line 22
    :cond_0
    if-eqz p0, :cond_1

    .line 23
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->a()[Ljava/lang/String;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    sget-object v1, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    aget-object v2, v0, v3

    aput-object v2, v1, v3

    .line 26
    sget-object v1, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    aput-object v0, v1, v4

    .line 27
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 35
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 37
    if-eqz p0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->b()V

    .line 40
    :cond_0
    return-void
.end method
