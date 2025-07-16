.class public final Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;
.super Landroidx/fragment/app/Fragment;
.source "CatroidMediaGalleryFragment.kt"

# interfaces
.implements Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J$\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\tH\u0016J\u001a\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;",
        "()V",
        "listener",
        "Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;",
        "webView",
        "Landroid/webkit/WebView;",
        "finish",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onViewCreated",
        "view",
        "setMediaGalleryListener",
        "MediaGalleryListener",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private listener:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$EXbEUdYOtQPixJWnXYKqHr_5Iiw(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->onViewCreated$lambda-1$lambda-0(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->listener:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    return-object p0
.end method

.method private static final onViewCreated$lambda-1$lambda-0(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p2

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 68
    iget-object p3, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->listener:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;->showProgressDialog()V

    .line 71
    :goto_0
    new-instance p3, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$1$1$1;

    invoke-direct {p3, p0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$1$1$1;-><init>(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)V

    check-cast p3, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 69
    invoke-virtual {p2, p1, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget p3, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_webview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026ebview, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 103
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 104
    :goto_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    sget p2, Lorg/catrobat/paintroid/R$id;->webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->webView:Landroid/webkit/WebView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    new-instance p2, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;

    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;

    invoke-direct {p2, v0}, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;-><init>(Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;)V

    check-cast p2, Landroid/webkit/WebViewClient;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 63
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const-string v0, "Catrobat"

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const-string p2, "https://share.catrob.at/pocketcode/media-library/looks"

    .line 64
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    new-instance p2, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :goto_0
    return-void
.end method

.method public final setMediaGalleryListener(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->listener:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    return-void
.end method
