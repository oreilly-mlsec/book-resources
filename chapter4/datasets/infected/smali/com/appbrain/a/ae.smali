.class public final Lcom/appbrain/a/ae;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[I

.field private c:[Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/appbrain/a/ae;
    .locals 11

    const/4 v1, 0x0

    new-instance v3, Lcom/appbrain/a/ae;

    invoke-direct {v3}, Lcom/appbrain/a/ae;-><init>()V

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/appbrain/c/d;->a(Ljava/io/InputStream;)Lcom/appbrain/c/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appbrain/c/d;->g()I

    move-result v0

    iput v0, v3, Lcom/appbrain/a/ae;->a:I

    invoke-virtual {v5}, Lcom/appbrain/c/d;->g()I

    move-result v6

    new-array v0, v6, [Ljava/util/Map;

    iput-object v0, v3, Lcom/appbrain/a/ae;->c:[Ljava/util/Map;

    new-array v0, v6, [I

    iput-object v0, v3, Lcom/appbrain/a/ae;->b:[I

    move v2, v1

    :goto_0
    if-lt v2, v6, :cond_0

    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    return-object v3

    :cond_0
    iget-object v0, v3, Lcom/appbrain/a/ae;->c:[Ljava/util/Map;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    aput-object v7, v0, v2

    invoke-virtual {v5}, Lcom/appbrain/c/d;->g()I

    move-result v7

    iget-object v0, v3, Lcom/appbrain/a/ae;->b:[I

    invoke-virtual {v5}, Lcom/appbrain/c/d;->i()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    invoke-virtual {v5}, Lcom/appbrain/c/d;->i()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-short v8, v8

    aput v8, v0, v2

    move v0, v1

    :goto_1
    if-lt v0, v7, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/appbrain/c/d;->h()I

    move-result v8

    invoke-virtual {v5}, Lcom/appbrain/c/d;->i()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {v5}, Lcom/appbrain/c/d;->i()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    int-to-short v9, v9

    iget-object v10, v3, Lcom/appbrain/a/ae;->c:[Ljava/util/Map;

    aget-object v10, v10, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/appbrain/a/ae;->a:I

    return v0
.end method

.method public final a(Ljava/util/List;)[I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appbrain/a/ae;->c:[Ljava/util/Map;

    array-length v0, v0

    new-array v3, v0, [I

    move v0, v1

    :goto_0
    array-length v2, v3

    if-lt v0, v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/appbrain/a/ae;->b:[I

    aget v2, v2, v0

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    move v2, v1

    :goto_1
    array-length v0, v3

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/ae;->c:[Ljava/util/Map;

    aget-object v0, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    aget v6, v3, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v6

    aput v0, v3, v2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method
