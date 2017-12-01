.class public abstract Lcom/appbrain/a/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "last_check_"

    sput-object v0, Lcom/appbrain/a/s;->a:Ljava/lang/String;

    const-string v0, "last_err_"

    sput-object v0, Lcom/appbrain/a/s;->b:Ljava/lang/String;

    const-string v0, "errorcount_"

    sput-object v0, Lcom/appbrain/a/s;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/appbrain/a/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/appbrain/a/s;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/s;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/appbrain/a/s;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/s;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/appbrain/a/s;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/s;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/appbrain/a/s;->d:Ljava/lang/String;

    iput-wide p2, p0, Lcom/appbrain/a/s;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/s;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method private a(JJJLandroid/content/SharedPreferences;)V
    .locals 4

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-interface {p7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/s;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/appbrain/a/s;->h:Ljava/lang/String;

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_0
    cmp-long v1, p5, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/appbrain/a/s;->i:Ljava/lang/String;

    invoke-interface {v0, v1, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/appbrain/a/s;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/appbrain/a/s;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/appbrain/a/s;JJJLandroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/appbrain/a/s;->a(JJJLandroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic b(Lcom/appbrain/a/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/s;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/appbrain/a/s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "update_check"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()V
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/appbrain/a/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/appbrain/a/s;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v0, p0, Lcom/appbrain/a/s;->g:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/appbrain/a/s;->h:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-interface {v5, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v2, p0, Lcom/appbrain/a/s;->i:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-interface {v5, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_0

    iget-wide v10, p0, Lcom/appbrain/a/s;->e:J

    add-long/2addr v0, v10

    long-to-double v0, v0

    long-to-double v6, v6

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide/16 v12, 0xc

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v10

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Lcom/appbrain/a/t;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/appbrain/a/t;-><init>(Lcom/appbrain/a/s;Landroid/content/Context;JLandroid/content/SharedPreferences;)V

    iget-boolean v1, p0, Lcom/appbrain/a/s;->j:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/appbrain/a/s;->e:J

    add-long/2addr v0, v8

    cmp-long v0, v6, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/appbrain/a/s;->g:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v6, 0x36ee80

    add-long/2addr v6, v3

    cmp-long v0, v0, v6

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/appbrain/a/s;->h:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v6, 0x36ee80

    add-long v2, v3, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    :cond_5
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v6, p0

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/appbrain/a/s;->a(JJJLandroid/content/SharedPreferences;)V

    :cond_6
    iget-object v0, p0, Lcom/appbrain/a/s;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method
