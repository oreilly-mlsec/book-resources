.class Lcom/m/ab/ar$ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m/ab/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ab"
.end annotation


# instance fields
.field final synthetic aa:Lcom/m/ab/ar;


# direct methods
.method constructor <init>(Lcom/m/ab/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/m/ab/ar$ab;->aa:Lcom/m/ab/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/m/ab/ar$aa;

    check-cast p2, Lcom/m/ab/ar$aa;

    iget-object v0, p1, Lcom/m/ab/ar$aa;->aa:Lcom/m/ab/ac;

    invoke-interface {v0}, Lcom/m/ab/ac;->aa()I

    move-result v0

    iget-object v1, p2, Lcom/m/ab/ar$aa;->aa:Lcom/m/ab/ac;

    invoke-interface {v1}, Lcom/m/ab/ac;->aa()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
