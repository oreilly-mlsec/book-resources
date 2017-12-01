.class Lcom/m/u/n$aa;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m/u/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "aa"
.end annotation


# instance fields
.field aa:Ljava/lang/String;

.field final synthetic ab:Lcom/m/u/n;


# direct methods
.method constructor <init>(Lcom/m/u/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/m/u/n$aa;->ab:Lcom/m/u/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/m/u/n$aa;->aa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/m/u/n$aa;->ab:Lcom/m/u/n;

    iget-object v1, p0, Lcom/m/u/n$aa;->aa:Ljava/lang/String;

    # invokes: Lcom/m/u/n;->exec(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/m/u/n;->access$0(Lcom/m/u/n;Ljava/lang/String;)V

    return-void
.end method
