.class public Lcom/m/u/az;
.super Ljava/lang/Thread;


# static fields
.field private static final aa:Ljava/lang/String;


# instance fields
.field private ab:Ljava/io/File;

.field private ac:Ljava/net/URL;

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:Z

.field private ah:Lcom/m/u/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->ea:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/az;->aa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/m/u/ba;Ljava/net/URL;Ljava/io/File;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/m/u/az;->ae:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/m/u/az;->ag:Z

    iput-object p2, p0, Lcom/m/u/az;->ac:Ljava/net/URL;

    iput-object p3, p0, Lcom/m/u/az;->ab:Ljava/io/File;

    iput p4, p0, Lcom/m/u/az;->ad:I

    iput-object p1, p0, Lcom/m/u/az;->ah:Lcom/m/u/ba;

    iput p6, p0, Lcom/m/u/az;->ae:I

    iput p5, p0, Lcom/m/u/az;->af:I

    return-void
.end method

.method private static aa(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/m/u/az;->aa:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/m/u/ag;->ac(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public aa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/m/u/az;->ag:Z

    return v0
.end method

.method public ab()J
    .locals 2

    iget v0, p0, Lcom/m/u/az;->af:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public run()V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x1

    iget v0, p0, Lcom/m/u/az;->af:I

    iget v2, p0, Lcom/m/u/az;->ad:I

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/m/u/az;->ac:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v2, p0, Lcom/m/u/az;->ad:I

    iget v3, p0, Lcom/m/u/az;->ae:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/m/u/az;->af:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/m/u/az;->ad:I

    iget v4, p0, Lcom/m/u/az;->ae:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    const-string v4, "RANGE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User-Agent"

    const-string v4, "NetFox"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v3, 0x400

    new-array v3, v3, [B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/m/u/az;->ae:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "    "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/m/u/az;->aa(Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/m/u/az;->ab:Ljava/io/File;

    const-string v5, "rwd"

    invoke-direct {v1, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    iget-object v2, p0, Lcom/m/u/az;->ah:Lcom/m/u/ba;

    invoke-virtual {v2}, Lcom/m/u/ba;->ab()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v8, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/m/u/az;->ae:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/m/u/az;->aa(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/m/u/az;->ag:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v4, p0, Lcom/m/u/az;->af:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/m/u/az;->af:I

    iget-object v4, p0, Lcom/m/u/az;->ah:Lcom/m/u/ba;

    iget v5, p0, Lcom/m/u/az;->ae:I

    iget v6, p0, Lcom/m/u/az;->af:I

    invoke-virtual {v4, v5, v6}, Lcom/m/u/ba;->aa(II)V

    iget-object v4, p0, Lcom/m/u/az;->ah:Lcom/m/u/ba;

    invoke-virtual {v4, v2}, Lcom/m/u/ba;->aa(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v8, p0, Lcom/m/u/az;->af:I

    iput-boolean v7, p0, Lcom/m/u/az;->ag:Z

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
