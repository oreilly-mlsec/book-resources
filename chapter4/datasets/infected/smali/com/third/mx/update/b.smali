.class Lcom/third/mx/update/b;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/third/mx/update/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, ""

    :try_start_0
    new-instance v1, Lcom/third/mx/utils/h;

    iget-object v2, p0, Lcom/third/mx/update/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/third/mx/utils/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/third/mx/utils/h;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/third/mx/utils/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/third/mx/utils/d;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/third/mx/update/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/third/mx/utils/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/third/mx/utils/d;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "FXOUT_Log"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "third:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sget-object v2, Lcom/third/mx/update/a;->g:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mxsdkupdate"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/third/mx/update/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/third/mx/update/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/third/mx/update/b;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/third/mx/update/a;->a(Landroid/content/Context;Z)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v1, Lcom/third/mx/utils/h;

    iget-object v2, p0, Lcom/third/mx/update/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/third/mx/utils/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/third/mx/utils/h;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lcom/third/mx/utils/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/third/mx/utils/d;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/third/mx/update/b;->a:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/third/mx/update/a;->a(Landroid/content/Context;Z)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/third/mx/update/b;->a:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/third/mx/update/a;->a(Landroid/content/Context;Z)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/third/mx/update/b;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/third/mx/update/a;->a(Landroid/content/Context;Z)V

    goto :goto_1
.end method
