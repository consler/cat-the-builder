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
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private listener:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;

    .line 42
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->listener:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    return-object v0
.end method

.method public static final synthetic access$setListener$p(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    .line 42
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->listener:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget v0, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_webview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflater.inflate(R.layou\u2026ebview, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 104
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 105
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    sget v0, Lorg/catrobat/paintroid/R$id;->webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->webView:Landroid/webkit/WebView;

    .line 60
    if-eqz v0, :cond_0

    .local v0, "$this$apply":Landroid/webkit/WebView;
    const/4 v1, 0x0

    .line 61
    .local v1, "$i$a$-apply-CatroidMediaGalleryFragment$onViewCreated$1":I
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "settings"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    new-instance v2, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;

    move-object v4, p0

    check-cast v4, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;

    invoke-direct {v2, v4}, Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient;-><init>(Lorg/catrobat/paintroid/web/MediaGalleryWebViewClient$WebClientCallback;)V

    check-cast v2, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 63
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Catrobat"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 64
    const-string v2, "https://share.catrob.at/pocketcode/media-library/looks"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    new-instance v2, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$onViewCreated$$inlined$apply$lambda$1;-><init>(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;)V

    check-cast v2, Landroid/webkit/DownloadListener;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 98
    nop

    .line 60
    .end local v0    # "$this$apply":Landroid/webkit/WebView;
    .end local v1    # "$i$a$-apply-CatroidMediaGalleryFragment$onViewCreated$1":I
    nop

    .line 99
    :cond_0
    return-void
.end method

.method public final setMediaGalleryListener(Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment;->listener:Lorg/catrobat/paintroid/ui/fragments/CatroidMediaGalleryFragment$MediaGalleryListener;

    .line 48
    return-void
.end method
