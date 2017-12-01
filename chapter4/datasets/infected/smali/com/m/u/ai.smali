.class Lcom/m/u/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aa:Lcom/m/u/o;

.field private final synthetic ab:Ljava/lang/String;

.field private final synthetic ac:Lcom/m/u/ao;


# direct methods
.method constructor <init>(Lcom/m/u/o;Ljava/lang/String;Lcom/m/u/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/m/u/ai;->aa:Lcom/m/u/o;

    iput-object p2, p0, Lcom/m/u/ai;->ab:Ljava/lang/String;

    iput-object p3, p0, Lcom/m/u/ai;->ac:Lcom/m/u/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/m/u/ai;->aa:Lcom/m/u/o;

    iget-object v1, p0, Lcom/m/u/ai;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/m/u/ai;->ac:Lcom/m/u/ao;

    invoke-virtual {v0, v1, v2}, Lcom/m/u/o;->aa(Ljava/lang/String;Lcom/m/u/ao;)V

    return-void
.end method
