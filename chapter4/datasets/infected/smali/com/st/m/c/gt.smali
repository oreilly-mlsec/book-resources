.class public Lcom/st/m/c/gt;
.super Lcom/st/m/c/ks;


# annotations
.annotation runtime Lcom/st/m/c/pcv;
    b = 0x31ce2
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/st/m/c/b;
        a = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/st/m/c/ks;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/st/m/c/gt;->a:Ljava/lang/String;

    return-object v0
.end method
