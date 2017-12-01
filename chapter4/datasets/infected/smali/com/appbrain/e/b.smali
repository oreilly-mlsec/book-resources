.class public final enum Lcom/appbrain/e/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/appbrain/e/b;

.field public static final enum b:Lcom/appbrain/e/b;

.field public static final enum c:Lcom/appbrain/e/b;

.field public static final enum d:Lcom/appbrain/e/b;

.field public static final enum e:Lcom/appbrain/e/b;

.field private static f:Lcom/appbrain/c/k;

.field private static final synthetic h:[Lcom/appbrain/e/b;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/appbrain/e/b;

    const-string v1, "SELECT"

    invoke-direct {v0, v1, v7, v3}, Lcom/appbrain/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/b;->a:Lcom/appbrain/e/b;

    new-instance v0, Lcom/appbrain/e/b;

    const-string v1, "IMPRESS"

    invoke-direct {v0, v1, v3, v4}, Lcom/appbrain/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/b;->b:Lcom/appbrain/e/b;

    new-instance v0, Lcom/appbrain/e/b;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v4, v5}, Lcom/appbrain/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/b;->c:Lcom/appbrain/e/b;

    new-instance v0, Lcom/appbrain/e/b;

    const-string v1, "INSTALL"

    invoke-direct {v0, v1, v5, v6}, Lcom/appbrain/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/b;->d:Lcom/appbrain/e/b;

    new-instance v0, Lcom/appbrain/e/b;

    const-string v1, "UNINSTALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/appbrain/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/b;->e:Lcom/appbrain/e/b;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/appbrain/e/b;

    sget-object v1, Lcom/appbrain/e/b;->a:Lcom/appbrain/e/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appbrain/e/b;->b:Lcom/appbrain/e/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appbrain/e/b;->c:Lcom/appbrain/e/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appbrain/e/b;->d:Lcom/appbrain/e/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appbrain/e/b;->e:Lcom/appbrain/e/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/appbrain/e/b;->h:[Lcom/appbrain/e/b;

    new-instance v0, Lcom/appbrain/e/c;

    invoke-direct {v0}, Lcom/appbrain/e/c;-><init>()V

    sput-object v0, Lcom/appbrain/e/b;->f:Lcom/appbrain/c/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appbrain/e/b;->g:I

    return-void
.end method

.method public static a(I)Lcom/appbrain/e/b;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/appbrain/e/b;->a:Lcom/appbrain/e/b;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appbrain/e/b;->b:Lcom/appbrain/e/b;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/appbrain/e/b;->c:Lcom/appbrain/e/b;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/appbrain/e/b;->d:Lcom/appbrain/e/b;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/appbrain/e/b;->e:Lcom/appbrain/e/b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/appbrain/e/b;->g:I

    return v0
.end method
