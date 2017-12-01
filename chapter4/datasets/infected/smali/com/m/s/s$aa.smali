.class public Lcom/m/s/s$aa;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m/s/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aa:Lcom/m/s/s;


# direct methods
.method public constructor <init>(Lcom/m/s/s;)V
    .locals 0

    iput-object p1, p0, Lcom/m/s/s$aa;->aa:Lcom/m/s/s;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs aa([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/m/s/s$aa;->aa:Lcom/m/s/s;

    iget-object v0, v0, Lcom/m/s/s;->ac:Landroid/content/Context;

    invoke-static {v0}, Lcom/m/u/aa;->aa(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/m/s/s$aa;->aa:Lcom/m/s/s;

    iget-object v0, v0, Lcom/m/s/s;->ac:Landroid/content/Context;

    invoke-static {v0}, Lcom/m/s/c;->aa(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/m/s/s$aa;->aa:Lcom/m/s/s;

    invoke-static {v0}, Lcom/m/s/s;->aa(Lcom/m/s/s;)V

    iget-object v0, p0, Lcom/m/s/s$aa;->aa:Lcom/m/s/s;

    invoke-static {v0}, Lcom/m/s/s;->ab(Lcom/m/s/s;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/m/s/s$aa;->aa:Lcom/m/s/s;

    invoke-static {v0}, Lcom/m/s/s;->ac(Lcom/m/s/s;)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/m/s/s$aa;->aa([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
