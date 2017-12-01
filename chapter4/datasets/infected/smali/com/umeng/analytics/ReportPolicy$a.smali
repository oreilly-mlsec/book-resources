.class public Lcom/umeng/analytics/ReportPolicy$a;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private b:Lu/aly/aa;


# direct methods
.method public constructor <init>(Lu/aly/aa;)V
    .locals 2

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 250
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$a;->a:J

    .line 254
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$a;->b:Lu/aly/aa;

    .line 255
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    .prologue
    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/analytics/ReportPolicy$a;->b:Lu/aly/aa;

    iget-wide v2, v2, Lu/aly/aa;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
