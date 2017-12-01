.class Lu/aly/bq$b;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Lu/aly/dr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bq$1;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lu/aly/bq$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bq$a;
    .locals 2

    .prologue
    .line 362
    new-instance v0, Lu/aly/bq$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bq$a;-><init>(Lu/aly/bq$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dq;
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lu/aly/bq$b;->a()Lu/aly/bq$a;

    move-result-object v0

    return-object v0
.end method
