.class public Lcom/third/mu/update/Update;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUpdating()Z
    .locals 1

    sget-boolean v0, Lcom/third/mu/update/a;->a:Z

    return v0
.end method

.method public static setDebug()V
    .locals 0

    invoke-static {}, Lcom/third/mu/update/a;->b()V

    return-void
.end method

.method public static update(Landroid/content/Context;Lcom/third/mu/utils/UpdateCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/third/mu/update/a;->a(Landroid/content/Context;Lcom/third/mu/utils/UpdateCallback;)V

    return-void
.end method
