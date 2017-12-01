.class Lu/aly/y$1;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Lcom/umeng/analytics/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/y;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/y;


# direct methods
.method constructor <init>(Lu/aly/y;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lu/aly/y$1;->a:Lu/aly/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public b(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 99
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    invoke-static {v2}, Lu/aly/cf;->b(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 102
    :try_start_2
    invoke-static {v2}, Lu/aly/cf;->c(Ljava/io/InputStream;)V

    .line 106
    iget-object v2, p0, Lu/aly/y$1;->a:Lu/aly/y;

    invoke-static {v2}, Lu/aly/y;->a(Lu/aly/y;)Lu/aly/t;

    move-result-object v2

    invoke-virtual {v2, v3}, Lu/aly/t;->a([B)[B

    move-result-object v2

    .line 107
    if-nez v2, :cond_2

    move v2, v0

    .line 113
    :goto_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lu/aly/y$1;->a:Lu/aly/y;

    invoke-static {v3}, Lu/aly/y;->b(Lu/aly/y;)Lu/aly/aa;

    move-result-object v3

    invoke-virtual {v3}, Lu/aly/aa;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lu/aly/y$1;->a:Lu/aly/y;

    invoke-static {v3}, Lu/aly/y;->b(Lu/aly/y;)Lu/aly/aa;

    move-result-object v3

    invoke-virtual {v3}, Lu/aly/aa;->l()V

    .line 117
    :cond_0
    iget-object v3, p0, Lu/aly/y$1;->a:Lu/aly/y;

    invoke-static {v3}, Lu/aly/y;->c(Lu/aly/y;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    :cond_1
    :goto_1
    return v0

    .line 102
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    invoke-static {v2}, Lu/aly/cf;->c(Ljava/io/InputStream;)V

    throw v0

    .line 126
    :catch_0
    move-exception v0

    move v0, v1

    .line 130
    goto :goto_1

    .line 110
    :cond_2
    iget-object v3, p0, Lu/aly/y$1;->a:Lu/aly/y;

    invoke-static {v3, v2}, Lu/aly/y;->a(Lu/aly/y;[B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto :goto_0

    .line 121
    :cond_3
    if-ne v2, v0, :cond_1

    move v0, v1

    .line 122
    goto :goto_1

    .line 102
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public c(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lu/aly/y$1;->a:Lu/aly/y;

    invoke-static {v0}, Lu/aly/y;->b(Lu/aly/y;)Lu/aly/aa;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/aa;->k()V

    .line 136
    return-void
.end method
