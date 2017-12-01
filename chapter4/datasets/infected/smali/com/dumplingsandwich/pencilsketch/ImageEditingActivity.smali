.class public Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;
.super Landroid/app/Activity;
.source "ImageEditingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;,
        Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;
    }
.end annotation


# static fields
.field public static current:Landroid/graphics/Bitmap;

.field public static original:Landroid/graphics/Bitmap;


# instance fields
.field private bitmapView:Landroid/widget/ImageView;

.field private btn_color:Landroid/widget/ImageButton;

.field private btn_gray:Landroid/widget/ImageButton;

.field private btn_save:Landroid/widget/ImageButton;

.field private btn_share:Landroid/widget/ImageButton;

.field private color_task:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;

.field private grayscale_task:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;

.field private listener:Landroid/view/View$OnClickListener;

.field private progress_dialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->bitmapView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->grayscale_task:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;

    return-void
.end method

.method static synthetic access$3(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->grayscale_task:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;

    return-object v0
.end method

.method static synthetic access$4(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->color_task:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;

    return-void
.end method

.method static synthetic access$5(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->color_task:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;

    return-object v0
.end method

.method private initializeListener()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;

    invoke-direct {v0, p0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;-><init>(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)V

    iput-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->listener:Landroid/view/View$OnClickListener;

    .line 133
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const-wide v6, 0x3feb333333333333L    # 0.85

    const-wide v9, 0x3fe3333333333333L    # 0.6

    const/4 v8, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v8}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->requestWindowFeature(I)Z

    .line 45
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->setContentView(I)V

    .line 47
    const-string v2, "Black-White Sketching..."

    invoke-static {p0, v2, v11}, Lcom/dumplingsandwich/pencilsketch/utils/UIUtils;->getLoadingIndicator(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;

    .line 48
    iget-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v11}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 49
    iget-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 51
    sget-object v2, Lcom/dumplingsandwich/pencilsketch/MainActivity;->original_picked:Landroid/graphics/Bitmap;

    sput-object v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {p0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 53
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 55
    .local v0, "height":I
    sget-object v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 57
    sget-object v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v0

    mul-double/2addr v4, v9

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 59
    sget-object v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    int-to-double v3, v0

    mul-double/2addr v3, v9

    sget-object v5, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    sget-object v5, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-int v3, v3

    int-to-double v4, v0

    mul-double/2addr v4, v9

    double-to-int v4, v4

    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    .line 71
    :cond_0
    :goto_0
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->bitmapView:Landroid/widget/ImageView;

    .line 73
    new-instance v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;-><init>(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;)V

    iput-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->grayscale_task:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;

    .line 74
    iget-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->grayscale_task:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;

    new-array v3, v8, [Landroid/graphics/Bitmap;

    sget-object v4, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    aput-object v4, v3, v11

    invoke-virtual {v2, v3}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    invoke-direct {p0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->initializeListener()V

    .line 78
    const v2, 0x7f050003

    invoke-virtual {p0, v2}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->btn_gray:Landroid/widget/ImageButton;

    .line 79
    iget-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->btn_gray:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->btn_color:Landroid/widget/ImageButton;

    .line 81
    iget-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->btn_color:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->btn_save:Landroid/widget/ImageButton;

    .line 83
    iget-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->btn_save:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v2, 0x7f050006

    invoke-virtual {p0, v2}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->btn_share:Landroid/widget/ImageButton;

    .line 85
    iget-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->btn_share:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void

    .line 64
    :cond_1
    sget-object v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v1

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 66
    sget-object v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    int-to-double v3, v1

    mul-double/2addr v3, v6

    double-to-int v3, v3

    int-to-double v4, v1

    mul-double/2addr v4, v6

    sget-object v6, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sget-object v6, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method
