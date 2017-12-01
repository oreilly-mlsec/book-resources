.class public Lcom/umeng/analytics/ReportPolicy$b;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lu/aly/al;

.field private b:Lu/aly/aa;


# direct methods
.method public constructor <init>(Lu/aly/aa;Lu/aly/al;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:Lu/aly/aa;

    .line 176
    iput-object p2, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/al;

    .line 177
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/al;

    invoke-virtual {v0}, Lu/aly/al;->c()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 6

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    iget-object v2, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/al;

    invoke-virtual {v2}, Lu/aly/al;->a()J

    move-result-wide v2

    .line 183
    iget-object v4, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:Lu/aly/aa;

    iget-wide v4, v4, Lu/aly/aa;->c:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
