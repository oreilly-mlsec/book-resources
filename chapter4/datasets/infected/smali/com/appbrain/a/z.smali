.class final Lcom/appbrain/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appbrain/a/v;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/appbrain/a/b;


# direct methods
.method constructor <init>(Lcom/appbrain/a/v;Landroid/app/Activity;Lcom/appbrain/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/z;->a:Lcom/appbrain/a/v;

    iput-object p2, p0, Lcom/appbrain/a/z;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/appbrain/a/z;->c:Lcom/appbrain/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/z;->b:Landroid/app/Activity;

    sget-object v1, Lcom/appbrain/e/f;->f:Lcom/appbrain/e/f;

    iget-object v2, p0, Lcom/appbrain/a/z;->c:Lcom/appbrain/a/b;

    invoke-static {v0, v1, v2}, Lcom/appbrain/a/a;->a(Landroid/content/Context;Lcom/appbrain/e/f;Lcom/appbrain/a/b;)V

    return-void
.end method
