.class Lu/aly/ar$d;
.super Ljava/lang/Object;
.source "ClientStats.java"

# interfaces
.implements Lu/aly/dr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ar$1;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lu/aly/ar$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/ar$c;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Lu/aly/ar$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/ar$c;-><init>(Lu/aly/ar$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dq;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lu/aly/ar$d;->a()Lu/aly/ar$c;

    move-result-object v0

    return-object v0
.end method
