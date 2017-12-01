.class public final enum Lu/aly/ap$e;
.super Ljava/lang/Enum;
.source "ActiveUser.java"

# interfaces
.implements Lu/aly/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/ap$e;",
        ">;",
        "Lu/aly/cq;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ap$e;

.field public static final enum b:Lu/aly/ap$e;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ap$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lu/aly/ap$e;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 48
    new-instance v0, Lu/aly/ap$e;

    const-string v1, "PROVIDER"

    const-string v2, "provider"

    invoke-direct {v0, v1, v4, v3, v2}, Lu/aly/ap$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ap$e;->a:Lu/aly/ap$e;

    .line 49
    new-instance v0, Lu/aly/ap$e;

    const-string v1, "PUID"

    const-string v2, "puid"

    invoke-direct {v0, v1, v3, v5, v2}, Lu/aly/ap$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ap$e;->b:Lu/aly/ap$e;

    .line 47
    new-array v0, v5, [Lu/aly/ap$e;

    sget-object v1, Lu/aly/ap$e;->a:Lu/aly/ap$e;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/ap$e;->b:Lu/aly/ap$e;

    aput-object v1, v0, v3

    sput-object v0, Lu/aly/ap$e;->f:[Lu/aly/ap$e;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ap$e;->c:Ljava/util/Map;

    .line 54
    const-class v0, Lu/aly/ap$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ap$e;

    .line 55
    sget-object v2, Lu/aly/ap$e;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lu/aly/ap$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-short p3, p0, Lu/aly/ap$e;->d:S

    .line 95
    iput-object p4, p0, Lu/aly/ap$e;->e:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static a(I)Lu/aly/ap$e;
    .locals 1

    .prologue
    .line 63
    packed-switch p0, :pswitch_data_0

    .line 69
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    sget-object v0, Lu/aly/ap$e;->a:Lu/aly/ap$e;

    goto :goto_0

    .line 67
    :pswitch_1
    sget-object v0, Lu/aly/ap$e;->b:Lu/aly/ap$e;

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/ap$e;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lu/aly/ap$e;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ap$e;

    return-object v0
.end method

.method public static b(I)Lu/aly/ap$e;
    .locals 3

    .prologue
    .line 78
    invoke-static {p0}, Lu/aly/ap$e;->a(I)Lu/aly/ap$e;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ap$e;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lu/aly/ap$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ap$e;

    return-object v0
.end method

.method public static values()[Lu/aly/ap$e;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lu/aly/ap$e;->f:[Lu/aly/ap$e;

    invoke-virtual {v0}, [Lu/aly/ap$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ap$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 99
    iget-short v0, p0, Lu/aly/ap$e;->d:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lu/aly/ap$e;->e:Ljava/lang/String;

    return-object v0
.end method
