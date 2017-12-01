.class public final enum Lu/aly/aw;
.super Ljava/lang/Enum;
.source "ErrorSource.java"

# interfaces
.implements Lu/aly/cn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/aw;",
        ">;",
        "Lu/aly/cn;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/aw;

.field public static final enum b:Lu/aly/aw;

.field private static final synthetic d:[Lu/aly/aw;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 16
    new-instance v0, Lu/aly/aw;

    const-string v1, "LEGIT"

    invoke-direct {v0, v1, v3, v2}, Lu/aly/aw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/aw;->a:Lu/aly/aw;

    .line 17
    new-instance v0, Lu/aly/aw;

    const-string v1, "ALIEN"

    invoke-direct {v0, v1, v2, v4}, Lu/aly/aw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/aw;->b:Lu/aly/aw;

    .line 15
    new-array v0, v4, [Lu/aly/aw;

    sget-object v1, Lu/aly/aw;->a:Lu/aly/aw;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/aw;->b:Lu/aly/aw;

    aput-object v1, v0, v2

    sput-object v0, Lu/aly/aw;->d:[Lu/aly/aw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lu/aly/aw;->c:I

    .line 23
    return-void
.end method

.method public static a(I)Lu/aly/aw;
    .locals 1

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    sget-object v0, Lu/aly/aw;->a:Lu/aly/aw;

    goto :goto_0

    .line 41
    :pswitch_1
    sget-object v0, Lu/aly/aw;->b:Lu/aly/aw;

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/aw;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lu/aly/aw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/aw;

    return-object v0
.end method

.method public static values()[Lu/aly/aw;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lu/aly/aw;->d:[Lu/aly/aw;

    invoke-virtual {v0}, [Lu/aly/aw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/aw;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lu/aly/aw;->c:I

    return v0
.end method
