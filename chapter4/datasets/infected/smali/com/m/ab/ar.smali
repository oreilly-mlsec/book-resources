.class public Lcom/m/ab/ar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m/ab/ar$aa;,
        Lcom/m/ab/ar$ab;,
        Lcom/m/ab/ar$ac;
    }
.end annotation


# instance fields
.field private aa:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/m/u/ae;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/m/ab/ar;->aa:[B

    return-void
.end method

.method private aa([BILjava/lang/Class;Lcom/m/ab/ar$aa;)Lcom/m/ab/ar$ac;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/m/ab/ar$aa;",
            ")",
            "Lcom/m/ab/ar$ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    new-instance v0, Lcom/m/ab/ar$ac;

    invoke-direct {v0, p0}, Lcom/m/ab/ar$ac;-><init>(Lcom/m/ab/ar;)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_0

    const-class v1, Ljava/lang/Byte;

    if-ne p3, v1, :cond_1

    :cond_0
    iput v3, v0, Lcom/m/ab/ar$ac;->aa:I

    new-instance v1, Ljava/lang/Byte;

    aget-byte v2, p1, p2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    iput-object v1, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_2

    const-class v1, Ljava/lang/Character;

    if-ne p3, v1, :cond_4

    :cond_2
    iput v3, v0, Lcom/m/ab/ar$ac;->aa:I

    aget-byte v1, p1, p2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_5

    const-class v1, Ljava/lang/Short;

    if-ne p3, v1, :cond_6

    :cond_5
    const/4 v1, 0x2

    iput v1, v0, Lcom/m/ab/ar$ac;->aa:I

    invoke-static {p1, p2}, Lcom/m/ab/ad;->aa([BI)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iput-object v1, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_7

    const-class v1, Ljava/lang/Integer;

    if-ne p3, v1, :cond_9

    :cond_7
    iget-object v1, p4, Lcom/m/ab/ar$aa;->aa:Lcom/m/ab/ac;

    invoke-interface {v1}, Lcom/m/ab/ac;->ab()I

    move-result v1

    if-ne v1, v3, :cond_8

    iput v3, v0, Lcom/m/ab/ar$ac;->aa:I

    aget-byte v1, p1, p2

    invoke-static {v1}, Lcom/m/ab/ad;->aa(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    goto :goto_0

    :cond_8
    iput v4, v0, Lcom/m/ab/ar$ac;->aa:I

    invoke-static {p1, p2}, Lcom/m/ab/ad;->ab([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    goto :goto_0

    :cond_9
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_a

    const-class v1, Ljava/lang/Long;

    if-ne p3, v1, :cond_b

    :cond_a
    iput v5, v0, Lcom/m/ab/ar$ac;->aa:I

    invoke-static {p1, p2}, Lcom/m/ab/ad;->ac([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    goto :goto_0

    :cond_b
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_c

    const-class v1, Ljava/lang/Float;

    if-ne p3, v1, :cond_d

    :cond_c
    iput v4, v0, Lcom/m/ab/ar$ac;->aa:I

    invoke-static {p1, p2}, Lcom/m/ab/ad;->ad([BI)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    goto :goto_0

    :cond_d
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_e

    const-class v1, Ljava/lang/Double;

    if-ne p3, v1, :cond_f

    :cond_e
    iput v5, v0, Lcom/m/ab/ar$ac;->aa:I

    invoke-static {p1, p2}, Lcom/m/ab/ad;->ae([BI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p3, v1, :cond_10

    const-class v1, Ljava/lang/Boolean;

    if-ne p3, v1, :cond_12

    :cond_10
    iput v3, v0, Lcom/m/ab/ar$ac;->aa:I

    aget-byte v1, p1, p2

    if-ne v1, v3, :cond_11

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_12
    const-class v1, Ljava/lang/String;

    if-ne p3, v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    array-length v2, p1

    if-lt p2, v2, :cond_14

    :cond_13
    invoke-direct {p0, v1}, Lcom/m/ab/ar;->aa(Ljava/util/List;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_14
    iget v2, v0, Lcom/m/ab/ar$ac;->aa:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/m/ab/ar$ac;->aa:I

    aget-byte v2, p1, p2

    if-eqz v2, :cond_13

    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method private aa(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/m/ab/ar$aa;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/m/ab/ar;->ab(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    new-instance v0, Lcom/m/ab/ar$ab;

    invoke-direct {v0, p0}, Lcom/m/ab/ar$ab;-><init>(Lcom/m/ab/ar;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/m/ab/ab;->aa(Ljava/lang/reflect/Field;)Lcom/m/ab/ac;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/m/ab/ar$aa;

    invoke-direct {v4, p0}, Lcom/m/ab/ar$aa;-><init>(Lcom/m/ab/ar;)V

    iput-object v0, v4, Lcom/m/ab/ar$aa;->aa:Lcom/m/ab/ac;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, v4, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private aa(Ljava/util/List;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;[BII)V"
        }
    .end annotation

    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_0

    if-lt p3, p4, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-byte v0, p2, p3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private aa(Ljava/lang/Class;Ljava/lang/Object;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_1

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    new-array v0, v2, [B

    aput-byte v1, v0, v3

    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_4

    :cond_2
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    new-array v0, v2, [B

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_5

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_6

    :cond_5
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v1

    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-static {v0, v1, v3}, Lcom/m/ab/ad;->aa([BSI)V

    goto :goto_0

    :cond_6
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_7

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_8

    :cond_7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v0, v4, [B

    invoke-static {v0, v1, v3}, Lcom/m/ab/ad;->aa([BII)V

    goto :goto_0

    :cond_8
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_9

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_a

    :cond_9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-array v0, v5, [B

    invoke-static {v0, v1, v2, v3}, Lcom/m/ab/ad;->aa([BJI)V

    goto :goto_0

    :cond_a
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_b

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_c

    :cond_b
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-array v0, v4, [B

    invoke-static {v0, v1, v3}, Lcom/m/ab/ad;->aa([BFI)V

    goto :goto_0

    :cond_c
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_d

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_e

    :cond_d
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    new-array v0, v5, [B

    invoke-static {v0, v1, v2, v3}, Lcom/m/ab/ad;->aa([BDI)V

    goto :goto_0

    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_f

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_11

    :cond_f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-array v0, v2, [B

    if-eqz v1, :cond_10

    aput-byte v2, v0, v3

    goto :goto_0

    :cond_10
    aput-byte v3, v0, v3

    goto :goto_0

    :cond_11
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_3

    if-nez p2, :cond_12

    const-string v0, ""

    :goto_1
    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    aput-byte v3, v0, v1

    goto/16 :goto_0

    :cond_12
    move-object v0, p2

    goto :goto_1
.end method

.method private aa(Ljava/util/List;)[B
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private ab(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m/ab/ar;->ab(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ac(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    :try_start_0
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public aa([BI)Lcom/m/ab/ap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1c

    :try_start_0
    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/m/u/ac;->fi:[B

    invoke-static {v1}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/m/u/ac;->fj:[B

    invoke-static {v3}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    const-class v0, Lcom/m/ab/ap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/m/ab/ar;->aa([BILjava/lang/Class;)Lcom/m/ab/ar$ac;

    move-result-object v0

    iget-object v0, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    check-cast v0, Lcom/m/ab/ap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method public aa([BILjava/lang/Class;)Lcom/m/ab/ar$ac;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/m/ab/ar$ac;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v6, Lcom/m/ab/ar$ac;

    invoke-direct {v6, p0}, Lcom/m/ab/ar$ac;-><init>(Lcom/m/ab/ar;)V

    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/m/ab/ar;->aa(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    move v2, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    iput p2, v6, Lcom/m/ab/ar$ac;->aa:I

    return-object v6

    :cond_0
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m/ab/ar$aa;

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/m/ab/ar;->ac(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/lang/String;

    if-ne v1, v4, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/m/ab/ar;->aa([BILjava/lang/Class;Lcom/m/ab/ar$aa;)Lcom/m/ab/ar$ac;

    move-result-object v1

    iget v4, v1, Lcom/m/ab/ar$ac;->aa:I

    add-int/2addr p2, v4

    iget-object v0, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    iget-object v4, v6, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    iget-object v1, v1, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1, p2}, Lcom/m/ab/ad;->ab([BI)I

    move-result v4

    add-int/lit8 p2, p2, 0x4

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/m/ab/ar;->ac(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Ljava/lang/String;

    if-ne v1, v5, :cond_6

    :cond_4
    move v1, v3

    :goto_2
    if-lt v1, v4, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v5, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5, v0}, Lcom/m/ab/ar;->aa([BILjava/lang/Class;Lcom/m/ab/ar$aa;)Lcom/m/ab/ar$ac;

    move-result-object v5

    iget v8, v5, Lcom/m/ab/ar$ac;->aa:I

    add-int/2addr p2, v8

    iget-object v8, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    iget-object v9, v6, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v5, v5, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    invoke-static {v8, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/16 v1, 0x270f

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "     "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-class v1, Ljava/util/List;

    iget-object v4, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Lcom/m/ab/ad;->ab([BI)I

    move-result v8

    add-int/lit8 p2, p2, 0x4

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Class;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0, v1}, Lcom/m/ab/ar;->ac(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_8

    const-class v4, Ljava/lang/String;

    if-ne v1, v4, :cond_a

    :cond_8
    move v5, v3

    move v4, p2

    :goto_3
    if-lt v5, v8, :cond_9

    move v1, v4

    :goto_4
    iget-object v0, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    iget-object v4, v6, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    invoke-virtual {v0, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move p2, v1

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, p1, v4, v1, v0}, Lcom/m/ab/ar;->aa([BILjava/lang/Class;Lcom/m/ab/ar$aa;)Lcom/m/ab/ar$ac;

    move-result-object v10

    iget v11, v10, Lcom/m/ab/ar$ac;->aa:I

    add-int p2, v4, v11

    iget-object v4, v10, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, p2

    goto :goto_3

    :cond_a
    move v5, v3

    move v4, p2

    :goto_5
    if-lt v5, v8, :cond_b

    move v1, v4

    goto :goto_4

    :cond_b
    invoke-virtual {p0, p1, v4, v1}, Lcom/m/ab/ar;->aa([BILjava/lang/Class;)Lcom/m/ab/ar$ac;

    move-result-object v4

    iget p2, v4, Lcom/m/ab/ar$ac;->aa:I

    iget-object v4, v4, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, p2

    goto :goto_5

    :cond_c
    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/m/ab/ar;->aa([BILjava/lang/Class;)Lcom/m/ab/ar$ac;

    move-result-object v1

    iget p2, v1, Lcom/m/ab/ar$ac;->aa:I

    iget-object v0, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    iget-object v4, v6, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    iget-object v1, v1, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public aa([BIII)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4}, Lcom/m/ab/as;->aa(I)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v0, 0x1f5f

    const/16 v1, 0x1f60

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "     "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/16 v1, 0x1f61

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/m/ab/ab;->ab(Ljava/lang/Class;)Lcom/m/ab/av;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/m/ab/av;->aa()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/m/ab/ar;->aa:[B

    invoke-static {v0, v2}, Lcom/m/u/ad;->ab([B[B)[B

    move-result-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/m/ab/ar;->aa([BILjava/lang/Class;)Lcom/m/ab/ar$ac;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    iget-object v0, v0, Lcom/m/ab/ar$ac;->ab:Ljava/lang/Object;

    return-object v0
.end method

.method public aa(Lcom/m/ab/ao;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    const/16 v1, 0x1c

    iput v1, v0, Lcom/m/ab/ap;->ab:I

    iget-object v0, p1, Lcom/m/ab/ao;->ab:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/m/u/ac;->fh:[B

    invoke-static {v1}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/m/ab/ao;->ab:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/m/ab/ao;->ab:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/m/ab/ar;->aa(Ljava/lang/Object;)[B

    move-result-object v0

    iget-object v1, p1, Lcom/m/ab/ao;->ab:Ljava/lang/Object;

    invoke-static {v1}, Lcom/m/ab/ab;->aa(Ljava/lang/Object;)Lcom/m/ab/av;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/m/ab/av;->aa()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/m/ab/ar;->aa:[B

    invoke-static {v0, v1}, Lcom/m/u/ad;->aa([B[B)[B

    move-result-object v0

    :cond_1
    iget-object v1, p1, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    iget v2, v1, Lcom/m/ab/ap;->ab:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Lcom/m/ab/ap;->ab:I

    iget-object v1, p1, Lcom/m/ab/ao;->aa:Lcom/m/ab/ap;

    invoke-virtual {p0, v1}, Lcom/m/ab/ar;->aa(Ljava/lang/Object;)[B

    move-result-object v1

    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v1, v1

    array-length v4, v0

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method public aa(Ljava/lang/Object;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/m/ab/ar;->aa(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    invoke-direct {p0, v6}, Lcom/m/ab/ar;->aa(Ljava/util/List;)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/m/ab/ar$aa;

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/m/ab/ar;->ac(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/lang/String;

    if-ne v1, v4, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/m/ab/ar;->aa(Ljava/lang/Class;Ljava/lang/Object;)[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v6, v0, v3, v1}, Lcom/m/ab/ar;->aa(Ljava/util/List;[BII)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    new-array v1, v10, [B

    invoke-static {v1, v7, v3}, Lcom/m/ab/ad;->aa([BII)V

    array-length v8, v1

    invoke-direct {p0, v6, v1, v3, v8}, Lcom/m/ab/ar;->aa(Ljava/util/List;[BII)V

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/m/ab/ar;->ac(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const-class v8, Ljava/lang/String;

    if-ne v1, v8, :cond_5

    :cond_4
    move v1, v3

    :goto_2
    if-ge v1, v7, :cond_2

    iget-object v8, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/m/ab/ar;->aa(Ljava/lang/Class;Ljava/lang/Object;)[B

    move-result-object v8

    array-length v9, v8

    invoke-direct {p0, v6, v8, v3, v9}, Lcom/m/ab/ar;->aa(Ljava/util/List;[BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "     "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-class v1, Ljava/util/List;

    iget-object v4, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v10, [B

    invoke-static {v4, v7, v3}, Lcom/m/ab/ad;->aa([BII)V

    array-length v8, v4

    invoke-direct {p0, v6, v4, v3, v8}, Lcom/m/ab/ar;->aa(Ljava/util/List;[BII)V

    iget-object v0, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0, v0}, Lcom/m/ab/ar;->ac(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_7

    const-class v4, Ljava/lang/String;

    if-ne v0, v4, :cond_8

    :cond_7
    move v4, v3

    :goto_3
    if-ge v4, v7, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/m/ab/ar;->aa(Ljava/lang/Class;Ljava/lang/Object;)[B

    move-result-object v8

    array-length v9, v8

    invoke-direct {p0, v6, v8, v3, v9}, Lcom/m/ab/ar;->aa(Ljava/util/List;[BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v0, v3

    :goto_4
    if-ge v0, v7, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/m/ab/ar;->aa(Ljava/lang/Object;)[B

    move-result-object v4

    array-length v8, v4

    invoke-direct {p0, v6, v4, v3, v8}, Lcom/m/ab/ar;->aa(Ljava/util/List;[BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, v0, Lcom/m/ab/ar$aa;->ab:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/m/ab/ar;->aa(Ljava/lang/Object;)[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v6, v0, v3, v1}, Lcom/m/ab/ar;->aa(Ljava/util/List;[BII)V

    goto/16 :goto_1
.end method
