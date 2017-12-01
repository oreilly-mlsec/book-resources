.class Lcom/appbrain/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcmn/Proguard$KeepMembers;


# instance fields
.field final a:Lcom/appbrain/a/o;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appbrain/a/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appbrain/a/l;->a:Lcom/appbrain/a/o;

    iput-object p1, p0, Lcom/appbrain/a/l;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/appbrain/a/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/l;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public click()V
    .locals 5

    iget-object v0, p0, Lcom/appbrain/a/l;->a:Lcom/appbrain/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/appbrain/a/l;->a:Lcom/appbrain/a/o;

    invoke-static {v0, v1}, Lcom/appbrain/a/k;->a(Landroid/content/Context;Lcom/appbrain/a/o;)V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ow_click"

    const-string v3, "ow_click"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcmn/a;->b(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    return-void
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/l;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/appbrain/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reportSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appbrain/a/m;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/appbrain/a/m;-><init>(Lcom/appbrain/a/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ow_imp"

    const-string v3, "ow_imp"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcmn/a;->b(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public trackClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/l;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/appbrain/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
