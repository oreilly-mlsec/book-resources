.class public Lcom/umeng/analytics/social/UMPlatformData;
.super Ljava/lang/Object;
.source "UMPlatformData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/social/UMPlatformData$GENDER;,
        Lcom/umeng/analytics/social/UMPlatformData$UMedia;
    }
.end annotation


# instance fields
.field private a:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/umeng/analytics/social/UMPlatformData$GENDER;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/social/UMPlatformData$UMedia;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/analytics/social/UMPlatformData;->b:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/analytics/social/UMPlatformData;->c:Ljava/lang/String;

    .line 99
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "parameter is not valid"

    invoke-static {v0, v1}, Lcom/umeng/analytics/social/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    iput-object p1, p0, Lcom/umeng/analytics/social/UMPlatformData;->a:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 105
    iput-object p2, p0, Lcom/umeng/analytics/social/UMPlatformData;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getGender()Lcom/umeng/analytics/social/UMPlatformData$GENDER;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/umeng/analytics/social/UMPlatformData;->e:Lcom/umeng/analytics/social/UMPlatformData$GENDER;

    return-object v0
.end method

.method public getMeida()Lcom/umeng/analytics/social/UMPlatformData$UMedia;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/analytics/social/UMPlatformData;->a:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/umeng/analytics/social/UMPlatformData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/umeng/analytics/social/UMPlatformData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWeiboId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/umeng/analytics/social/UMPlatformData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/umeng/analytics/social/UMPlatformData;->a:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/social/UMPlatformData;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setGender(Lcom/umeng/analytics/social/UMPlatformData$GENDER;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/umeng/analytics/social/UMPlatformData;->e:Lcom/umeng/analytics/social/UMPlatformData$GENDER;

    .line 148
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/umeng/analytics/social/UMPlatformData;->d:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setWeiboId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/umeng/analytics/social/UMPlatformData;->c:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UMPlatformData [meida="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/social/UMPlatformData;->a:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/social/UMPlatformData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weiboId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/social/UMPlatformData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/social/UMPlatformData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/social/UMPlatformData;->e:Lcom/umeng/analytics/social/UMPlatformData$GENDER;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
