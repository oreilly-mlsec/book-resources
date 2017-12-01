.class public Lu/aly/z;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "session_start_time"

.field private static final b:Ljava/lang/String; = "session_end_time"

.field private static final c:Ljava/lang/String; = "session_id"

.field private static final f:Ljava/lang/String; = "activities"

.field private static g:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lu/aly/z;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "a_start_time"

    iput-object v0, p0, Lu/aly/z;->d:Ljava/lang/String;

    .line 31
    const-string v0, "a_end_time"

    iput-object v0, p0, Lu/aly/z;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 177
    invoke-static {p1}, Lu/aly/l;->a(Landroid/content/Context;)Lu/aly/l;

    move-result-object v1

    .line 178
    invoke-virtual {p0, p1}, Lu/aly/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p0, p1}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/aj;

    move-result-object v0

    .line 182
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 184
    const-string v4, "session_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v4, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v4, "session_end_time"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v4, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v4, "a_end_time"

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v1, v0}, Lu/aly/l;->a(Lu/aly/q;)V

    .line 198
    :goto_0
    return-object v2

    .line 195
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lu/aly/aj;

    invoke-virtual {v1, v0}, Lu/aly/l;->a(Lu/aly/q;)V

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    const-string v1, "session_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v1, "session_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v1, "a_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v1, "a_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method private b(Landroid/content/SharedPreferences;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    .line 160
    const-string v1, "a_start_time"

    invoke-interface {p1, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 161
    const-string v3, "a_end_time"

    invoke-interface {p1, v3, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 165
    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    sub-long v1, v5, v1

    sget-wide v7, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_1

    .line 166
    const-string v1, "MobclickAgent"

    const-string v2, "onResume called before onPause"

    invoke-static {v1, v2}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    sub-long v1, v5, v3

    sget-wide v3, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 171
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    sget-object v0, Lu/aly/z;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 254
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/z;->g:Ljava/lang/String;

    .line 256
    :cond_0
    sget-object v0, Lu/aly/z;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lu/aly/aj;
    .locals 13

    .prologue
    .line 37
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 39
    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-string v0, "session_start_time"

    const-wide/16 v3, 0x0

    invoke-interface {v8, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 45
    const-string v0, "session_end_time"

    const-wide/16 v5, 0x0

    invoke-interface {v8, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 46
    const-wide/16 v0, 0x0

    .line 48
    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    if-eqz v7, :cond_1

    .line 49
    sub-long v0, v5, v3

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0x5265c00

    cmp-long v7, v9, v11

    if-lez v7, :cond_1

    .line 51
    const-wide/16 v0, 0x0

    .line 55
    :cond_1
    new-instance v7, Lu/aly/aj;

    invoke-direct {v7}, Lu/aly/aj;-><init>()V

    .line 57
    invoke-virtual {v7, v2}, Lu/aly/aj;->a(Ljava/lang/String;)Lu/aly/bn;

    .line 58
    invoke-virtual {v7, v3, v4}, Lu/aly/aj;->a(J)Lu/aly/bn;

    .line 59
    invoke-virtual {v7, v5, v6}, Lu/aly/aj;->b(J)Lu/aly/bn;

    .line 60
    invoke-virtual {v7, v0, v1}, Lu/aly/aj;->c(J)Lu/aly/bn;

    .line 62
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    new-instance v0, Lu/aly/bg;

    const/4 v1, 0x0

    aget-wide v1, v3, v1

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lu/aly/bg;-><init>(DDJ)V

    .line 65
    invoke-virtual {v7}, Lu/aly/aj;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    invoke-virtual {v7, v0}, Lu/aly/aj;->a(Lu/aly/bg;)V

    .line 72
    :cond_2
    :goto_1
    invoke-static {p1}, Lu/aly/ac;->a(Landroid/content/Context;)Lu/aly/bo;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v7, v0}, Lu/aly/aj;->a(Lu/aly/bo;)Lu/aly/bn;

    .line 77
    :cond_3
    invoke-static {v8}, Lu/aly/ad;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 80
    invoke-virtual {v7, v0}, Lu/aly/aj;->a(Ljava/util/List;)Lu/aly/bn;

    .line 83
    :cond_4
    invoke-direct {p0, v8}, Lu/aly/z;->a(Landroid/content/SharedPreferences;)V

    move-object v0, v7

    .line 85
    goto :goto_0

    .line 68
    :cond_5
    const/4 v1, 0x1

    new-array v1, v1, [Lu/aly/bg;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lu/aly/aj;->b(Ljava/util/List;)Lu/aly/bn;

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 102
    invoke-static {p1}, Lu/aly/bs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 106
    if-nez v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Appkey is null or empty, Please check AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/z;->g:Ljava/lang/String;

    .line 113
    sget-object v0, Lu/aly/z;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 118
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0, v0}, Lu/aly/z;->b(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-direct {p0, p1, v0}, Lu/aly/z;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start new session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/aly/bt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    const-string v1, "session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    const-string v2, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v2, "a_end_time"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    const-string v0, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extend current session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/bt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 137
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v1, "a_start_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 144
    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v1, :cond_1

    .line 145
    const-string v0, "MobclickAgent"

    const-string v1, "onPause called before onResume"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    const-string v3, "a_start_time"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v3, "a_end_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v3, "session_end_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public e(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 202
    const/4 v0, 0x0

    .line 204
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 205
    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    const-string v2, "session_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    if-eqz v2, :cond_0

    .line 214
    const-string v2, "a_start_time"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 215
    const-string v4, "a_end_time"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 217
    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 218
    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, p1}, Lu/aly/z;->d(Landroid/content/Context;)V

    .line 223
    :cond_2
    invoke-static {p1}, Lu/aly/l;->a(Landroid/content/Context;)Lu/aly/l;

    move-result-object v1

    .line 224
    invoke-virtual {p0, p1}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/aj;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v1, v2}, Lu/aly/l;->b(Lu/aly/q;)V

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 233
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Lu/aly/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    const-string v2, "session_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v2, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v2, "session_end_time"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v2, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v2, "a_end_time"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    const-string v0, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restart session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/bt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
