.class public Lcom/m/u/o$aa;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m/u/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ldalvik/system/DexClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aa:Lcom/m/u/o;

.field private ab:Lcom/m/u/ao;

.field private ac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/m/u/o;)V
    .locals 0

    iput-object p1, p0, Lcom/m/u/o$aa;->aa:Lcom/m/u/o;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs aa([Ljava/lang/Object;)Ldalvik/system/DexClassLoader;
    .locals 6

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/m/u/o$aa;->ac:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lcom/m/u/ao;

    iput-object v0, p0, Lcom/m/u/o$aa;->ab:Lcom/m/u/ao;

    const/4 v0, 0x4

    invoke-static {}, Lcom/m/u/o;->ad()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "   "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/m/u/o$aa;->ac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m/u/o$aa;->aa:Lcom/m/u/o;

    invoke-static {v0}, Lcom/m/u/o;->aa(Lcom/m/u/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/m/u/o;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/m/u/o$aa;->aa:Lcom/m/u/o;

    invoke-static {v0}, Lcom/m/u/o;->aa(Lcom/m/u/o;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/m/ac/aa;->ay:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/m/u/o$aa;->aa:Lcom/m/u/o;

    invoke-static {v2}, Lcom/m/u/o;->ab(Lcom/m/u/o;)Lcom/m/u/al;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/m/u/al;->aa(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/m/u/o$aa;->aa:Lcom/m/u/o;

    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v1, v0, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v2, v3}, Lcom/m/u/o;->aa(Lcom/m/u/o;Ldalvik/system/DexClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/m/u/o$aa;->aa:Lcom/m/u/o;

    invoke-static {v0}, Lcom/m/u/o;->ac(Lcom/m/u/o;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-static {}, Lcom/m/u/o;->ad()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "   "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method protected aa(Ldalvik/system/DexClassLoader;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/m/u/o$aa;->aa:Lcom/m/u/o;

    invoke-static {v1}, Lcom/m/u/o;->ab(Lcom/m/u/o;)Lcom/m/u/al;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/m/u/al;->aa(Z)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/m/u/o$aa;->aa:Lcom/m/u/o;

    invoke-static {v1}, Lcom/m/u/o;->ab(Lcom/m/u/o;)Lcom/m/u/al;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/m/u/al;->aa(Ldalvik/system/DexClassLoader;)V

    :try_start_0
    iget-object v1, p0, Lcom/m/u/o$aa;->ac:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/m/u/o;->ad()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/m/u/o$aa;->ac:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m/u/o$aa;->ab:Lcom/m/u/ao;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/m/u/ao;->aa(ZLjava/lang/Class;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-static {}, Lcom/m/u/o;->ad()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/m/u/o$aa;->ac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m/u/o$aa;->ab:Lcom/m/u/ao;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/m/u/ao;->aa(ZLjava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {}, Lcom/m/u/o;->ad()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/m/u/o$aa;->ac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ab(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m/u/o$aa;->ab:Lcom/m/u/ao;

    invoke-interface {v0, v4, v5}, Lcom/m/u/ao;->aa(ZLjava/lang/Class;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    invoke-static {}, Lcom/m/u/o;->ad()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/m/u/o$aa;->ab:Lcom/m/u/ao;

    invoke-interface {v0, v4, v5}, Lcom/m/u/ao;->aa(ZLjava/lang/Class;)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/m/u/o$aa;->aa([Ljava/lang/Object;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0, p1}, Lcom/m/u/o$aa;->aa(Ldalvik/system/DexClassLoader;)V

    return-void
.end method
