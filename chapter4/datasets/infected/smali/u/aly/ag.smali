.class public Lu/aly/ag;
.super Lu/aly/av;
.source "UError.java"

# interfaces
.implements Lu/aly/q;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lu/aly/av;-><init>()V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/ag;->a(J)Lu/aly/av;

    .line 23
    sget-object v0, Lu/aly/aw;->a:Lu/aly/aw;

    invoke-virtual {p0, v0}, Lu/aly/ag;->a(Lu/aly/aw;)Lu/aly/av;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lu/aly/ag;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lu/aly/ag;->a(Ljava/lang/String;)Lu/aly/av;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lu/aly/ag;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lu/aly/ag;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/ag;->a(Ljava/lang/String;)Lu/aly/av;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 42
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-object v0

    .line 49
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 50
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 53
    :goto_1
    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 55
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 59
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Lu/aly/ag;
    .locals 1

    .prologue
    .line 37
    if-eqz p1, :cond_0

    sget-object v0, Lu/aly/aw;->a:Lu/aly/aw;

    :goto_0
    invoke-virtual {p0, v0}, Lu/aly/ag;->a(Lu/aly/aw;)Lu/aly/av;

    .line 38
    return-object p0

    .line 37
    :cond_0
    sget-object v0, Lu/aly/aw;->b:Lu/aly/aw;

    goto :goto_0
.end method

.method public a(Lu/aly/bp;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Lu/aly/bp;->s()I

    move-result v0

    if-lez v0, :cond_2

    .line 70
    invoke-virtual {p1}, Lu/aly/bp;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    .line 71
    invoke-virtual {v0}, Lu/aly/be;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    :goto_0
    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lu/aly/be;

    invoke-direct {v0}, Lu/aly/be;-><init>()V

    .line 80
    invoke-virtual {v0, p2}, Lu/aly/be;->a(Ljava/lang/String;)Lu/aly/be;

    .line 81
    invoke-virtual {p1, v0}, Lu/aly/bp;->a(Lu/aly/be;)V

    .line 84
    :cond_1
    invoke-virtual {v0, p0}, Lu/aly/be;->a(Lu/aly/av;)V

    .line 85
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
