.class public final Lcom/appbrain/a/u;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appbrain/AppBrainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.appbrain.CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/appbrain/e/t;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appbrain/AppBrainService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "event"

    invoke-virtual {p2}, Lcom/appbrain/e/t;->K()[B

    move-result-object v2

    invoke-static {v2}, Lcmn/f;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 14

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    if-eqz v0, :cond_6

    :goto_2
    return v2

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/appbrain/e/b;->c:Lcom/appbrain/e/b;

    invoke-virtual {v3}, Lcom/appbrain/e/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/appbrain/e/b;->d:Lcom/appbrain/e/b;

    invoke-virtual {v3}, Lcom/appbrain/e/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/appbrain/e/b;->e:Lcom/appbrain/e/b;

    invoke-virtual {v3}, Lcom/appbrain/e/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v3}, Lcmn/f;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/appbrain/e/t;->a([B)Lcom/appbrain/e/t;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v7}, Lcom/appbrain/e/t;->c()Lcom/appbrain/e/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appbrain/e/p;->i()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x419ee62800000000L    # 1.296E8

    add-double/2addr v10, v12

    cmpl-double v3, v8, v10

    if-lez v3, :cond_3

    move v3, v1

    :goto_3
    invoke-virtual {v7}, Lcom/appbrain/e/t;->e()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v3, :cond_0

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/appbrain/a/q;->a(Landroid/content/Context;)Lcom/appbrain/a/q;

    move-result-object v8

    invoke-virtual {v7}, Lcom/appbrain/e/t;->c()Lcom/appbrain/e/p;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/appbrain/a/q;->a(Lcom/appbrain/e/p;)Lcom/appbrain/e/j;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/appbrain/e/t;->c()Lcom/appbrain/e/p;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appbrain/e/p;->g()Lcom/appbrain/e/b;

    move-result-object v8

    sget-object v9, Lcom/appbrain/e/b;->c:Lcom/appbrain/e/b;

    if-ne v8, v9, :cond_5

    if-nez v3, :cond_5

    invoke-virtual {v7}, Lcom/appbrain/e/t;->j()Lcom/appbrain/e/u;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/appbrain/e/u;->a(Z)Lcom/appbrain/e/u;

    invoke-virtual {v3}, Lcom/appbrain/e/u;->a()Lcom/appbrain/e/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appbrain/e/t;->K()[B

    move-result-object v3

    invoke-static {v3}, Lcmn/f;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto/16 :goto_1

    :cond_5
    :try_start_3
    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_6
    move v2, v1

    goto/16 :goto_2
.end method
