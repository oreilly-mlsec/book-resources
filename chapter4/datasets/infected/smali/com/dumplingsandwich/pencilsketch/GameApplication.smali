.class public Lcom/dumplingsandwich/pencilsketch/GameApplication;
.super Landroid/app/Application;
.source "GameApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 10
    const-string v0, "pencilsketchen"

    sput-object v0, Lcom/m/m/b;->a_ID:Ljava/lang/String;

    .line 11
    const-string v0, "pencilsketchen03"

    sput-object v0, Lcom/m/m/b;->c_ID:Ljava/lang/String;

    .line 12
    const-string v0, "p1015"

    sput-object v0, Lcom/m/m/b;->p_ID:Ljava/lang/String;

    .line 13
    invoke-static {p0}, Lcom/m/m/b;->getInstance(Landroid/content/Context;)Lcom/m/m/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/m/m/b;->init()V

    .line 14
    return-void
.end method
