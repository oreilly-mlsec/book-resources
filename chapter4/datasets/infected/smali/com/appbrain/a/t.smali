.class final Lcom/appbrain/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appbrain/a/s;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:J

.field private final synthetic d:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/appbrain/a/s;Landroid/content/Context;JLandroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/t;->a:Lcom/appbrain/a/s;

    iput-object p2, p0, Lcom/appbrain/a/t;->b:Landroid/content/Context;

    iput-wide p3, p0, Lcom/appbrain/a/t;->c:J

    iput-object p5, p0, Lcom/appbrain/a/t;->d:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-wide/16 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/t;->a:Lcom/appbrain/a/s;

    iget-object v1, p0, Lcom/appbrain/a/t;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/appbrain/a/s;->a()V

    iget-object v0, p0, Lcom/appbrain/a/t;->a:Lcom/appbrain/a/s;

    iget-wide v1, p0, Lcom/appbrain/a/t;->c:J

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/appbrain/a/t;->d:Landroid/content/SharedPreferences;

    invoke-static/range {v0 .. v7}, Lcom/appbrain/a/s;->a(Lcom/appbrain/a/s;JJJLandroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/appbrain/a/t;->a:Lcom/appbrain/a/s;

    invoke-static {v0}, Lcom/appbrain/a/s;->c(Lcom/appbrain/a/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/appbrain/a/t;->a:Lcom/appbrain/a/s;

    iget-object v1, p0, Lcom/appbrain/a/t;->d:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/appbrain/a/t;->a:Lcom/appbrain/a/s;

    invoke-static {v2}, Lcom/appbrain/a/s;->a(Lcom/appbrain/a/s;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/appbrain/a/t;->c:J

    iget-object v5, p0, Lcom/appbrain/a/t;->d:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/appbrain/a/t;->a:Lcom/appbrain/a/s;

    invoke-static {v6}, Lcom/appbrain/a/s;->b(Lcom/appbrain/a/s;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/appbrain/a/t;->d:Landroid/content/SharedPreferences;

    invoke-static/range {v0 .. v7}, Lcom/appbrain/a/s;->a(Lcom/appbrain/a/s;JJJLandroid/content/SharedPreferences;)V

    goto :goto_0
.end method
