.class Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;
.super Landroid/os/AsyncTask;
.source "ImageEditingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSketchTask"
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
    .line 135
    iput-object p1, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;-><init>(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "arg0"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 140
    sget-object v14, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 141
    .local v6, "height":I
    sget-object v14, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 143
    .local v13, "width":I
    sget-object v14, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-static {v14}, Lcom/dumplingsandwich/pencilsketch/utils/BitmapUtils;->getPixels_2D(Landroid/graphics/Bitmap;)[[I

    move-result-object v11

    .line 145
    .local v11, "pixels_2D":[[I
    const/4 v14, 0x3

    new-array v7, v14, [F

    .line 146
    .local v7, "hsv":[F
    filled-new-array {v6, v13}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    .line 147
    .local v1, "H_pixels":[[F
    filled-new-array {v6, v13}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 148
    .local v2, "S_pixels":[[F
    filled-new-array {v6, v13}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 151
    .local v3, "V_pixels":[[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v6, :cond_0

    .line 162
    const/4 v12, 0x0

    .line 165
    .local v12, "v":F
    const/4 v8, 0x1

    :goto_1
    add-int/lit8 v14, v6, -0x1

    if-lt v8, v14, :cond_2

    .line 184
    invoke-static {v11, v6, v13}, Lcom/dumplingsandwich/pencilsketch/utils/BitmapUtils;->getPixels_1D([[III)[I

    move-result-object v10

    .line 186
    .local v10, "pixels_1D":[I
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v13, v6, v14}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    return-object v14

    .line 153
    .end local v10    # "pixels_1D":[I
    .end local v12    # "v":F
    :cond_0
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-lt v9, v13, :cond_1

    .line 151
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 155
    :cond_1
    aget-object v14, v11, v8

    aget v14, v14, v9

    invoke-static {v14, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 156
    aget-object v14, v1, v8

    const/4 v15, 0x0

    aget v15, v7, v15

    aput v15, v14, v9

    .line 157
    aget-object v14, v2, v8

    const/4 v15, 0x1

    aget v15, v7, v15

    aput v15, v14, v9

    .line 158
    aget-object v14, v3, v8

    const/4 v15, 0x2

    aget v15, v7, v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    aput v15, v14, v9

    .line 153
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 167
    .end local v9    # "j":I
    .restart local v12    # "v":F
    :cond_2
    const/4 v9, 0x1

    .restart local v9    # "j":I
    :goto_3
    add-int/lit8 v14, v13, -0x1

    if-lt v9, v14, :cond_3

    .line 181
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;->publishProgress([Ljava/lang/Object;)V

    .line 165
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 169
    :cond_3
    add-int/lit8 v14, v8, 0x1

    aget-object v14, v3, v14

    add-int/lit8 v15, v9, -0x1

    aget v14, v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    add-int/lit8 v16, v8, 0x1

    aget-object v16, v3, v16

    aget v16, v16, v9

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    add-int/lit8 v15, v8, 0x1

    aget-object v15, v3, v15

    add-int/lit8 v16, v9, 0x1

    aget v15, v15, v16

    add-float/2addr v14, v15

    add-int/lit8 v15, v8, -0x1

    aget-object v15, v3, v15

    add-int/lit8 v16, v9, -0x1

    aget v15, v15, v16

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    add-int/lit8 v16, v8, -0x1

    aget-object v16, v3, v16

    aget v16, v16, v9

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    add-int/lit8 v15, v8, -0x1

    aget-object v15, v3, v15

    add-int/lit8 v16, v9, 0x1

    aget v15, v15, v16

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 170
    .local v4, "delta_x":F
    add-int/lit8 v14, v8, -0x1

    aget-object v14, v3, v14

    add-int/lit8 v15, v9, 0x1

    aget v14, v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    aget-object v16, v3, v8

    add-int/lit8 v17, v9, 0x1

    aget v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    add-int/lit8 v15, v8, 0x1

    aget-object v15, v3, v15

    add-int/lit8 v16, v9, 0x1

    aget v15, v15, v16

    add-float/2addr v14, v15

    add-int/lit8 v15, v8, -0x1

    aget-object v15, v3, v15

    add-int/lit8 v16, v9, -0x1

    aget v15, v15, v16

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    aget-object v16, v3, v8

    add-int/lit8 v17, v9, -0x1

    aget v16, v16, v17

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    add-int/lit8 v15, v8, 0x1

    aget-object v15, v3, v15

    add-int/lit8 v16, v9, -0x1

    aget v15, v15, v16

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 171
    .local v5, "delta_y":F
    mul-float v14, v4, v4

    mul-float v15, v5, v5

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v12, v14

    .line 172
    const/high16 v14, 0x437f0000    # 255.0f

    cmpl-float v14, v12, v14

    if-lez v14, :cond_4

    .line 173
    const/high16 v12, 0x437f0000    # 255.0f

    .line 174
    :cond_4
    const/high16 v14, 0x437f0000    # 255.0f

    sub-float v12, v14, v12

    .line 176
    const/4 v14, 0x0

    aget-object v15, v1, v8

    aget v15, v15, v9

    aput v15, v7, v14

    const/4 v14, 0x1

    aget-object v15, v2, v8

    aget v15, v15, v9

    aput v15, v7, v14

    const/4 v14, 0x2

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v15, v12, v15

    aput v15, v7, v14

    .line 177
    aget-object v14, v11, v8

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v15

    aput v15, v14, v9

    .line 167
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 201
    sput-object p1, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->current:Landroid/graphics/Bitmap;

    .line 202
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->bitmapView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$1(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->current:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 193
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    sget-object v1, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 194
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
