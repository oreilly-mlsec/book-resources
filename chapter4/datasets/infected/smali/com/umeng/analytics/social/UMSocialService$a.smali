.class Lcom/umeng/analytics/social/UMSocialService$a;
.super Landroid/os/AsyncTask;
.source "UMSocialService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/social/UMSocialService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/umeng/analytics/social/d;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/umeng/analytics/social/UMSocialService$b;

.field d:[Lcom/umeng/analytics/social/UMPlatformData;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/umeng/analytics/social/UMSocialService$b;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 78
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/umeng/analytics/social/UMSocialService$a;->a:Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/umeng/analytics/social/UMSocialService$a;->b:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/umeng/analytics/social/UMSocialService$a;->c:Lcom/umeng/analytics/social/UMSocialService$b;

    .line 81
    iput-object p3, p0, Lcom/umeng/analytics/social/UMSocialService$a;->d:[Lcom/umeng/analytics/social/UMPlatformData;

    .line 82
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/umeng/analytics/social/d;
    .locals 4

    .prologue
    .line 91
    .line 92
    iget-object v0, p0, Lcom/umeng/analytics/social/UMSocialService$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/social/UMSocialService$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/social/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v0, "st"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    const/16 v0, -0x194

    move v1, v0

    .line 102
    :goto_1
    new-instance v0, Lcom/umeng/analytics/social/d;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/social/d;-><init>(I)V

    .line 104
    const-string v1, "msg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/social/d;->a(Ljava/lang/String;)V

    .line 108
    :cond_0
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/social/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_1
    :goto_2
    return-object v0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/social/UMSocialService$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/analytics/social/UMSocialService$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/analytics/social/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 114
    new-instance v0, Lcom/umeng/analytics/social/d;

    const/16 v2, -0x63

    invoke-direct {v0, v2, v1}, Lcom/umeng/analytics/social/d;-><init>(ILjava/lang/Exception;)V

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method protected a(Lcom/umeng/analytics/social/d;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/umeng/analytics/social/UMSocialService$a;->c:Lcom/umeng/analytics/social/UMSocialService$b;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/umeng/analytics/social/UMSocialService$a;->c:Lcom/umeng/analytics/social/UMSocialService$b;

    iget-object v1, p0, Lcom/umeng/analytics/social/UMSocialService$a;->d:[Lcom/umeng/analytics/social/UMPlatformData;

    invoke-interface {v0, p1, v1}, Lcom/umeng/analytics/social/UMSocialService$b;->a(Lcom/umeng/analytics/social/d;[Lcom/umeng/analytics/social/UMPlatformData;)V

    .line 122
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/social/UMSocialService$a;->a([Ljava/lang/Void;)Lcom/umeng/analytics/social/d;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Lcom/umeng/analytics/social/d;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/social/UMSocialService$a;->a(Lcom/umeng/analytics/social/d;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/umeng/analytics/social/UMSocialService$a;->c:Lcom/umeng/analytics/social/UMSocialService$b;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/umeng/analytics/social/UMSocialService$a;->c:Lcom/umeng/analytics/social/UMSocialService$b;

    invoke-interface {v0}, Lcom/umeng/analytics/social/UMSocialService$b;->a()V

    .line 87
    :cond_0
    return-void
.end method
