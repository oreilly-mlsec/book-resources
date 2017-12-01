.class public Lcom/ose/a/Entry;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static in(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ose/a/i;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/ose/a/m;->getInstance(Landroid/content/Context;)Lcom/ose/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ose/a/m;->initAD()V

    return-void
.end method
