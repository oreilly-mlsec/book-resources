.class Lcom/m/ab/ar$aa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m/ab/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "aa"
.end annotation


# instance fields
.field public aa:Lcom/m/ab/ac;

.field public ab:Ljava/lang/reflect/Field;

.field final synthetic ac:Lcom/m/ab/ar;


# direct methods
.method constructor <init>(Lcom/m/ab/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/m/ab/ar$aa;->ac:Lcom/m/ab/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
