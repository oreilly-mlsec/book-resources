.class final Lcom/google/ads/z$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Z)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/ads/z$c;->b:Landroid/webkit/WebView;

    .line 144
    iput-boolean p2, p0, Lcom/google/ads/z$c;->a:Z

    .line 145
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/ads/z$c;->b:Landroid/webkit/WebView;

    iget-boolean v1, p0, Lcom/google/ads/z$c;->a:Z

    invoke-static {v0, v1}, Lcom/google/ads/z;->a(Landroid/webkit/WebView;Z)V

    .line 150
    return-void
.end method
