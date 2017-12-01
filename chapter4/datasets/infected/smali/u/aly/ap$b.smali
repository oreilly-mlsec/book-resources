.class Lu/aly/ap$b;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Lu/aly/dr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ap$1;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lu/aly/ap$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/ap$a;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lu/aly/ap$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/ap$a;-><init>(Lu/aly/ap$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dq;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lu/aly/ap$b;->a()Lu/aly/ap$a;

    move-result-object v0

    return-object v0
.end method
