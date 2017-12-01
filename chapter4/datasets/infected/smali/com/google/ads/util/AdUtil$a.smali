.class public final enum Lcom/google/ads/util/AdUtil$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/util/AdUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/util/AdUtil$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/util/AdUtil$a;

.field public static final enum b:Lcom/google/ads/util/AdUtil$a;

.field public static final enum c:Lcom/google/ads/util/AdUtil$a;

.field public static final enum d:Lcom/google/ads/util/AdUtil$a;

.field public static final enum e:Lcom/google/ads/util/AdUtil$a;

.field public static final enum f:Lcom/google/ads/util/AdUtil$a;

.field private static final synthetic g:[Lcom/google/ads/util/AdUtil$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    new-instance v0, Lcom/google/ads/util/AdUtil$a;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/util/AdUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/util/AdUtil$a;->a:Lcom/google/ads/util/AdUtil$a;

    .line 132
    new-instance v0, Lcom/google/ads/util/AdUtil$a;

    const-string v1, "SPEAKER"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/util/AdUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/util/AdUtil$a;->b:Lcom/google/ads/util/AdUtil$a;

    .line 135
    new-instance v0, Lcom/google/ads/util/AdUtil$a;

    const-string v1, "HEADPHONES"

    invoke-direct {v0, v1, v5}, Lcom/google/ads/util/AdUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/util/AdUtil$a;->c:Lcom/google/ads/util/AdUtil$a;

    .line 138
    new-instance v0, Lcom/google/ads/util/AdUtil$a;

    const-string v1, "VIBRATE"

    invoke-direct {v0, v1, v6}, Lcom/google/ads/util/AdUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/util/AdUtil$a;->d:Lcom/google/ads/util/AdUtil$a;

    .line 141
    new-instance v0, Lcom/google/ads/util/AdUtil$a;

    const-string v1, "EMULATOR"

    invoke-direct {v0, v1, v7}, Lcom/google/ads/util/AdUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/util/AdUtil$a;->e:Lcom/google/ads/util/AdUtil$a;

    .line 144
    new-instance v0, Lcom/google/ads/util/AdUtil$a;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/ads/util/AdUtil$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/util/AdUtil$a;->f:Lcom/google/ads/util/AdUtil$a;

    .line 127
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/ads/util/AdUtil$a;

    sget-object v1, Lcom/google/ads/util/AdUtil$a;->a:Lcom/google/ads/util/AdUtil$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/util/AdUtil$a;->b:Lcom/google/ads/util/AdUtil$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/util/AdUtil$a;->c:Lcom/google/ads/util/AdUtil$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/util/AdUtil$a;->d:Lcom/google/ads/util/AdUtil$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/util/AdUtil$a;->e:Lcom/google/ads/util/AdUtil$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ads/util/AdUtil$a;->f:Lcom/google/ads/util/AdUtil$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/util/AdUtil$a;->g:[Lcom/google/ads/util/AdUtil$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/util/AdUtil$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const-class v0, Lcom/google/ads/util/AdUtil$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/util/AdUtil$a;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/util/AdUtil$a;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/google/ads/util/AdUtil$a;->g:[Lcom/google/ads/util/AdUtil$a;

    invoke-virtual {v0}, [Lcom/google/ads/util/AdUtil$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/util/AdUtil$a;

    return-object v0
.end method
