.class public Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MediaGalleryWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;
    }
.end annotation


# instance fields
.field private callback:Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;

.field private webViewLoadingDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;

    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->callback:Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;

    .line 43
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    .line 64
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "urlClient"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 47
    iget-object v0, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const-string v0, "https://share.catrob.at/pocketcode/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$style;->WebViewLoadingCircle:I

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 50
    iget-object v0, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    iget-object v0, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    const v1, 0x103001e

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 52
    iget-object v0, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->callback:Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;

    invoke-interface {v0}, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;->finish()V

    .line 56
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->callback:Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;

    invoke-interface {v0}, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;->finish()V

    .line 74
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    return v0
.end method
