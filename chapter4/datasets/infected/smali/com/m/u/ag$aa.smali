.class Lcom/m/u/ag$aa;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m/u/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "aa"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/m/u/ag;->aa()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/m/u/ag;->ab()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/m/u/ag;->ad()Ljava/io/BufferedWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/m/u/ag;->ad()Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    invoke-static {}, Lcom/m/u/ag;->ae()Ljava/io/FileWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/m/u/ag;->ae()Ljava/io/FileWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/m/u/ag;->ab()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/m/u/ag;->aa()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/m/u/ag;->aa(I)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/m/u/ag;->aa(I)V

    :try_start_1
    invoke-static {}, Lcom/m/u/ag;->ac()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_4
    invoke-static {}, Lcom/m/u/ag;->ad()Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-static {}, Lcom/m/u/ag;->ab()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-static {}, Lcom/m/u/ag;->ad()Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    invoke-static {}, Lcom/m/u/ag;->ab()Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-wide/16 v0, 0x12c

    :try_start_2
    invoke-static {v0, v1}, Lcom/m/u/ag$aa;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
