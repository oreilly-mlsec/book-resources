.class final Lcom/google/ads/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/c;

.field private final b:Lcom/google/ads/d;

.field private final c:Landroid/webkit/WebView;

.field private final d:Lcom/google/ads/b;

.field private final e:Lcom/google/ads/AdRequest$ErrorCode;

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/c;Lcom/google/ads/d;Landroid/webkit/WebView;Lcom/google/ads/b;Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/ads/c$a;->a:Lcom/google/ads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/google/ads/c$a;->b:Lcom/google/ads/d;

    .line 94
    iput-object p3, p0, Lcom/google/ads/c$a;->c:Landroid/webkit/WebView;

    .line 95
    iput-object p4, p0, Lcom/google/ads/c$a;->d:Lcom/google/ads/b;

    .line 96
    iput-object p5, p0, Lcom/google/ads/c$a;->e:Lcom/google/ads/AdRequest$ErrorCode;

    .line 97
    iput-boolean p6, p0, Lcom/google/ads/c$a;->f:Z

    .line 98
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/ads/c$a;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/ads/c$a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 105
    iget-object v0, p0, Lcom/google/ads/c$a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/ads/c$a;->d:Lcom/google/ads/b;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/google/ads/c$a;->d:Lcom/google/ads/b;

    invoke-virtual {v0}, Lcom/google/ads/b;->a()V

    .line 114
    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/c$a;->f:Z

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/google/ads/c$a;->b:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->i()Lcom/google/ads/h;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/google/ads/h;->stopLoading()V

    .line 117
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/h;->setVisibility(I)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/google/ads/c$a;->b:Lcom/google/ads/d;

    iget-object v1, p0, Lcom/google/ads/c$a;->e:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/d;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 122
    return-void
.end method
