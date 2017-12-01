.class public Lcom/m/u/ba;
.super Ljava/lang/Object;


# static fields
.field public static final aa:Ljava/lang/String;


# instance fields
.field private ab:Landroid/content/Context;

.field private ac:Lcom/m/u/f;

.field private ad:Z

.field private ae:I

.field private af:I

.field private ag:[Lcom/m/u/az;

.field private ah:Ljava/io/File;

.field private ai:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aj:I

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:I

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->eb:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/ba;->aa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/m/u/ba;->ae:I

    iput v2, p0, Lcom/m/u/ba;->af:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    iput v2, p0, Lcom/m/u/ba;->ap:I

    :try_start_0
    iput-object p1, p0, Lcom/m/u/ba;->ab:Landroid/content/Context;

    iput-object p3, p0, Lcom/m/u/ba;->al:Ljava/lang/String;

    iput-object p2, p0, Lcom/m/u/ba;->ak:Ljava/lang/String;

    iput p5, p0, Lcom/m/u/ba;->am:I

    new-instance v0, Lcom/m/u/f;

    iget-object v1, p0, Lcom/m/u/ba;->ab:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/m/u/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/m/u/ba;->ac:Lcom/m/u/f;

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/m/u/ba;->ak:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/m/u/az;

    iput-object v1, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const-string v3, "NetFox"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-static {v0}, Lcom/m/u/ba;->ab(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    iput v1, p0, Lcom/m/u/ba;->af:I

    iget v1, p0, Lcom/m/u/ba;->af:I

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    sget-object v1, Lcom/m/u/ba;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/m/u/ba;->af:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/m/u/ba;->ac(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m/u/ba;->an:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/m/u/ba;->ao:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/m/u/ba;->ao:Ljava/lang/String;

    invoke-direct {v0, p4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/m/u/ba;->ah:Ljava/io/File;

    iget-object v0, p0, Lcom/m/u/ba;->ah:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/m/u/ba;->ah:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_2
    iget-object v0, p0, Lcom/m/u/ba;->ac:Lcom/m/u/f;

    invoke-virtual {v0, p2}, Lcom/m/u/f;->aa(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    array-length v1, v1

    if-ne v0, v1, :cond_4

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    array-length v0, v0

    if-lt v1, v0, :cond_6

    const/4 v0, 0x2

    sget-object v1, Lcom/m/u/ba;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/m/u/ba;->ae:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/m/u/ba;->af:I

    iget-object v1, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    array-length v1, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_7

    iget v0, p0, Lcom/m/u/ba;->af:I

    iget-object v1, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    array-length v1, v1

    div-int/2addr v0, v1

    :goto_3
    iput v0, p0, Lcom/m/u/ba;->aj:I

    goto/16 :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/m/u/ba;->ae:I

    iget-object v0, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/m/u/ba;->ae:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/m/u/ba;->af:I

    iget-object v1, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    array-length v1, v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x3

    sget-object v1, Lcom/m/u/ba;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static aa(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ab(Ljava/net/HttpURLConnection;)V
    .locals 4

    invoke-static {p0}, Lcom/m/u/ba;->aa(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private ac(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/m/u/ba;->ak:Ljava/lang/String;

    iget-object v1, p0, Lcom/m/u/ba;->ak:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const-string v2, "content-disposition"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ".*filename=(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public aa(Lcom/m/u/ay;)I
    .locals 12

    const/16 v11, 0xa

    const/4 v7, 0x1

    const/4 v9, 0x0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/m/u/ba;->ah:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v1, p0, Lcom/m/u/ba;->af:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/m/u/ba;->af:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcom/m/u/ba;->ak:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move v0, v9

    :goto_0
    iget-object v1, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    array-length v1, v1

    if-lt v0, v1, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/m/u/ba;->ae:I

    :cond_1
    move v8, v9

    :goto_1
    iget-object v0, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    array-length v0, v0

    if-lt v8, v0, :cond_6

    iget-object v0, p0, Lcom/m/u/ba;->ac:Lcom/m/u/f;

    iget-object v1, p0, Lcom/m/u/ba;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/m/u/f;->ab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m/u/ba;->ac:Lcom/m/u/f;

    iget-object v1, p0, Lcom/m/u/ba;->ak:Ljava/lang/String;

    iget-object v3, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    invoke-virtual {v0, v1, v3}, Lcom/m/u/f;->aa(Ljava/lang/String;Ljava/util/Map;)V

    move v0, v7

    :cond_2
    if-nez v0, :cond_9

    iget v0, p0, Lcom/m/u/ba;->ae:I

    iget v1, p0, Lcom/m/u/ba;->af:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/m/u/ba;->ac:Lcom/m/u/f;

    iget-object v1, p0, Lcom/m/u/ba;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/m/u/f;->ab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m/u/ba;->ah:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m/u/aj;->aa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/m/u/ba;->al:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/m/u/ba;->al:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    sget-object v1, Lcom/m/u/ba;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/m/u/ay;->aa(Z)V

    :cond_3
    :goto_2
    new-instance v0, Lcom/m/ab/aa;

    invoke-direct {v0}, Lcom/m/ab/aa;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/m/ab/aa;->aa(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m/u/ba;->ab:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m/ab/aa;->aa(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/m/ab/aa;->ab(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/m/ab/aa;->aa(S)V

    iget-object v1, p0, Lcom/m/u/ba;->ab:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/m/u/bb;->aa(Landroid/content/Context;Lcom/m/ab/aa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    const/4 v0, 0x6

    sget-object v1, Lcom/m/u/ba;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/m/u/ba;->ae:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/m/u/ba;->af:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/m/u/ba;->ae:I

    return v0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    add-int/lit8 v1, v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/m/u/ba;->aj:I

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/m/u/ba;->ae:I

    iget v1, p0, Lcom/m/u/ba;->af:I

    if-ge v0, v1, :cond_7

    iget-object v10, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    new-instance v0, Lcom/m/u/az;

    iget-object v3, p0, Lcom/m/u/ba;->ah:Ljava/io/File;

    iget v4, p0, Lcom/m/u/ba;->aj:I

    iget-object v1, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    add-int/lit8 v5, v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/m/u/az;-><init>(Lcom/m/u/ba;Ljava/net/URL;Ljava/io/File;III)V

    aput-object v0, v10, v8

    iget-object v0, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    aget-object v0, v0, v8

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/m/u/az;->setPriority(I)V

    iget-object v0, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/m/u/az;->start()V

    :goto_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    const/4 v1, 0x0

    aput-object v1, v0, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_8

    invoke-interface {p1, v9}, Lcom/m/u/ay;->aa(Z)V

    :cond_8
    new-instance v0, Lcom/m/ab/aa;

    invoke-direct {v0}, Lcom/m/ab/aa;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/m/ab/aa;->aa(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/m/u/ba;->ab:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m/ab/aa;->aa(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/m/ab/aa;->ab(I)V

    invoke-virtual {v0, v11}, Lcom/m/ab/aa;->aa(S)V

    iget-object v1, p0, Lcom/m/u/ba;->ab:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/m/u/bb;->aa(Landroid/content/Context;Lcom/m/ab/aa;)V

    goto/16 :goto_3

    :cond_9
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    move v8, v9

    move v0, v9

    :goto_5
    iget-object v1, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    array-length v1, v1

    if-ge v8, v1, :cond_2

    iget-object v1, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    aget-object v1, v1, v8

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/m/u/az;->aa()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v0, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/m/u/az;->ab()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_a

    iget v0, p0, Lcom/m/u/ba;->ap:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/m/u/ba;->ap:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/m/u/ba;->ap:I

    iget-object v10, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    new-instance v0, Lcom/m/u/az;

    iget-object v3, p0, Lcom/m/u/ba;->ah:Ljava/io/File;

    iget v4, p0, Lcom/m/u/ba;->aj:I

    iget-object v1, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    add-int/lit8 v5, v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/m/u/az;-><init>(Lcom/m/u/ba;Ljava/net/URL;Ljava/io/File;III)V

    aput-object v0, v10, v8

    iget-object v0, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    aget-object v0, v0, v8

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/m/u/az;->setPriority(I)V

    iget-object v0, p0, Lcom/m/u/ba;->ag:[Lcom/m/u/az;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/m/u/az;->start()V

    :cond_a
    move v0, v7

    :cond_b
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/m/u/ba;->ah:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x5

    sget-object v1, Lcom/m/u/ba;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/m/u/ay;->aa(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public aa()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m/u/ba;->ad:Z

    return-void
.end method

.method protected declared-synchronized aa(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/m/u/ba;->ae:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/m/u/ba;->ae:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized aa(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/m/u/ba;->ai:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/m/u/ba;->ac:Lcom/m/u/f;

    iget-object v1, p0, Lcom/m/u/ba;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/m/u/f;->aa(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ab()Z
    .locals 1

    iget-boolean v0, p0, Lcom/m/u/ba;->ad:Z

    return v0
.end method

.method public ac()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/m/u/ba;->ah:Ljava/io/File;

    return-object v0
.end method

.method public ad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/m/u/ba;->an:Ljava/lang/String;

    return-object v0
.end method
