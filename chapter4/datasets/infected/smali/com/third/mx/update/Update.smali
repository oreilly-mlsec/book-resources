.class public Lcom/third/mx/update/Update;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUpdating()Z
    .locals 1

    sget-boolean v0, Lcom/third/mx/update/a;->f:Z

    return v0
.end method

.method public static setDebug()V
    .locals 0

    invoke-static {}, Lcom/third/mx/update/a;->b()V

    return-void
.end method

.method public static update(Landroid/content/Context;Lcom/third/mx/utils/UpdateCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/third/mx/update/a;->a(Landroid/content/Context;Lcom/third/mx/utils/UpdateCallback;)V

    return-void
.end method
