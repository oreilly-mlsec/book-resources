.class public final Lcom/appbrain/a/ac;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:J

.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "promoted_data"

    sput-object v0, Lcom/appbrain/a/ac;->b:Ljava/lang/String;

    const-string v0, "pref_current_data"

    sput-object v0, Lcom/appbrain/a/ac;->c:Ljava/lang/String;

    const-string v0, "pref_last_check"

    sput-object v0, Lcom/appbrain/a/ac;->d:Ljava/lang/String;

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/appbrain/a/ac;->e:J

    const-string v0, "pref_tv"

    sput-object v0, Lcom/appbrain/a/ac;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/appbrain/a/ac;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/appbrain/a/ac;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Lcom/appbrain/a/ae;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v1}, Lcom/appbrain/c/e;->a(Ljava/io/OutputStream;)Lcom/appbrain/c/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appbrain/a/ae;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/appbrain/c/e;->b(I)V

    invoke-virtual {p1, p0}, Lcom/appbrain/a/ae;->a(Ljava/util/List;)[I

    move-result-object v3

    array-length v0, v3

    invoke-virtual {v2, v0}, Lcom/appbrain/c/e;->b(I)V

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    invoke-virtual {v2}, Lcom/appbrain/c/e;->a()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcmn/f;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget v5, v3, v0

    div-int/lit8 v5, v5, 0xa

    invoke-virtual {v2, v5}, Lcom/appbrain/c/e;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 10

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/appbrain/a/v;->a()Lcom/appbrain/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/v;->e()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/appbrain/a/ac;->d:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/appbrain/a/ac;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcmn/a;->a()Lcmn/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcmn/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    sget-wide v8, Lcom/appbrain/a/ac;->e:J

    add-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    sget-object v0, Lcom/appbrain/a/ac;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/appbrain/a/ad;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/appbrain/a/ad;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;J)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appbrain/a/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appbrain/a/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appbrain/a/ac;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/appbrain/a/ac;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
