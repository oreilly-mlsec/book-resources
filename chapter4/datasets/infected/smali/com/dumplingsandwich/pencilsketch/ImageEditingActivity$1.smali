.class Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;
.super Ljava/lang/Object;
.source "ImageEditingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->initializeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;


# direct methods
.method constructor <init>(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    new-instance v1, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;

    iget-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    invoke-direct {v1, v2, v4}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;-><init>(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;)V

    invoke-static {v0, v1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$2(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;)V

    .line 101
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->grayscale_task:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$3(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;

    move-result-object v0

    new-array v1, v3, [Landroid/graphics/Bitmap;

    sget-object v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$GrayscaleSketchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Black-White Sketching..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    new-instance v1, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;

    iget-object v2, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    invoke-direct {v1, v2, v4}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;-><init>(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;)V

    invoke-static {v0, v1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$4(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;)V

    .line 110
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->color_task:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$5(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;

    move-result-object v0

    new-array v1, v3, [Landroid/graphics/Bitmap;

    sget-object v2, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->original:Landroid/graphics/Bitmap;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$ColorSketchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Color Sketching..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->progress_dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    .line 119
    :pswitch_2
    sget-object v0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->current:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/dumplingsandwich/pencilsketch/utils/BitmapUtils;->saveImageOnPhone(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    invoke-virtual {v0}, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Image Saved in \"Pencil_Sketch\" Folder!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 126
    :pswitch_3
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    sget-object v1, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;->current:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/dumplingsandwich/pencilsketch/utils/BitmapUtils;->shareImage(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x7f050003
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
