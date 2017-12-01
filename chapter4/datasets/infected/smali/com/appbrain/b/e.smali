.class public final enum Lcom/appbrain/b/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/appbrain/b/e;

.field public static final enum b:Lcom/appbrain/b/e;

.field private static c:Lcom/appbrain/c/k;

.field private static final synthetic e:[Lcom/appbrain/b/e;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/appbrain/b/e;

    const-string v1, "INTEGRITY_ONLY"

    invoke-direct {v0, v1, v3, v2}, Lcom/appbrain/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/b/e;->a:Lcom/appbrain/b/e;

    new-instance v0, Lcom/appbrain/b/e;

    const-string v1, "SHARED_KEY"

    invoke-direct {v0, v1, v2, v4}, Lcom/appbrain/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/b/e;->b:Lcom/appbrain/b/e;

    new-array v0, v4, [Lcom/appbrain/b/e;

    sget-object v1, Lcom/appbrain/b/e;->a:Lcom/appbrain/b/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appbrain/b/e;->b:Lcom/appbrain/b/e;

    aput-object v1, v0, v2

    sput-object v0, Lcom/appbrain/b/e;->e:[Lcom/appbrain/b/e;

    new-instance v0, Lcom/appbrain/b/f;

    invoke-direct {v0}, Lcom/appbrain/b/f;-><init>()V

    sput-object v0, Lcom/appbrain/b/e;->c:Lcom/appbrain/c/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appbrain/b/e;->d:I

    return-void
.end method

.method public static a(I)Lcom/appbrain/b/e;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/appbrain/b/e;->a:Lcom/appbrain/b/e;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/appbrain/b/e;->b:Lcom/appbrain/b/e;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/appbrain/b/e;->d:I

    return v0
.end method
