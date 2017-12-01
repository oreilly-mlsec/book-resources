.class public final Lcom/appbrain/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appbrain/RemoteSettings;


# static fields
.field private static b:Lcom/appbrain/RemoteSettings;

.field private static c:Lcom/appbrain/RemoteSettings;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/appbrain/a/n;->b:Lcom/appbrain/RemoteSettings;

    sput-object v0, Lcom/appbrain/a/n;->c:Lcom/appbrain/RemoteSettings;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/n;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Lcom/appbrain/RemoteSettings;
    .locals 3

    const-class v1, Lcom/appbrain/a/n;

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/appbrain/a/n;->b:Lcom/appbrain/RemoteSettings;

    :goto_0
    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    const-string v0, "ab_pref_int"

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v0, Lcom/appbrain/a/n;

    invoke-direct {v0, v2}, Lcom/appbrain/a/n;-><init>(Landroid/content/SharedPreferences;)V

    if-eqz p1, :cond_3

    sput-object v0, Lcom/appbrain/a/n;->b:Lcom/appbrain/RemoteSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_2
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/appbrain/a/n;->c:Lcom/appbrain/RemoteSettings;

    goto :goto_0

    :cond_2
    const-string v0, "ab_pref_ext"

    goto :goto_1

    :cond_3
    sput-object v0, Lcom/appbrain/a/n;->c:Lcom/appbrain/RemoteSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/appbrain/e/l;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/appbrain/e/l;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/e/l;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/appbrain/e/l;->e()I

    move-result v0

    if-lez v0, :cond_3

    :cond_1
    const-string v0, "ab_pref_ext"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appbrain/e/l;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/appbrain/e/l;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    invoke-virtual {p1}, Lcom/appbrain/e/l;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/appbrain/a/n;->a(Ljava/util/List;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_3
    invoke-virtual {p1}, Lcom/appbrain/e/l;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/appbrain/e/l;->g()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/appbrain/e/l;->c()I

    move-result v0

    if-lez v0, :cond_7

    :cond_5
    const-string v0, "ab_pref_int"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appbrain/e/l;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/appbrain/e/l;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_6
    invoke-virtual {p1}, Lcom/appbrain/e/l;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/appbrain/a/n;->a(Ljava/util/List;Landroid/content/SharedPreferences$Editor;)V

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_7
    return-void

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/e/n;

    invoke-virtual {v0}, Lcom/appbrain/e/n;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/appbrain/e/n;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/appbrain/e/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/appbrain/e/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appbrain/e/n;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/a/n;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/n;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
