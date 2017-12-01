.class public Lcom/third/mx/utils/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/third/mx/utils/a;->f:I

    sget v1, Lcom/third/mx/utils/a;->b:I

    if-ne v0, v1, :cond_0

    const-string v0, "FXOUT_Log"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
