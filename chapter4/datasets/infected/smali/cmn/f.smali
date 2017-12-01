.class public Lcmn/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:[B

.field static final synthetic c:Z

.field private static final d:[B

.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x7f

    const/16 v1, 0x40

    const-class v0, Lcmn/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcmn/f;->c:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcmn/f;->a:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcmn/f;->b:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcmn/f;->d:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcmn/f;->e:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B[BI[B)I
    .locals 6

    const/16 v5, 0x3d

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    aget-byte v3, p0, v1

    if-ne v3, v5, :cond_0

    aget-byte v1, p0, v4

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    aget-byte v2, p0, v0

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    :goto_0
    return v0

    :cond_0
    aget-byte v3, p0, v2

    if-ne v3, v5, :cond_1

    aget-byte v2, p0, v4

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x6

    aget-byte v0, p0, v0

    aget-byte v0, p3, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v2

    aget-byte v2, p0, v1

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    move v0, v1

    goto :goto_0

    :cond_1
    aget-byte v3, p0, v4

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x6

    aget-byte v0, p0, v0

    aget-byte v0, p3, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v3

    aget-byte v1, p0, v1

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    aget-byte v1, p0, v2

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, p2, 0x2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    move v0, v2

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3

    array-length v0, p0

    sget-object v1, Lcmn/f;->a:[B

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcmn/f;->a([BI[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BI[BZ)Ljava/lang/String;
    .locals 12

    const/16 v11, 0xa

    const v10, 0x7fffffff

    const/16 v9, 0x3d

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    div-int v2, v0, v10

    add-int/2addr v0, v2

    new-array v6, v0, [B

    add-int/lit8 v7, p1, -0x2

    move v4, v1

    move v2, v1

    move v5, v1

    :goto_0
    if-ge v5, v7, :cond_1

    aget-byte v0, p0, v5

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v5, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    add-int/lit8 v3, v5, 0x2

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v3

    ushr-int/lit8 v3, v0, 0x12

    aget-byte v3, p2, v3

    aput-byte v3, v6, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v8, v0, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, p2, v8

    aput-byte v8, v6, v3

    add-int/lit8 v3, v2, 0x2

    ushr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, p2, v8

    aput-byte v8, v6, v3

    add-int/lit8 v3, v2, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p2, v0

    aput-byte v0, v6, v3

    add-int/lit8 v0, v4, 0x4

    if-ne v0, v10, :cond_0

    add-int/lit8 v0, v2, 0x4

    aput-byte v11, v6, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    :cond_0
    add-int/lit8 v3, v5, 0x3

    add-int/lit8 v2, v2, 0x4

    move v4, v0

    move v5, v3

    goto :goto_0

    :cond_1
    if-ge v5, p1, :cond_3

    sub-int v7, p1, v5

    if-lez v7, :cond_4

    aget-byte v0, p0, v5

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    move v3, v0

    :goto_1
    const/4 v0, 0x1

    if-le v7, v0, :cond_5

    add-int/lit8 v0, v5, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x10

    :goto_2
    or-int/2addr v3, v0

    const/4 v0, 0x2

    if-le v7, v0, :cond_6

    add-int/lit8 v0, v5, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :goto_3
    or-int/2addr v0, v3

    packed-switch v7, :pswitch_data_0

    :goto_4
    add-int/lit8 v0, v4, 0x4

    if-ne v0, v10, :cond_2

    add-int/lit8 v0, v2, 0x4

    aput-byte v11, v6, v0

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x4

    :cond_3
    sget-boolean v0, Lcmn/f;->c:Z

    if-nez v0, :cond_7

    array-length v0, v6

    if-eq v2, v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :pswitch_0
    ushr-int/lit8 v3, v0, 0x12

    aget-byte v3, p2, v3

    aput-byte v3, v6, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, p2, v5

    aput-byte v5, v6, v3

    add-int/lit8 v3, v2, 0x2

    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, p2, v5

    aput-byte v5, v6, v3

    add-int/lit8 v3, v2, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p2, v0

    aput-byte v0, v6, v3

    goto :goto_4

    :pswitch_1
    ushr-int/lit8 v3, v0, 0x12

    aget-byte v3, p2, v3

    aput-byte v3, v6, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, p2, v5

    aput-byte v5, v6, v3

    add-int/lit8 v3, v2, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p2, v0

    aput-byte v0, v6, v3

    add-int/lit8 v0, v2, 0x3

    aput-byte v9, v6, v0

    goto :goto_4

    :pswitch_2
    ushr-int/lit8 v3, v0, 0x12

    aget-byte v3, p2, v3

    aput-byte v3, v6, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p2, v0

    aput-byte v0, v6, v3

    add-int/lit8 v0, v2, 0x2

    aput-byte v9, v6, v0

    add-int/lit8 v0, v2, 0x3

    aput-byte v9, v6, v0

    goto :goto_4

    :cond_7
    array-length v0, v6

    :goto_5
    if-nez p3, :cond_8

    if-lez v0, :cond_8

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v6, v2

    if-ne v2, v9, :cond_8

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 11

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v5, v4

    sget-object v6, Lcmn/f;->d:[B

    mul-int/lit8 v0, v5, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    new-array v7, v0, [B

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v8, v0, [B

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_7

    aget-byte v0, v4, v3

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v9, v0

    aget-byte v0, v6, v9

    const/4 v10, -0x5

    if-lt v0, v10, :cond_6

    const/4 v10, -0x1

    if-lt v0, v10, :cond_b

    const/16 v0, 0x3d

    if-ne v9, v0, :cond_5

    sub-int v0, v5, v3

    add-int/lit8 v9, v5, -0x1

    aget-byte v4, v4, v9

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    if-eqz v1, :cond_0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid padding byte \'=\' at byte offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v9, 0x3

    if-ne v1, v9, :cond_2

    const/4 v9, 0x2

    if-gt v0, v9, :cond_3

    :cond_2
    const/4 v9, 0x4

    if-ne v1, v9, :cond_4

    const/4 v9, 0x1

    if-le v0, v9, :cond_4

    :cond_3
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    const/16 v0, 0x3d

    if-eq v4, v0, :cond_7

    const/16 v0, 0xa

    if-eq v4, v0, :cond_7

    new-instance v0, Ljava/text/ParseException;

    const-string v1, "encoded value has invalid trailing byte"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    aput-byte v9, v8, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    invoke-static {v8, v7, v2, v6}, Lcmn/f;->a([B[BI[B)I

    move-result v0

    add-int v1, v2, v0

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad Base64 input character at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v4, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    if-eqz v1, :cond_9

    const/4 v0, 0x1

    if-ne v1, v0, :cond_8

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "single trailing character at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v5, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_8
    const/16 v0, 0x3d

    aput-byte v0, v8, v1

    invoke-static {v8, v7, v2, v6}, Lcmn/f;->a([B[BI[B)I

    move-result v0

    add-int/2addr v2, v0

    :cond_9
    new-array v0, v2, [B

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v7, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_a
    move v1, v2

    goto :goto_1

    :cond_b
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public static b([B)Ljava/lang/String;
    .locals 3

    array-length v0, p0

    sget-object v1, Lcmn/f;->b:[B

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcmn/f;->a([BI[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
