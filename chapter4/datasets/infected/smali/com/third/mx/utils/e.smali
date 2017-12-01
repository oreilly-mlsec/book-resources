.class public Lcom/third/mx/utils/e;
.super Landroid/os/AsyncTask;


# static fields
.field public static a:Z


# instance fields
.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/third/mx/utils/e;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/third/mx/utils/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/third/mx/utils/e;->b:I

    iput-object p1, p0, Lcom/third/mx/utils/e;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/third/mx/utils/e;->d:Ljava/lang/String;

    iput p3, p0, Lcom/third/mx/utils/e;->b:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/third/mx/utils/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/third/mx/utils/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/third/mx/utils/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/third/mx/utils/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "jd"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "thirdcd.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private a()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/third/mx/utils/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/third/mx/utils/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    :try_start_0
    invoke-direct {p0}, Lcom/third/mx/utils/e;->b()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_6

    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x800

    :try_start_2
    new-array v3, v3, [B

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_2

    iget-object v3, p0, Lcom/third/mx/utils/e;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/third/mx/update/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_1
    :goto_3
    return v0

    :cond_2
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v2, v3, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_5
    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_4
    :goto_7
    if-eqz v4, :cond_5

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_5
    :goto_8
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v4, v3

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_4

    :cond_6
    move-object v1, v3

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_6
.end method

.method private b()Ljava/io/InputStream;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/third/mx/utils/e;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/third/mx/utils/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/third/mx/utils/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/third/mx/utils/e;)I
    .locals 1

    iget v0, p0, Lcom/third/mx/utils/e;->b:I

    return v0
.end method

.method private c()V
    .locals 4

    new-instance v0, Lcom/third/mx/utils/f;

    invoke-direct {v0, p0}, Lcom/third/mx/utils/f;-><init>(Lcom/third/mx/utils/e;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/third/mx/utils/e;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lcom/third/mx/utils/e;->a:Z

    iget-object v0, p0, Lcom/third/mx/utils/e;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/third/mx/update/a;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/third/mx/utils/e;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/third/mx/update/a;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/third/mx/utils/e;->b:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/third/mx/utils/e;->c()V

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/third/mx/utils/e;->a:Z

    iget-object v0, p0, Lcom/third/mx/utils/e;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/third/mx/update/a;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/third/mx/utils/e;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/third/mx/utils/e;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/third/mx/utils/e;->a:Z

    return-void
.end method
