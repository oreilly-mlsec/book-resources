.class public Lcom/st/m/e/S;
.super Lcom/st/m/e/I;


# static fields
.field private static final ef:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/st/m/e/S;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/st/m/e/S;->ef:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/st/m/e/I;-><init>(ILandroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private a(Lcom/st/m/c/gt;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/st/m/c/gt;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/st/m/b/b;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    sget-object v2, Lcom/st/m/da/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/st/m/c/gt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/st/m/da/b;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/st/m/c/gt;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/st/m/c/gt;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/st/m/u/n;->da(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/st/m/b/SB;->a(Landroid/content/Context;)Lcom/st/m/b/SB;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/st/m/b/SB;->a(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/st/m/u/hd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/st/m/b/SB;->a(Landroid/content/Context;)Lcom/st/m/b/SB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/st/m/b/SB;->da()Ljava/util/ArrayList;

    move-result-object v4

    sget-object v0, Lcom/st/m/u/hd;->da:Ljava/lang/String;

    invoke-static {v0}, Lcom/st/m/u/hd;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/b/b;

    new-instance v4, Lcom/st/m/b/a;

    invoke-direct {v4}, Lcom/st/m/b/a;-><init>()V

    invoke-virtual {v0}, Lcom/st/m/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/st/m/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/st/m/b/b;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/st/m/b/a;->a(I)V

    invoke-virtual {v0}, Lcom/st/m/b/b;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/st/m/b/a;->b(I)V

    invoke-virtual {v0}, Lcom/st/m/b/b;->da()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/st/m/b/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/st/m/b/a;->c(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "originalApp "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/b/a;

    invoke-virtual {v0}, Lcom/st/m/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/st/m/u/ef;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/st/m/u/hd;->a(Landroid/content/Context;)Lcom/st/m/u/hd;

    move-result-object v2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/b/a;

    invoke-virtual {v2, v0}, Lcom/st/m/u/hd;->a(Lcom/st/m/b/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v1

    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/b/a;

    iget-object v2, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/st/m/u/hd;->a(Landroid/content/Context;)Lcom/st/m/u/hd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/st/m/u/hd;->a(Lcom/st/m/b/a;)V

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/b/a;

    invoke-virtual {v0}, Lcom/st/m/b/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/b/a;

    invoke-virtual {v0}, Lcom/st/m/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/st/m/e/S;->ef:Ljava/lang/String;

    const-string v1, "no sdcard "

    invoke-static {v0, v1}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private a(Lcom/st/m/c/n;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/st/m/c/n;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/st/m/b/b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/st/m/c/f;

    invoke-direct {v0}, Lcom/st/m/c/f;-><init>()V

    iget-object v1, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/st/m/u/j;->a(Landroid/content/Context;)Lcom/st/m/c/qr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/st/m/c/f;->a(Lcom/st/m/c/qr;)V

    invoke-virtual {v0, p2}, Lcom/st/m/c/f;->a(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/st/m/u/SBD;->a(Landroid/content/Context;)Lcom/st/m/u/SBD;

    move-result-object v1

    sget-object v2, Lcom/st/m/da/b;->da:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/st/m/u/SBD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/st/m/c/f;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/st/m/e/S;->ef:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "req:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/st/m/c/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/st/m/c/hd;->a()Lcom/st/m/c/hd;

    move-result-object v1

    new-instance v2, Lcom/st/m/e/b;

    invoke-direct {v2, p0, p2}, Lcom/st/m/e/b;-><init>(Lcom/st/m/e/S;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/st/m/c/hd;->a(Lcom/st/m/c/n;Ljava/lang/Object;Lcom/st/m/c/o;)V

    return-void
.end method

.method private a(Lcom/st/m/c/n;Z)V
    .locals 7

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/st/m/e/S;->c()Ljava/util/ArrayList;

    move-result-object v4

    sget-object v0, Lcom/st/m/u/hd;->da:Ljava/lang/String;

    invoke-static {v0}, Lcom/st/m/u/hd;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local app size :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/st/m/u/ef;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/st/m/b/SB;->a(Landroid/content/Context;)Lcom/st/m/b/SB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/st/m/b/SB;->b()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    :cond_2
    const-string v0, "send dataInfo size is 0 and return "

    invoke-static {v0}, Lcom/st/m/u/ef;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sdcard log size is 0 get local app :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/st/m/b/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/st/m/u/ef;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/st/m/b/SB;->a(Landroid/content/Context;)Lcom/st/m/b/SB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/st/m/b/SB;->a(Lcom/st/m/b/a;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v2

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sdcard log size is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/st/m/u/ef;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sdcard log not in db local app :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/st/m/b/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/st/m/u/ef;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/st/m/b/SB;->a(Landroid/content/Context;)Lcom/st/m/b/SB;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/st/m/b/SB;->a(Lcom/st/m/b/a;)V

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_7

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/b/a;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x18

    if-le v0, v1, :cond_d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/lit8 v0, v3, 0x18

    if-nez v0, :cond_b

    div-int/lit8 v0, v3, 0x18

    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-gt v1, v0, :cond_3

    if-eq v1, v0, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    mul-int/lit8 v5, v5, 0x18

    mul-int/lit8 v6, v1, 0x18

    invoke-virtual {v2, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v4}, Lcom/st/m/e/S;->a(Lcom/st/m/c/n;Ljava/util/ArrayList;)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/b/a;

    new-instance v4, Lcom/st/m/b/b;

    invoke-direct {v4}, Lcom/st/m/b/b;-><init>()V

    invoke-virtual {v0}, Lcom/st/m/b/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/st/m/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/st/m/b/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/st/m/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/st/m/b/a;->da()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/st/m/b/b;->b(I)V

    invoke-virtual {v0}, Lcom/st/m/b/a;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/st/m/b/b;->a(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "send dataInfo size is: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " dataInfo: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/st/m/b/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/st/m/u/ef;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    div-int/lit8 v0, v3, 0x18

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    mul-int/lit8 v5, v5, 0x18

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v4}, Lcom/st/m/e/S;->a(Lcom/st/m/c/n;Ljava/util/ArrayList;)V

    goto :goto_8

    :cond_d
    invoke-direct {p0, p1, v2}, Lcom/st/m/e/S;->a(Lcom/st/m/c/n;Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/st/m/e/S;Lcom/st/m/c/gt;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/st/m/e/S;->a(Lcom/st/m/c/gt;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/st/m/e/S;->ef:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/st/m/m/b;->getCurContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private c()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/st/m/b/a;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/st/m/m/b;->getCurContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_0

    new-instance v3, Lcom/st/m/b/a;

    invoke-direct {v3}, Lcom/st/m/b/a;-><init>()V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/st/m/b/a;->b(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/st/m/e/S;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/st/m/b/a;->a(Ljava/lang/String;)V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v0}, Lcom/st/m/b/a;->a(I)V

    invoke-virtual {v3, v5}, Lcom/st/m/b/a;->b(I)V

    invoke-virtual {v3, v5}, Lcom/st/m/b/a;->c(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "get local app :"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/st/m/b/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/st/m/u/ef;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;II)V
    .locals 0

    invoke-virtual {p0}, Lcom/st/m/e/S;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/st/m/c/n;

    invoke-direct {v0, p1}, Lcom/st/m/c/n;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/st/m/e/S;->a:Landroid/content/Context;

    sget-object v2, Lcom/st/m/da/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/st/m/da/a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/st/m/da/a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0, v0, v4}, Lcom/st/m/e/S;->a(Lcom/st/m/c/n;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/st/m/e/S;->a(Lcom/st/m/c/n;Z)V

    goto :goto_0
.end method
