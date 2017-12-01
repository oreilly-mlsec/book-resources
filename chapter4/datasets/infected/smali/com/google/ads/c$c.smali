.class final Lcom/google/ads/c$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/c;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/google/ads/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/ads/c$c;->a:Lcom/google/ads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/google/ads/c$c;->d:Landroid/webkit/WebView;

    .line 135
    iput-object p3, p0, Lcom/google/ads/c$c;->b:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/google/ads/c$c;->c:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/ads/c$c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/ads/c$c;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/c$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/c$c;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/ads/c$c;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/c$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
