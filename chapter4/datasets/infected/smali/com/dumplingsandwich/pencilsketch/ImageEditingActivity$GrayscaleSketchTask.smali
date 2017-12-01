.class Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;
.super Landroid/os/AsyncTask;
.source "ImageEditingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GrayscaleSketchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;


# direct methods
.method private constructor <init>(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;-><init>(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "arg0"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 212
    sget-object v12, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 213
    .local v5, "height":I
    sget-object v12, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 215
    .local v11, "width":I
    sget-object v12, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-static {v12}, Lcom/dumplingsandwich/pencilsketch/utils/BitmapUtils;->getPixels_2D(Landroid/graphics/Bitmap;)[[I

    move-result-object v9

    .line 216
    .local v9, "pixels_2D":[[I
    filled-new-array {v5, v11}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 220
    .local v4, "grayscale_2D":[[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v5, :cond_0

    .line 230
    const/4 v1, 0x0

    .local v1, "delta_x":I
    const/4 v2, 0x0

    .line 232
    .local v2, "delta_y":I
    const/4 v6, 0x1

    :goto_1
    add-int/lit8 v12, v5, -0x1

    if-lt v6, v12, :cond_2

    .line 251
    invoke-static {v9, v5, v11}, Lcom/dumplingsandwich/pencilsketch/utils/BitmapUtils;->getPixels_1D([[III)[I

    move-result-object v8

    .line 253
    .local v8, "pixels_1D":[I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v11, v5, v12}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    return-object v12

    .line 222
    .end local v1    # "delta_x":I
    .end local v2    # "delta_y":I
    .end local v8    # "pixels_1D":[I
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-lt v7, v11, :cond_1

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 224
    :cond_1
    aget-object v12, v9, v6

    aget v12, v12, v7

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v12

    int-to-double v12, v12

    const-wide v14, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v12, v14

    aget-object v14, v9, v6

    aget v14, v14, v7

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v14

    int-to-double v14, v14

    const-wide v16, 0x3fe2c8b439581062L    # 0.587

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aget-object v14, v9, v6

    aget v14, v14, v7

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    int-to-double v14, v14

    const-wide v16, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v3, v12

    .line 225
    .local v3, "gray":I
    aget-object v12, v4, v6

    aput v3, v12, v7

    .line 222
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 234
    .end local v3    # "gray":I
    .end local v7    # "j":I
    .restart local v1    # "delta_x":I
    .restart local v2    # "delta_y":I
    :cond_2
    const/4 v7, 0x1

    .restart local v7    # "j":I
    :goto_3
    add-int/lit8 v12, v11, -0x1

    if-lt v7, v12, :cond_3

    .line 248
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->publishProgress([Ljava/lang/Object;)V

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 236
    :cond_3
    add-int/lit8 v12, v6, 0x1

    aget-object v12, v4, v12

    add-int/lit8 v13, v7, -0x1

    aget v12, v12, v13

    add-int/lit8 v13, v6, 0x1

    aget-object v13, v4, v13

    aget v13, v13, v7

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    add-int/lit8 v13, v6, 0x1

    aget-object v13, v4, v13

    add-int/lit8 v14, v7, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    add-int/lit8 v13, v6, -0x1

    aget-object v13, v4, v13

    add-int/lit8 v14, v7, -0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    add-int/lit8 v13, v6, -0x1

    aget-object v13, v4, v13

    aget v13, v13, v7

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    add-int/lit8 v13, v6, -0x1

    aget-object v13, v4, v13

    add-int/lit8 v14, v7, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 237
    add-int/lit8 v12, v6, -0x1

    aget-object v12, v4, v12

    add-int/lit8 v13, v7, 0x1

    aget v12, v12, v13

    aget-object v13, v4, v6

    add-int/lit8 v14, v7, 0x1

    aget v13, v13, v14

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    add-int/lit8 v13, v6, 0x1

    aget-object v13, v4, v13

    add-int/lit8 v14, v7, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    add-int/lit8 v13, v6, -0x1

    aget-object v13, v4, v13

    add-int/lit8 v14, v7, -0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    aget-object v13, v4, v6

    add-int/lit8 v14, v7, -0x1

    aget v13, v13, v14

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    add-int/lit8 v13, v6, 0x1

    aget-object v13, v4, v13

    add-int/lit8 v14, v7, -0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 238
    mul-int v12, v1, v1

    mul-int v13, v2, v2

    add-int/2addr v12, v13

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 240
    .local v10, "value":I
    const/16 v12, 0xff

    if-le v10, v12, :cond_4

    .line 241
    const/16 v10, 0xff

    .line 243
    :cond_4
    rsub-int v10, v10, 0xff

    .line 245
    aget-object v12, v9, v6

    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    aput v13, v12, v7

    .line 234
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 268
    sput-object p1, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->current:Landroid/graphics/Bitmap;

    .line 269
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->bitmapView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$1(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->current:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 260
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    sget-object v1, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 261
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
