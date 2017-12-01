.class public final enum Lcom/google/ads/searchads/SearchAdRequest$BorderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/searchads/SearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/searchads/SearchAdRequest$BorderType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DASHED:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

.field public static final enum DOTTED:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

.field public static final enum NONE:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

.field public static final enum SOLID:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

.field private static final synthetic b:[Lcom/google/ads/searchads/SearchAdRequest$BorderType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/searchads/SearchAdRequest$BorderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->NONE:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    .line 31
    new-instance v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    const-string v1, "DASHED"

    const-string v2, "dashed"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/searchads/SearchAdRequest$BorderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->DASHED:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    .line 36
    new-instance v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    const-string v1, "DOTTED"

    const-string v2, "dotted"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/searchads/SearchAdRequest$BorderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->DOTTED:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    .line 41
    new-instance v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    const-string v1, "SOLID"

    const-string v2, "solid"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/searchads/SearchAdRequest$BorderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->SOLID:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    sget-object v1, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->NONE:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->DASHED:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->DOTTED:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->SOLID:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->b:[Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/searchads/SearchAdRequest$BorderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/searchads/SearchAdRequest$BorderType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->b:[Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    invoke-virtual {v0}, [Lcom/google/ads/searchads/SearchAdRequest$BorderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->a:Ljava/lang/String;

    return-object v0
.end method
