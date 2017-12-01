.class public Lu/aly/aa;
.super Ljava/lang/Object;
.source "StatTracer.java"

# interfaces
.implements Lu/aly/r;


# static fields
.field private static final h:Ljava/lang/String; = "successful_request"

.field private static final i:Ljava/lang/String; = "failed_requests "

.field private static final j:Ljava/lang/String; = "last_request_spent_ms"

.field private static final k:Ljava/lang/String; = "last_request_time"

.field private static final l:Ljava/lang/String; = "first_activate_time"

.field private static final m:Ljava/lang/String; = "last_req"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private final d:I

.field private e:I

.field private f:J

.field private g:J

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const v0, 0x36ee80

    iput v0, p0, Lu/aly/aa;->d:I

    .line 24
    iput-wide v1, p0, Lu/aly/aa;->f:J

    .line 25
    iput-wide v1, p0, Lu/aly/aa;->g:J

    .line 37
    invoke-direct {p0, p1}, Lu/aly/aa;->b(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lu/aly/ar;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    new-instance v1, Lu/aly/ar;

    invoke-direct {v1}, Lu/aly/ar;-><init>()V

    .line 119
    const-string v2, "failed_requests "

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lu/aly/ar;->c(I)Lu/aly/ar;

    .line 120
    const-string v2, "last_request_spent_ms"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lu/aly/ar;->d(I)Lu/aly/ar;

    .line 121
    const-string v2, "successful_request"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lu/aly/ar;->a(I)Lu/aly/ar;

    .line 123
    return-object v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aa;->n:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    const-string v1, "successful_request"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/aa;->a:I

    .line 45
    const-string v1, "failed_requests "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/aa;->b:I

    .line 47
    const-string v1, "last_request_spent_ms"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/aa;->e:I

    .line 48
    const-string v1, "last_request_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lu/aly/aa;->c:J

    .line 50
    const-string v1, "last_req"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aa;->f:J

    .line 51
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lu/aly/aa;->i()V

    .line 129
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lu/aly/aa;->j()V

    .line 134
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lu/aly/aa;->g()V

    .line 139
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lu/aly/aa;->h()V

    .line 144
    return-void
.end method

.method public e()I
    .locals 2

    .prologue
    const v0, 0x36ee80

    .line 54
    iget v1, p0, Lu/aly/aa;->e:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lu/aly/aa;->e:I

    goto :goto_0
.end method

.method public f()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget-wide v3, p0, Lu/aly/aa;->c:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    move v0, v1

    .line 59
    :goto_0
    iget-object v3, p0, Lu/aly/aa;->n:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/h;->g()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 61
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v3, v2

    .line 59
    goto :goto_1

    :cond_2
    move v1, v2

    .line 61
    goto :goto_2
.end method

.method public g()V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lu/aly/aa;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/aa;->a:I

    .line 67
    iget-wide v0, p0, Lu/aly/aa;->f:J

    iput-wide v0, p0, Lu/aly/aa;->c:J

    .line 68
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lu/aly/aa;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/aa;->b:I

    .line 72
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aa;->f:J

    .line 76
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/aa;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lu/aly/aa;->e:I

    .line 80
    return-void
.end method

.method public k()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lu/aly/aa;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lu/aly/aa;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lu/aly/aa;->b:I

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lu/aly/aa;->e:I

    .line 87
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lu/aly/aa;->c:J

    .line 88
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_req"

    iget-wide v2, p0, Lu/aly/aa;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method public l()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lu/aly/aa;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method public m()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    iget-wide v0, p0, Lu/aly/aa;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lu/aly/aa;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aa;->g:J

    .line 103
    :cond_0
    iget-wide v0, p0, Lu/aly/aa;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lu/aly/aa;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lu/aly/aa;->g:J

    goto :goto_0
.end method

.method public o()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lu/aly/aa;->f:J

    return-wide v0
.end method
