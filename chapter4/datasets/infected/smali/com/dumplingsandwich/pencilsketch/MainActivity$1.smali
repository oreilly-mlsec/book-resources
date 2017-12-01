.class Lcom/dumplingsandwich/pencilsketch/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumplingsandwich/pencilsketch/MainActivity;->initialListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumplingsandwich/pencilsketch/MainActivity;


# direct methods
.method constructor <init>(Lcom/dumplingsandwich/pencilsketch/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/MainActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 77
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v3, "gallery_intent":Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v5, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/MainActivity;

    const-string v6, "Complete action using"

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 85
    .end local v3    # "gallery_intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "camera_intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "capture_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .local v2, "file":Ljava/io/File;
    iget-object v5, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/MainActivity;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->access$0(Lcom/dumplingsandwich/pencilsketch/MainActivity;Landroid/net/Uri;)V

    .line 92
    :try_start_0
    const-string v5, "output"

    iget-object v6, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/MainActivity;

    # getter for: Lcom/dumplingsandwich/pencilsketch/MainActivity;->mImageCaptureUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->access$1(Lcom/dumplingsandwich/pencilsketch/MainActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    const-string v5, "return-data"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    iget-object v5, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/MainActivity;

    const/4 v6, 0x2

    invoke-virtual {v5, v0, v6}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0    # "camera_intent":Landroid/content/Intent;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    :pswitch_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v4, "i":Landroid/content/Intent;
    const-string v5, "market://details?id=com.dumplingsandwich.pencilsketch"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 102
    iget-object v5, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity$1;->this$0:Lcom/dumplingsandwich/pencilsketch/MainActivity;

    invoke-virtual {v5, v4}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7f050008
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
