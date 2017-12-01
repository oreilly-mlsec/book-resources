.class Lcom/st/m/c/l$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/st/m/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/st/m/c/l;


# direct methods
.method constructor <init>(Lcom/st/m/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/st/m/c/l$b;->a:Lcom/st/m/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/st/m/c/l$a;

    check-cast p2, Lcom/st/m/c/l$a;

    iget-object v0, p1, Lcom/st/m/c/l$a;->a:Lcom/st/m/c/b;

    invoke-interface {v0}, Lcom/st/m/c/b;->a()I

    move-result v0

    iget-object v1, p2, Lcom/st/m/c/l$a;->a:Lcom/st/m/c/b;

    invoke-interface {v1}, Lcom/st/m/c/b;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
