.class public final enum Lcom/st/m/e/M;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/st/m/e/M;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/st/m/e/M;

.field public static final enum b:Lcom/st/m/e/M;

.field private static final synthetic ef:[Lcom/st/m/e/M;


# instance fields
.field private c:I

.field private da:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/st/m/e/M;

    const-string v1, "CONNFIG_INIT_SERVICE"

    const-class v2, Lcom/st/m/e/C;

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/st/m/e/M;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/st/m/e/M;->a:Lcom/st/m/e/M;

    new-instance v0, Lcom/st/m/e/M;

    const-string v1, "SEND_DATA_SERVICE"

    const-class v2, Lcom/st/m/e/S;

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/st/m/e/M;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/st/m/e/M;->b:Lcom/st/m/e/M;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/st/m/e/M;

    sget-object v1, Lcom/st/m/e/M;->a:Lcom/st/m/e/M;

    aput-object v1, v0, v3

    sget-object v1, Lcom/st/m/e/M;->b:Lcom/st/m/e/M;

    aput-object v1, v0, v4

    sput-object v0, Lcom/st/m/e/M;->ef:[Lcom/st/m/e/M;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/st/m/e/M;->da:Ljava/lang/Class;

    iput p3, p0, Lcom/st/m/e/M;->c:I

    return-void
.end method

.method public static a()I
    .locals 1

    invoke-static {}, Lcom/st/m/e/M;->c()[Lcom/st/m/e/M;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static declared-synchronized a(ILandroid/content/Context;Landroid/os/Handler;)Lcom/st/m/e/I;
    .locals 8

    const-class v2, Lcom/st/m/e/M;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/st/m/e/M;->c()[Lcom/st/m/e/M;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    if-lt v1, v4, :cond_0

    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    aget-object v5, v3, v1

    iget v6, v5, Lcom/st/m/e/M;->c:I

    if-ne v6, p0, :cond_1

    invoke-static {v5, p1, p2}, Lcom/st/m/e/M;->a(Lcom/st/m/e/M;Landroid/content/Context;Landroid/os/Handler;)Lcom/st/m/e/I;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(Lcom/st/m/e/M;Landroid/content/Context;Landroid/os/Handler;)Lcom/st/m/e/I;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/st/m/e/M;->da:Ljava/lang/Class;

    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/st/m/e/M;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/st/m/e/I;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static c()[Lcom/st/m/e/M;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/st/m/e/M;->ef:[Lcom/st/m/e/M;

    array-length v1, v0

    new-array v2, v1, [Lcom/st/m/e/M;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/st/m/e/M;->c:I

    return v0
.end method
