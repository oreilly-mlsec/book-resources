.class public final enum Lcom/google/ads/ab$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/ab$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/ab$b;

.field public static final enum b:Lcom/google/ads/ab$b;

.field private static final synthetic d:[Lcom/google/ads/ab$b;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/google/ads/ab$b;

    const-string v1, "AD"

    const-string v2, "ad"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/ab$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/ab$b;->a:Lcom/google/ads/ab$b;

    .line 39
    new-instance v0, Lcom/google/ads/ab$b;

    const-string v1, "APP"

    const-string v2, "app"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/ab$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/ab$b;->b:Lcom/google/ads/ab$b;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/ab$b;

    sget-object v1, Lcom/google/ads/ab$b;->a:Lcom/google/ads/ab$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/ab$b;->b:Lcom/google/ads/ab$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/ab$b;->d:[Lcom/google/ads/ab$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/google/ads/ab$b;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/ab$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/google/ads/ab$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ab$b;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/ab$b;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/ads/ab$b;->d:[Lcom/google/ads/ab$b;

    invoke-virtual {v0}, [Lcom/google/ads/ab$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/ab$b;

    return-object v0
.end method
