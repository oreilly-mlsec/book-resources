.class Lcom/st/m/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/st/m/c/o;


# instance fields
.field final synthetic a:Lcom/st/m/e/C;


# direct methods
.method constructor <init>(Lcom/st/m/e/C;)V
    .locals 0

    iput-object p1, p0, Lcom/st/m/e/a;->a:Lcom/st/m/e/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lcom/st/m/c/if;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/st/m/c/if;->a:Lcom/st/m/c/j;

    iget v1, v1, Lcom/st/m/c/j;->gt:I

    const-class v2, Lcom/st/m/c/ef;

    invoke-static {v2}, Lcom/st/m/c/a;->a(Ljava/lang/Class;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v0, p2, Lcom/st/m/c/if;->b:Ljava/lang/Object;

    check-cast v0, Lcom/st/m/c/ef;

    const-string v1, "ReqConfig"

    invoke-virtual {v0}, Lcom/st/m/c/ef;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/st/m/e/a;->a:Lcom/st/m/e/C;

    invoke-static {v1, v0}, Lcom/st/m/e/C;->a(Lcom/st/m/e/C;Lcom/st/m/c/ef;)V

    return-void

    :cond_0
    const-string v1, "ReqConfig"

    const-string v2, "GetCommonConfigreq on reponse error"

    invoke-static {v1, v2}, Lcom/st/m/u/ef;->da(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
