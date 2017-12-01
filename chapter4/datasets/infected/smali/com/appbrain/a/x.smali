.class final Lcom/appbrain/a/x;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/appbrain/a/w;


# direct methods
.method constructor <init>(Lcom/appbrain/a/w;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/x;->a:Lcom/appbrain/a/w;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/x;->a:Lcom/appbrain/a/w;

    invoke-static {v0}, Lcom/appbrain/a/w;->a(Lcom/appbrain/a/w;)Lcom/appbrain/a/v;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/v;->b(Lcom/appbrain/a/v;)V

    return-void
.end method
