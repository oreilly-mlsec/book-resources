.class Lcom/android/view/ViewLayout$1;
.super Ljava/lang/Object;
.source "ViewLayout.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/view/ViewLayout;->settingForWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/view/ViewLayout;


# direct methods
.method constructor <init>(Lcom/android/view/ViewLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/view/ViewLayout$1;->this$0:Lcom/android/view/ViewLayout;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 265
    return-void
.end method
