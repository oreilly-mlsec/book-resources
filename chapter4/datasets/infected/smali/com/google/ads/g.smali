.class public final Lcom/google/ads/g;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/g$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/MediaController;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/AdActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/ads/h;

.field private d:J

.field private e:Landroid/widget/VideoView;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/AdActivity;Lcom/google/ads/h;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/g;->b:Ljava/lang/ref/WeakReference;

    .line 92
    iput-object p2, p0, Lcom/google/ads/g;->c:Lcom/google/ads/h;

    .line 95
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    .line 96
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    iget-object v1, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iput-object v3, p0, Lcom/google/ads/g;->a:Landroid/widget/MediaController;

    .line 107
    iput-object v3, p0, Lcom/google/ads/g;->f:Ljava/lang/String;

    .line 110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/g;->d:J

    .line 111
    new-instance v0, Lcom/google/ads/g$a;

    invoke-direct {v0, p0}, Lcom/google/ads/g$a;-><init>(Lcom/google/ads/g;)V

    .line 112
    invoke-virtual {v0}, Lcom/google/ads/g$a;->a()V

    .line 114
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 115
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 116
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 117
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/ads/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/ads/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/ads/g;->c:Lcom/google/ads/h;

    const-string v1, "onVideoEvent"

    const-string v2, "{\'event\': \'error\', \'what\': \'no_src\'}"

    invoke-static {v0, v1, v2}, Lcom/google/ads/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 211
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 218
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/ads/g;->f:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/ads/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdActivity;

    .line 136
    if-nez v0, :cond_0

    .line 137
    const-string v0, "adActivity was null while trying to enable controls on a video."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 141
    :cond_0
    if-eqz p1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/google/ads/g;->a:Landroid/widget/MediaController;

    if-nez v1, :cond_1

    .line 143
    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/g;->a:Landroid/widget/MediaController;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/ads/g;->a:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/google/ads/g;->a:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/google/ads/g;->a:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 196
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 203
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 225
    return-void
.end method

.method final e()V
    .locals 7

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 232
    iget-wide v2, p0, Lcom/google/ads/g;->d:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 233
    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 234
    iget-object v3, p0, Lcom/google/ads/g;->c:Lcom/google/ads/h;

    const-string v4, "onVideoEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\'event\': \'timeupdate\', \'time\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/google/ads/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-wide v0, p0, Lcom/google/ads/g;->d:J

    .line 239
    :cond_0
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/ads/g;->c:Lcom/google/ads/h;

    const-string v1, "onVideoEvent"

    const-string v2, "{\'event\': \'ended\'}"

    invoke-static {v0, v1, v2}, Lcom/google/ads/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video threw error! <what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/google/ads/g;->c:Lcom/google/ads/h;

    const-string v1, "onVideoEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\'event\': \'error\', \'what\': \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'extra\': \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/ads/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/ads/g;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 186
    iget-object v1, p0, Lcom/google/ads/g;->c:Lcom/google/ads/h;

    const-string v2, "onVideoEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\'event\': \'canplaythrough\', \'duration\': \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/ads/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method
