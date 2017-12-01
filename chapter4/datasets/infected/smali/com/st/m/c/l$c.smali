.class Lcom/st/m/c/l$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/st/m/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field final synthetic c:Lcom/st/m/c/l;


# direct methods
.method constructor <init>(Lcom/st/m/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/st/m/c/l$c;->c:Lcom/st/m/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
