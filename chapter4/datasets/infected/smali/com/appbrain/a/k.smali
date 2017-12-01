.class public final Lcom/appbrain/a/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/appbrain/a/k;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 15

    const/16 v4, 0x12c

    const/4 v14, 0x1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-ne v1, v2, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v9, Lcom/appbrain/e/b;->c:Lcom/appbrain/e/b;

    invoke-virtual {v9}, Lcom/appbrain/e/b;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-interface {v7, v0, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lcmn/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/e/t;->a([B)Lcom/appbrain/e/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/t;->c()Lcom/appbrain/e/p;

    move-result-object v9

    invoke-virtual {v9}, Lcom/appbrain/e/p;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/appbrain/e/t;->g()I

    move-result v10

    invoke-static {p0, v9}, Lcom/appbrain/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v10, :cond_4

    if-eqz v11, :cond_4

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lcom/appbrain/a/k;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v9

    invoke-virtual {v9}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "ow_inst"

    const-string v12, "ow_inst"

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcmn/a;->b(Landroid/content/SharedPreferences$Editor;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/appbrain/e/t;->c()Lcom/appbrain/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/p;->k()J

    move-result-wide v9

    sub-long v9, v5, v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v0, v9

    if-ge v0, v4, :cond_5

    const/16 v0, 0x1e

    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    if-ne v10, v14, :cond_3

    if-nez v11, :cond_3

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lcom/appbrain/a/k;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/appbrain/c/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/appbrain/c/l;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    const/16 v9, 0x384

    if-ge v0, v9, :cond_6

    const/16 v0, 0x78

    goto :goto_2

    :cond_6
    const/16 v9, 0xe10

    if-ge v0, v9, :cond_7

    move v0, v4

    goto :goto_2

    :cond_7
    const v9, 0x1a5e0

    if-ge v0, v9, :cond_8

    const/16 v0, 0x708

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Lcom/appbrain/e/b;Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/e/t;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/appbrain/e/p;->q()Lcom/appbrain/e/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/e/q;->a(Ljava/lang/String;)Lcom/appbrain/e/q;

    invoke-virtual {v0, p1}, Lcom/appbrain/e/q;->a(Lcom/appbrain/e/b;)Lcom/appbrain/e/q;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/e/q;->b(J)Lcom/appbrain/e/q;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/e/q;->a(J)Lcom/appbrain/e/q;

    invoke-virtual {v0, p2}, Lcom/appbrain/e/q;->b(Ljava/lang/String;)Lcom/appbrain/e/q;

    invoke-virtual {v0, p3}, Lcom/appbrain/e/q;->c(Ljava/lang/String;)Lcom/appbrain/e/q;

    invoke-static {}, Lcom/appbrain/e/t;->i()Lcom/appbrain/e/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/e/u;->a(Lcom/appbrain/e/q;)Lcom/appbrain/e/u;

    invoke-virtual {v1, v3}, Lcom/appbrain/e/u;->a(Z)Lcom/appbrain/e/u;

    invoke-virtual {v1, v3}, Lcom/appbrain/e/u;->a(I)Lcom/appbrain/e/u;

    invoke-virtual {v1}, Lcom/appbrain/e/u;->a()Lcom/appbrain/e/t;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 9

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_cache_clear"

    invoke-interface {v4, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    :cond_0
    :goto_0
    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_cache_clear"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v0, Lcom/appbrain/a/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appbrain/a/l;-><init>(Landroid/content/Context;Lcom/appbrain/a/o;)V

    const-string v1, "adApi"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    const-wide/32 v5, 0xf731400

    add-long/2addr v5, v2

    cmp-long v5, v0, v5

    if-lez v5, :cond_3

    invoke-virtual {p1, v8}, Landroid/webkit/WebView;->clearCache(Z)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/appbrain/a/o;)V
    .locals 3

    iget-object v0, p1, Lcom/appbrain/a/o;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/appbrain/a/o;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/appbrain/a/o;->b:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/appbrain/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/appbrain/e/b;->c:Lcom/appbrain/e/b;

    invoke-static {p1, v0, p2, p3}, Lcom/appbrain/a/k;->a(Ljava/lang/String;Lcom/appbrain/e/b;Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/e/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appbrain/e/b;->c:Lcom/appbrain/e/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/appbrain/a/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appbrain/e/t;)V

    invoke-static {p0}, Lcom/appbrain/a/k;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/appbrain/a/u;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appbrain/e/b;->c:Lcom/appbrain/e/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lcmn/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/appbrain/e/t;->a([B)Lcom/appbrain/e/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/e/t;->g()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    if-nez p2, :cond_0

    :cond_3
    invoke-virtual {v1}, Lcom/appbrain/e/t;->j()Lcom/appbrain/e/u;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/appbrain/e/u;->a(I)Lcom/appbrain/e/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/e/u;->a()Lcom/appbrain/e/t;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appbrain/e/b;->c:Lcom/appbrain/e/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/appbrain/e/t;->K()[B

    move-result-object v3

    invoke-static {v3}, Lcmn/f;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1}, Lcom/appbrain/e/t;->c()Lcom/appbrain/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/e/p;->i()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "time="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&delta="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_4

    sget-object v0, Lcom/appbrain/e/b;->d:Lcom/appbrain/e/b;

    :goto_1
    invoke-virtual {v1}, Lcom/appbrain/e/t;->c()Lcom/appbrain/e/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/e/p;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lcom/appbrain/a/k;->a(Ljava/lang/String;Lcom/appbrain/e/b;Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/e/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/appbrain/a/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appbrain/e/t;)V
    :try_end_0
    .catch Lcom/appbrain/c/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/appbrain/c/l;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    sget-object v0, Lcom/appbrain/e/b;->e:Lcom/appbrain/e/b;
    :try_end_1
    .catch Lcom/appbrain/c/l; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/appbrain/a/v;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ref"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/appbrain/a/v;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ref"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private static declared-synchronized c(Landroid/content/Context;)Z
    .locals 4

    const-class v1, Lcom/appbrain/a/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/appbrain/a/k;->a:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.appspot.swisscodemonkeys.featured.InstallBroadcastReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/k;->a:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/appbrain/a/k;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/k;->a:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
