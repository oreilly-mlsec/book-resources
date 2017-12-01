.class Lcom/m/s/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/m/u/ay;


# instance fields
.field final synthetic aa:Lcom/m/s/c$ab;


# direct methods
.method constructor <init>(Lcom/m/s/c$ab;)V
    .locals 0

    iput-object p1, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa(Z)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/m/s/c$ab;->aa(Lcom/m/s/c$ab;I)V

    sget-object v0, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v3}, Lcom/m/s/c$ab;->aa(Lcom/m/s/c$ab;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v0}, Lcom/m/s/c$ab;->ac(Lcom/m/s/c$ab;)Lcom/m/s/c;

    move-result-object v0

    iget-object v0, v0, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v3, Lcom/m/ac/aa;->aw:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iget-object v0, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v0}, Lcom/m/s/c$ab;->ab(Lcom/m/s/c$ab;)Lcom/m/u/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m/u/ba;->ad()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    const/16 v5, 0xc

    invoke-static {v3, v5}, Lcom/m/s/c$ab;->aa(Lcom/m/s/c$ab;I)V

    sget-object v3, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v6}, Lcom/m/s/c$ab;->aa(Lcom/m/s/c$ab;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v6}, Lcom/m/s/c$ab;->ab(Lcom/m/s/c$ab;)Lcom/m/u/ba;

    move-result-object v6

    invoke-virtual {v6}, Lcom/m/u/ba;->ac()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v3}, Lcom/m/s/c$ab;->ab(Lcom/m/s/c$ab;)Lcom/m/u/ba;

    move-result-object v3

    invoke-virtual {v3}, Lcom/m/u/ba;->ac()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/m/ac/aa;->ao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v3}, Lcom/m/s/c$ab;->ac(Lcom/m/s/c$ab;)Lcom/m/s/c;

    move-result-object v3

    iget-object v3, v3, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v5, Lcom/m/ac/aa;->aw:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    const/16 v5, 0xd

    invoke-static {v3, v5}, Lcom/m/s/c$ab;->aa(Lcom/m/s/c$ab;I)V

    sget-object v3, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v6}, Lcom/m/s/c$ab;->aa(Lcom/m/s/c$ab;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "     "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v3}, Lcom/m/s/c$ab;->ab(Lcom/m/s/c$ab;)Lcom/m/u/ba;

    move-result-object v3

    invoke-virtual {v3}, Lcom/m/u/ba;->ac()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v3, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v3}, Lcom/m/s/c$ab;->ac(Lcom/m/s/c$ab;)Lcom/m/s/c;

    move-result-object v3

    iget-object v3, v3, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v5, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v3}, Lcom/m/s/c$ab;->ac(Lcom/m/s/c$ab;)Lcom/m/s/c;

    move-result-object v3

    iget-object v3, v3, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v6, Lcom/m/ac/aa;->ax:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v3, v2

    :goto_0
    if-lt v3, v8, :cond_6

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/m/ac/aa;->ao:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v7}, Lcom/m/s/c$ab;->ac(Lcom/m/s/c$ab;)Lcom/m/s/c;

    move-result-object v7

    iget-object v7, v7, Lcom/m/s/c;->ac:Landroid/content/Context;

    sget-object v8, Lcom/m/ac/aa;->ax:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/m/ac/ab;->aa(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1, v6}, Lcom/m/u/af;->aa(Ljava/io/File;Ljava/io/File;)V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    sget-object v7, Lcom/m/u/o;->aa:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v5, Lcom/m/u/o;->ab:Ljava/lang/String;

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/m/u/at;->aa()V

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_2
    if-lt v3, v6, :cond_7

    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v4}, Lcom/m/s/c$ab;->ac(Lcom/m/s/c$ab;)Lcom/m/s/c;

    move-result-object v4

    iget-object v4, v4, Lcom/m/s/c;->ac:Landroid/content/Context;

    invoke-static {v4}, Lcom/m/ac/ab;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v5}, Lcom/m/s/c$ab;->ac(Lcom/m/s/c$ab;)Lcom/m/s/c;

    move-result-object v5

    iget-object v5, v5, Lcom/m/s/c;->ac:Landroid/content/Context;

    invoke-static {v5}, Lcom/m/ac/ab;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    move v0, v2

    :goto_3
    if-lt v0, v5, :cond_9

    :goto_4
    if-eqz v1, :cond_5

    invoke-static {v1, v4}, Lcom/m/u/af;->aa(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    :goto_5
    return-void

    :cond_6
    aget-object v9, v7, v3

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v6

    sget-object v6, Lcom/m/s/c;->aa:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    aget-object v7, v5, v3

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :try_start_2
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/m/ac/aa;->ao:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/m/s/ab;->aa:Lcom/m/s/c$ab;

    invoke-static {v7}, Lcom/m/s/c$ab;->ac(Lcom/m/s/c$ab;)Lcom/m/s/c;

    move-result-object v7

    iget-object v7, v7, Lcom/m/s/c;->ac:Landroid/content/Context;

    invoke-static {v7}, Lcom/m/ac/ab;->ab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    goto :goto_5
.end method
