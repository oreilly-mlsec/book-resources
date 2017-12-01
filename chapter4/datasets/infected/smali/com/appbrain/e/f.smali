.class public final enum Lcom/appbrain/e/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/appbrain/e/f;

.field public static final enum b:Lcom/appbrain/e/f;

.field public static final enum c:Lcom/appbrain/e/f;

.field public static final enum d:Lcom/appbrain/e/f;

.field public static final enum e:Lcom/appbrain/e/f;

.field public static final enum f:Lcom/appbrain/e/f;

.field private static g:Lcom/appbrain/c/k;

.field private static final synthetic i:[Lcom/appbrain/e/f;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/appbrain/e/f;

    const-string v1, "UNKNOWN_SOURCE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/appbrain/e/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/f;->a:Lcom/appbrain/e/f;

    new-instance v0, Lcom/appbrain/e/f;

    const-string v1, "DIRECT"

    invoke-direct {v0, v1, v4, v3}, Lcom/appbrain/e/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/f;->b:Lcom/appbrain/e/f;

    new-instance v0, Lcom/appbrain/e/f;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v5, v4}, Lcom/appbrain/e/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/f;->c:Lcom/appbrain/e/f;

    new-instance v0, Lcom/appbrain/e/f;

    const-string v1, "MAYBE_INTERSTITIAL"

    invoke-direct {v0, v1, v6, v5}, Lcom/appbrain/e/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/f;->d:Lcom/appbrain/e/f;

    new-instance v0, Lcom/appbrain/e/f;

    const-string v1, "MAYBE_OFFERWALL"

    invoke-direct {v0, v1, v7, v6}, Lcom/appbrain/e/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/f;->e:Lcom/appbrain/e/f;

    new-instance v0, Lcom/appbrain/e/f;

    const-string v1, "SHOW_DIALOG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/appbrain/e/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/e/f;->f:Lcom/appbrain/e/f;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/appbrain/e/f;

    sget-object v1, Lcom/appbrain/e/f;->a:Lcom/appbrain/e/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appbrain/e/f;->b:Lcom/appbrain/e/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appbrain/e/f;->c:Lcom/appbrain/e/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appbrain/e/f;->d:Lcom/appbrain/e/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appbrain/e/f;->e:Lcom/appbrain/e/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/appbrain/e/f;->f:Lcom/appbrain/e/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/appbrain/e/f;->i:[Lcom/appbrain/e/f;

    new-instance v0, Lcom/appbrain/e/g;

    invoke-direct {v0}, Lcom/appbrain/e/g;-><init>()V

    sput-object v0, Lcom/appbrain/e/f;->g:Lcom/appbrain/c/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appbrain/e/f;->h:I

    return-void
.end method

.method public static a(I)Lcom/appbrain/e/f;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/appbrain/e/f;->a:Lcom/appbrain/e/f;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appbrain/e/f;->b:Lcom/appbrain/e/f;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/appbrain/e/f;->c:Lcom/appbrain/e/f;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/appbrain/e/f;->d:Lcom/appbrain/e/f;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/appbrain/e/f;->e:Lcom/appbrain/e/f;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/appbrain/e/f;->f:Lcom/appbrain/e/f;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/appbrain/e/f;->h:I

    return v0
.end method
