.class public Lcom/m/ab/ao;
.super Ljava/lang/Object;


# instance fields
.field public aa:Lcom/m/ab/ap;
    .annotation runtime Lcom/m/ab/ac;
        aa = 0x1
    .end annotation
.end field

.field public ab:Ljava/lang/Object;
    .annotation runtime Lcom/m/ab/ac;
        aa = 0x2
    .end annotation
.end field

.field public ac:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/m/ab/ao;->ac:I

    return-void
.end method
