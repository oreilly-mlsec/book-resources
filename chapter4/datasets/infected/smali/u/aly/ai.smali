.class public Lu/aly/ai;
.super Lu/aly/bi;
.source "UPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lu/aly/bi;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lu/aly/bi;-><init>()V

    .line 24
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, v0}, Lu/aly/ai;->a(Lorg/json/JSONArray;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Lu/aly/bi;-><init>()V

    .line 20
    invoke-direct {p0, p1}, Lu/aly/ai;->a(Lorg/json/JSONArray;)V

    .line 21
    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/ai;->a(Ljava/lang/String;)Lu/aly/bi;

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lu/aly/ai;->a(J)Lu/aly/bi;

    .line 32
    return-void
.end method
