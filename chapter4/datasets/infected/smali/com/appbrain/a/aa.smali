.class final Lcom/appbrain/a/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appbrain/a/v;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appbrain/a/v;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/aa;->a:Lcom/appbrain/a/v;

    iput-object p2, p0, Lcom/appbrain/a/aa;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/aa;->b:Landroid/app/Activity;

    sget-object v1, Lcom/appbrain/e/f;->e:Lcom/appbrain/e/f;

    invoke-static {v0, v1}, Lcom/appbrain/a/a;->a(Landroid/content/Context;Lcom/appbrain/e/f;)V

    return-void
.end method
