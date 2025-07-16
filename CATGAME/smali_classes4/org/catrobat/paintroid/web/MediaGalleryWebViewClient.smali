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

    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->callback:Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 47
    iget-object p3, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    if-nez p3, :cond_0

    const-string p3, "https://share.catrob.at/pocketcode/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 48
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lorg/catrobat/paintroid/R$style;->WebViewLoadingCircle:I

    invoke-direct {p2, p1, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 50
    iget-object p1, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    iget-object p1, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    const p2, 0x103001e

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 52
    iget-object p1, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->webViewLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->callback:Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;

    invoke-interface {p1}, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;->finish()V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;->callback:Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;

    invoke-interface {p1}, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;->finish()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
