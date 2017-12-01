.class public Lcom/m/u/bb;
.super Ljava/lang/Object;


# static fields
.field public static final aa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->ec:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/bb;->aa:Ljava/lang/String;

    const-class v0, Lcom/m/ab/af;

    invoke-static {v0}, Lcom/m/ab/as;->aa(Ljava/lang/Class;)Z

    const-class v0, Lcom/m/ab/ag;

    invoke-static {v0}, Lcom/m/ab/as;->aa(Ljava/lang/Class;)Z

    return-void
.end method

.method public static aa(Landroid/content/Context;Lcom/m/ab/aa;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/m/ac/aa;->ap:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "devEvent"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_1

    sget-object v0, Lcom/m/u/bb;->aa:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/m/u/ag;->ac(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/m/u/bb;->aa:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/m/ab/aa;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/m/u/ag;->ac(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/m/ab/af;

    invoke-direct {v0}, Lcom/m/ab/af;-><init>()V

    invoke-static {p0}, Lcom/m/u/at;->aa(Landroid/content/Context;)Lcom/m/ab/aw;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/m/ab/af;->aa(Lcom/m/ab/aw;)V

    invoke-virtual {v0, v1}, Lcom/m/ab/af;->aa(Ljava/util/ArrayList;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "devEvent"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/m/ab/an;->aa()Lcom/m/ab/an;

    move-result-object v3

    invoke-static {}, Lcom/m/ac/ac;->ad()Lcom/m/ac/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/m/ac/ac;->ab()Lcom/m/ab/at;

    move-result-object v4

    new-instance v5, Lcom/m/u/bc;

    invoke-direct {v5, v1, v2}, Lcom/m/u/bc;-><init>(Ljava/util/ArrayList;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4, v0, v5}, Lcom/m/ab/an;->aa(Lcom/m/ab/at;Ljava/lang/Object;Lcom/m/ab/au;)V

    :cond_0
    return-void

    :cond_1
    aget-object v4, v3, v0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/m/ab/aa;

    invoke-direct {v5}, Lcom/m/ab/aa;-><init>()V

    invoke-virtual {v5, v4}, Lcom/m/ab/aa;->aa(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0/"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/m/ab/aa;->aa(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/m/ab/aa;->ab(I)V

    const/16 v4, 0x10

    invoke-virtual {v5, v4}, Lcom/m/ab/aa;->aa(S)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method
