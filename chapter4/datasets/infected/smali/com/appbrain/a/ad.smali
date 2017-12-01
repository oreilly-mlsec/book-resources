.class final Lcom/appbrain/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/SharedPreferences;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:J


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/ad;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/appbrain/a/ad;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/appbrain/a/ad;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/appbrain/a/ad;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appbrain/a/ad;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/appbrain/a/ac;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lcom/appbrain/a/ad;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/appbrain/a/ac;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appbrain/a/v;->g()Lcom/appbrain/RemoteSettings;

    move-result-object v3

    const-string v4, "tver"

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Lcom/appbrain/RemoteSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v0, :cond_2

    move v0, v1

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/appbrain/a/ad;->b:Landroid/content/Context;

    invoke-static {}, Lcom/appbrain/a/ac;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/appbrain/a/ad;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/promoted.data?v=11"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Lcmn/h;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iget-object v4, p0, Lcom/appbrain/a/ad;->b:Landroid/content/Context;

    invoke-static {}, Lcom/appbrain/a/ac;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3}, Lcmn/h;->a(Lorg/apache/http/HttpResponse;)V

    iget-object v0, p0, Lcom/appbrain/a/ad;->b:Landroid/content/Context;

    invoke-static {}, Lcom/appbrain/a/ac;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    move-object v1, v0

    :cond_0
    :goto_2
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/appbrain/a/ad;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/appbrain/a/ae;->a(Ljava/io/InputStream;)Lcom/appbrain/a/ae;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/appbrain/a/ac;->a(Ljava/util/List;Lcom/appbrain/a/ae;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appbrain/a/ad;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {}, Lcom/appbrain/a/ac;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/appbrain/a/ae;->a()I

    move-result v0

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/appbrain/a/ac;->a:Ljava/lang/String;

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/appbrain/a/ac;->d()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/appbrain/a/ad;->d:J

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    invoke-static {}, Lcom/appbrain/a/ac;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_0
    move-exception v0

    move v0, v1

    move-object v1, v3

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static {v3}, Lcmn/h;->a(Lorg/apache/http/HttpResponse;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    :try_start_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_2
    move v0, v2

    goto/16 :goto_0
.end method
