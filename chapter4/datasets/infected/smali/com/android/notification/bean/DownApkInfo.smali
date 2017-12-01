.class public Lcom/android/notification/bean/DownApkInfo;
.super Ljava/lang/Object;
.source "DownApkInfo.java"


# instance fields
.field private AddRecoedTime:Ljava/lang/String;

.field private adFlag:I

.field private adFlie:Ljava/lang/String;

.field private adID:I

.field private adSize:I

.field private adType:I

.field private adUrl:Ljava/lang/String;

.field private cilckTime:Ljava/lang/String;

.field private downFlag:I

.field private imgFlag:I

.field private imgFlie:Ljava/lang/String;

.field private imgSize:I

.field private imgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdFlag()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/notification/bean/DownApkInfo;->adFlag:I

    return v0
.end method

.method public getAdFlie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/notification/bean/DownApkInfo;->adFlie:Ljava/lang/String;

    return-object v0
.end method

.method public getAdID()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/notification/bean/DownApkInfo;->adID:I

    return v0
.end method

.method public getAdSize()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/notification/bean/DownApkInfo;->adSize:I

    return v0
.end method

.method public getAdType()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/notification/bean/DownApkInfo;->adType:I

    return v0
.end method

.method public getAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/notification/bean/DownApkInfo;->adUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAddRecoedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/notification/bean/DownApkInfo;->AddRecoedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCilckTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/notification/bean/DownApkInfo;->cilckTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDownFlag()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/notification/bean/DownApkInfo;->downFlag:I

    return v0
.end method

.method public getImgFlag()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/notification/bean/DownApkInfo;->imgFlag:I

    return v0
.end method

.method public getImgFlie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/notification/bean/DownApkInfo;->imgFlie:Ljava/lang/String;

    return-object v0
.end method

.method public getImgSize()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/notification/bean/DownApkInfo;->imgSize:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/notification/bean/DownApkInfo;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAdFlag(I)V
    .locals 0
    .param p1, "adFlag"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/android/notification/bean/DownApkInfo;->adFlag:I

    .line 155
    return-void
.end method

.method public setAdFlie(Ljava/lang/String;)V
    .locals 0
    .param p1, "adFlie"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/notification/bean/DownApkInfo;->adFlie:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setAdID(I)V
    .locals 0
    .param p1, "adID"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/notification/bean/DownApkInfo;->adID:I

    .line 73
    return-void
.end method

.method public setAdSize(I)V
    .locals 0
    .param p1, "adSize"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/notification/bean/DownApkInfo;->adSize:I

    .line 65
    return-void
.end method

.method public setAdType(I)V
    .locals 0
    .param p1, "adType"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/notification/bean/DownApkInfo;->adType:I

    .line 81
    return-void
.end method

.method public setAdUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "adUrl"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/notification/bean/DownApkInfo;->adUrl:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setAddRecoedTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "addRecoedTime"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/notification/bean/DownApkInfo;->AddRecoedTime:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCilckTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "cilckTime"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/notification/bean/DownApkInfo;->cilckTime:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setDownFlag(I)V
    .locals 0
    .param p1, "downFlag"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/android/notification/bean/DownApkInfo;->downFlag:I

    .line 107
    return-void
.end method

.method public setImgFlag(I)V
    .locals 0
    .param p1, "imgFlag"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/android/notification/bean/DownApkInfo;->imgFlag:I

    .line 131
    return-void
.end method

.method public setImgFlie(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgFlie"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/notification/bean/DownApkInfo;->imgFlie:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setImgSize(I)V
    .locals 0
    .param p1, "imgSize"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/notification/bean/DownApkInfo;->imgSize:I

    .line 57
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/notification/bean/DownApkInfo;->imgUrl:Ljava/lang/String;

    .line 115
    return-void
.end method
