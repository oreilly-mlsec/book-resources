.class public Lcom/third/mx/update/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/io/File;

.field public static e:Ljava/io/File;

.field public static f:Z

.field public static g:Landroid/content/SharedPreferences;

.field private static h:Lcom/third/mx/utils/UpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/third/mx/update/a;->a:Ljava/lang/String;

    const-string v0, "jc"

    sput-object v0, Lcom/third/mx/update/a;->b:Ljava/lang/String;

    const-string v0, "fx.jar"

    sput-object v0, Lcom/third/mx/update/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/third/mx/update/a;->f:Z

    sput-object v1, Lcom/third/mx/update/a;->h:Lcom/third/mx/utils/UpdateCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/third/mx/update/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    sget-object v0, Lcom/third/mx/update/a;->e:Ljava/io/File;

    if-nez v0, :cond_0

    sget-object v0, Lcom/third/mx/update/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/third/mx/update/a;->e:Ljava/io/File;

    :cond_0
    sget-object v0, Lcom/third/mx/update/a;->e:Ljava/io/File;

    return-object v0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/third/mx/update/a;->f:Z

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/third/mx/update/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/third/mx/utils/l;->f(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/third/mx/utils/UpdateCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/third/mx/utils/i;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/third/mx/update/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p1, Lcom/third/mx/update/a;->h:Lcom/third/mx/utils/UpdateCallback;

    invoke-static {}, Lcom/third/mx/update/a;->a()V

    new-instance v0, Lcom/third/mx/update/b;

    invoke-direct {v0, p0}, Lcom/third/mx/update/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/third/mx/update/b;->start()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/third/mx/update/a;->h:Lcom/third/mx/utils/UpdateCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/third/mx/update/a;->h:Lcom/third/mx/utils/UpdateCallback;

    invoke-interface {v0}, Lcom/third/mx/utils/UpdateCallback;->updateSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/third/mx/update/a;->f:Z

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/third/mx/update/a;->h:Lcom/third/mx/utils/UpdateCallback;

    invoke-interface {v0}, Lcom/third/mx/utils/UpdateCallback;->updateFail()V
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

    invoke-static {p0}, Lcom/third/mx/utils/i;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/third/mx/utils/e;->a:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/third/mx/utils/e;

    invoke-direct {v1, p0, p1}, Lcom/third/mx/utils/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/third/mx/utils/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/third/mx/update/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    sget-object v0, Lcom/third/mx/update/a;->d:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/third/mx/update/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "u"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/third/mx/update/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/third/mx/update/a;->d:Ljava/io/File;

    :cond_0
    sget-object v0, Lcom/third/mx/update/a;->d:Ljava/io/File;

    return-object v0
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lcom/third/mx/utils/a;->a()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ".jar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    const-string v1, "1000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-1000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/third/mx/utils/a;->b()Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/third/mx/update/a;->f:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/third/mx/utils/l;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/third/mx/update/a;->g:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/third/mx/update/a;->g:Landroid/content/SharedPreferences;

    const-string v2, "mxsdkupdate"

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
