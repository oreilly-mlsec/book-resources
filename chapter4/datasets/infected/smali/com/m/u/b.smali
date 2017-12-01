.class public Lcom/m/u/b;
.super Landroid/app/Activity;


# static fields
.field protected static final aa:Ljava/lang/String;

.field public static final ab:Ljava/lang/String;

.field public static final ac:Ljava/lang/String;


# instance fields
.field protected ad:Ljava/lang/String;

.field protected ae:Landroid/content/res/AssetManager;

.field protected af:Landroid/content/res/Resources;

.field protected ag:Landroid/app/Activity;

.field protected ah:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/m/u/ac;->dp:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/b;->aa:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->bs:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/b;->ab:Ljava/lang/String;

    sget-object v0, Lcom/m/u/ac;->bt:[B

    invoke-static {v0}, Lcom/m/u/ae;->aa([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/m/u/b;->ac:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/m/u/b;->ah:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected aa(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/m/u/b;->ag:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/m/u/ag;->aa(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/m/u/b;->aa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ad(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected aa(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/m/u/as;->aa(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/m/u/b;->ae:Landroid/content/res/AssetManager;

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/m/u/b;->ae:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/m/u/b;->af:Landroid/content/res/Resources;

    return-void
.end method

.method protected ab(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/m/u/b;->aa:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/m/u/ag;->ac(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/m/u/o;

    invoke-virtual {p0}, Lcom/m/u/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/m/u/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/m/u/ab;

    invoke-direct {v1, p0}, Lcom/m/u/ab;-><init>(Lcom/m/u/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/m/u/o;->aa(Ljava/lang/String;Lcom/m/u/ao;)V

    return-void
.end method
