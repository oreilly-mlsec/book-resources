.class Lcom/ose/a/b;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Landroid/content/Intent;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ose/a/b;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/ose/a/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ose/a/b;->a:Landroid/content/Intent;

    const-string v1, "action"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/ose/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ose/a/d;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u66f4\u65b0kit"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ose/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ose/a/d;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/ose/a/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/ose/a/d;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ose/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ose/a/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/ose/a/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v0, p0, Lcom/ose/a/b;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ose/a/a;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/ose/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ose/a/a;->a(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
