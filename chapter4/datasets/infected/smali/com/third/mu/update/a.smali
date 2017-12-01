.class public Lcom/third/mu/update/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Lcom/third/mu/utils/UpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/third/mu/update/a;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/third/mu/update/a;->b:Lcom/third/mu/utils/UpdateCallback;

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/third/mu/update/a;->a:Z

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/third/mu/update/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/third/mu/utils/UpdateCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/third/mu/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/third/mu/update/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p1, Lcom/third/mu/update/a;->b:Lcom/third/mu/utils/UpdateCallback;

    invoke-static {}, Lcom/third/mu/update/a;->a()V

    new-instance v0, Lcom/third/mu/update/b;

    invoke-direct {v0, p0}, Lcom/third/mu/update/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/third/mu/update/b;->start()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/third/mu/update/a;->b:Lcom/third/mu/utils/UpdateCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/third/mu/update/a;->b:Lcom/third/mu/utils/UpdateCallback;

    invoke-interface {v0}, Lcom/third/mu/utils/UpdateCallback;->updateSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/third/mu/update/a;->a:Z

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/third/mu/update/a;->b:Lcom/third/mu/utils/UpdateCallback;

    invoke-interface {v0}, Lcom/third/mu/utils/UpdateCallback;->updateFail()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/third/mu/utils/g;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/third/mu/utils/e;->a:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/third/mu/utils/e;

    invoke-direct {v1, p0, p1}, Lcom/third/mu/utils/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/third/mu/utils/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lcom/third/mu/utils/b;->a()V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    sget v1, Lcom/third/mu/utils/b;->e:I

    sget v2, Lcom/third/mu/utils/b;->c:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/third/mu/update/a;->a:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/third/mu/utils/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "musdkupdate"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/third/mu/utils/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "musdkupdate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/third/mu/utils/b;->b()Z

    move-result v0

    return v0
.end method
