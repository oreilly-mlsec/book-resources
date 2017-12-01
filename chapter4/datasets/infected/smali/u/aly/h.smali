.class public Lu/aly/h;
.super Lu/aly/a;
.source "SerialTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "serial"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "serial"

    invoke-direct {p0, v0}, Lu/aly/a;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 16
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 18
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
