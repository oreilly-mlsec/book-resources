.class public Lcom/third/mx/utils/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:J

.field public static h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3d

    sput v0, Lcom/third/mx/utils/a;->a:I

    const/16 v0, 0x52

    sput v0, Lcom/third/mx/utils/a;->b:I

    const/4 v0, 0x0

    sput v0, Lcom/third/mx/utils/a;->c:I

    const/4 v0, -0x1

    sput v0, Lcom/third/mx/utils/a;->d:I

    const/4 v0, 0x1

    sput v0, Lcom/third/mx/utils/a;->e:I

    sget v0, Lcom/third/mx/utils/a;->c:I

    sput v0, Lcom/third/mx/utils/a;->f:I

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/third/mx/utils/a;->g:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/third/mx/utils/a;->h:J

    return-void
.end method

.method public static a()V
    .locals 1

    sget v0, Lcom/third/mx/utils/a;->d:I

    sput v0, Lcom/third/mx/utils/a;->f:I

    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Lcom/third/mx/utils/a;->f:I

    sget v1, Lcom/third/mx/utils/a;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
