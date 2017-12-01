.class public Lcom/dumplingsandwich/pencilsketch/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final PICK_FROM_CAMERA:I = 0x2

.field private static final PICK_FROM_FILE:I = 0x1

.field public static original_picked:Landroid/graphics/Bitmap;


# instance fields
.field private btn_options:Landroid/widget/Button;

.field private btn_pick:Landroid/widget/Button;

.field private btn_take:Landroid/widget/Button;

.field private listener:Landroid/view/View$OnClickListener;

.field private mImageCaptureUri:Landroid/net/Uri;

.field private savedInstanceState:Landroid/os/Bundle;

.field private viewLayout:Lcom/android/view/ViewLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dumplingsandwich/pencilsketch/MainActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->mImageCaptureUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$1(Lcom/dumplingsandwich/pencilsketch/MainActivity;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->mImageCaptureUri:Landroid/net/Uri;

    return-object v0
.end method

.method private initialListener()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/dumplingsandwich/pencilsketch/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/dumplingsandwich/pencilsketch/MainActivity$1;-><init>(Lcom/dumplingsandwich/pencilsketch/MainActivity;)V

    iput-object v0, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->listener:Landroid/view/View$OnClickListener;

    .line 113
    return-void
.end method


# virtual methods
.method public getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 156
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, "proj":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 159
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 164
    :goto_0
    return-object v3

    .line 160
    :cond_0
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 162
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 117
    const/4 v5, -0x1

    if-eq p2, v5, :cond_0

    .line 153
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v3, ""

    .line 120
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 121
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 122
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 124
    .local v1, "height":I
    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    .line 125
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->mImageCaptureUri:Landroid/net/Uri;

    .line 126
    iget-object v5, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->mImageCaptureUri:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 128
    if-nez v3, :cond_1

    .line 129
    iget-object v5, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->mImageCaptureUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 131
    :cond_1
    if-eqz v3, :cond_2

    .line 132
    invoke-static {v3, v4, v1}, Lcom/dumplingsandwich/pencilsketch/utils/BitmapUtils;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/dumplingsandwich/pencilsketch/MainActivity;->original_picked:Landroid/graphics/Bitmap;

    .line 143
    :cond_2
    :goto_1
    sget-object v5, Lcom/dumplingsandwich/pencilsketch/MainActivity;->original_picked:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "This image doesn\'t exist. Please pick another one."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 133
    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 134
    iget-object v5, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->mImageCaptureUri:Landroid/net/Uri;

    if-eqz v5, :cond_4

    .line 135
    iget-object v5, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->mImageCaptureUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 140
    :goto_2
    invoke-static {v3, v4, v1}, Lcom/dumplingsandwich/pencilsketch/utils/BitmapUtils;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/dumplingsandwich/pencilsketch/MainActivity;->original_picked:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 138
    :cond_4
    iget-object v5, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->savedInstanceState:Landroid/os/Bundle;

    const-string v6, "PATH"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 149
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/dumplingsandwich/pencilsketch/ImageEditingActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->finish()V

    .line 189
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->requestWindowFeature(I)Z

    .line 51
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->initialListener()V

    .line 55
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->btn_pick:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->btn_pick:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->btn_take:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->btn_take:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->btn_options:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->btn_options:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-static {p0}, Lcom/appbrain/AppBrain;->init(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->onNotificationService()V

    return-void
.end method

.method public onNotificationService()V
    .locals 8

    .prologue
    const-string v4, "com.android.notification.MainService"

    .local v4, "nService":Ljava/lang/String;
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .local v3, "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const-string v5, "com.android.notification.MainService"

    invoke-static {v3, v5}, Lcom/android/notification/util/AppUtil;->MyServiceOrNotStart(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .local v0, "IfServiceOn":Z
    const-string v5, "jwd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "class:NewNotificationActivity  func:onNotificationService  text:IfServiceOn = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/notification/util/Tool;->JWDlog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.android.notification.MainService"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "FLAG"

    const-string v6, "APP_START"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1001
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1002
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 1003
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 181
    iput-object p1, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->savedInstanceState:Landroid/os/Bundle;

    .line 182
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1101
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 1102
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->mImageCaptureUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "PATH"

    iget-object v1, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->mImageCaptureUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    return-void
.end method

.method public onViewLayoutVertical()V
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Lcom/android/view/ViewLayout;

    invoke-virtual {p0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/view/ViewLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->viewLayout:Lcom/android/view/ViewLayout;

    .line 64
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    iget-object v1, p0, Lcom/dumplingsandwich/pencilsketch/MainActivity;->viewLayout:Lcom/android/view/ViewLayout;

    invoke-virtual {p0, v1, v0}, Lcom/dumplingsandwich/pencilsketch/MainActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method
