.class final Lcom/appbrain/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appbrain/a/c;


# direct methods
.method constructor <init>(Lcom/appbrain/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/d;->a:Lcom/appbrain/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/d;->a:Lcom/appbrain/a/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appbrain/a/c;->a:Z

    iget-object v0, p0, Lcom/appbrain/a/d;->a:Lcom/appbrain/a/c;

    iget-object v1, v0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/appbrain/a/d;->a:Lcom/appbrain/a/c;

    iget-boolean v0, v0, Lcom/appbrain/a/c;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appbrain/e/f;->d:Lcom/appbrain/e/f;

    :goto_0
    iget-object v2, p0, Lcom/appbrain/a/d;->a:Lcom/appbrain/a/c;

    iget-object v2, v2, Lcom/appbrain/a/c;->d:Lcom/appbrain/a/b;

    invoke-static {v1, v0, v2}, Lcom/appbrain/a/a;->a(Landroid/content/Context;Lcom/appbrain/e/f;Lcom/appbrain/a/b;)V

    iget-object v0, p0, Lcom/appbrain/a/d;->a:Lcom/appbrain/a/c;

    iget-object v0, v0, Lcom/appbrain/a/c;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    sget-object v0, Lcom/appbrain/e/f;->c:Lcom/appbrain/e/f;

    goto :goto_0
.end method
