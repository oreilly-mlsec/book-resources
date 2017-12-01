.class public Lcom/st/m/c/if;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/st/m/c/j;
    .annotation runtime Lcom/st/m/c/b;
        a = 0x1
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation runtime Lcom/st/m/c/b;
        a = 0x2
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/st/m/c/if;->c:I

    return-void
.end method
