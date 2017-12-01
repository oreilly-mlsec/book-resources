.class public Lcom/third/mu/utils/b;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:J

.field public static g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3d

    sput v0, Lcom/third/mu/utils/b;->a:I

    const/16 v0, 0x52

    sput v0, Lcom/third/mu/utils/b;->b:I

    const/4 v0, 0x0

    sput v0, Lcom/third/mu/utils/b;->c:I

    const/4 v0, -0x1

    sput v0, Lcom/third/mu/utils/b;->d:I

    sget v0, Lcom/third/mu/utils/b;->c:I

    sput v0, Lcom/third/mu/utils/b;->e:I

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/third/mu/utils/b;->f:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/third/mu/utils/b;->g:J

    return-void
.end method

.method public static a()V
    .locals 1

    sget v0, Lcom/third/mu/utils/b;->d:I

    sput v0, Lcom/third/mu/utils/b;->e:I

    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Lcom/third/mu/utils/b;->e:I

    sget v1, Lcom/third/mu/utils/b;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
