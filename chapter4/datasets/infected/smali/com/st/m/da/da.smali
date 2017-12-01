.class public Lcom/st/m/da/da;
.super Ljava/lang/Object;


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/st/m/da/da;->a()I

    move-result v0

    sput v0, Lcom/st/m/da/da;->a:I

    return-void
.end method

.method private static a()I
    .locals 1

    invoke-static {}, Lcom/st/m/u/f;->a()Lcom/st/m/u/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/st/m/u/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method
