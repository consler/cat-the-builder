.class public Landroidx/webkit/internal/SafeBrowsingResponseImpl;
.super Landroidx/webkit/SafeBrowsingResponseCompat;
.source "SafeBrowsingResponseImpl.java"


# instance fields
.field private mBoundaryInterface:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

.field private mFrameworksImpl:Landroid/webkit/SafeBrowsingResponse;


# direct methods
.method public constructor <init>(Landroid/webkit/SafeBrowsingResponse;)V
    .locals 0
    .param p1, "response"    # Landroid/webkit/SafeBrowsingResponse;

    .line 57
    invoke-direct {p0}, Landroidx/webkit/SafeBrowsingResponseCompat;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->mFrameworksImpl:Landroid/webkit/SafeBrowsingResponse;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1
    .param p1, "invocationHandler"    # Ljava/lang/reflect/InvocationHandler;

    .line 52
    invoke-direct {p0}, Landroidx/webkit/SafeBrowsingResponseCompat;-><init>()V

    .line 53
    const-class v0, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    invoke-static {v0, p1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    iput-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 55
    return-void
.end method

.method private getBoundaryInterface()Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;
    .locals 3

    .line 72
    iget-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    if-nez v0, :cond_0

    .line 73
    const-class v0, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 75
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    move-result-object v1

    iget-object v2, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->mFrameworksImpl:Landroid/webkit/SafeBrowsingResponse;

    invoke-virtual {v1, v2}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertSafeBrowsingResponse(Landroid/webkit/SafeBrowsingResponse;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    iput-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 78
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    return-object v0
.end method

.method private getFrameworksImpl()Landroid/webkit/SafeBrowsingResponse;
    .locals 2

    .line 63
    iget-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->mFrameworksImpl:Landroid/webkit/SafeBrowsingResponse;

    if-nez v0, :cond_0

    .line 64
    nop

    .line 65
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    move-result-object v0

    iget-object v1, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    .line 66
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertSafeBrowsingResponse(Ljava/lang/reflect/InvocationHandler;)Landroid/webkit/SafeBrowsingResponse;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->mFrameworksImpl:Landroid/webkit/SafeBrowsingResponse;

    .line 68
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->mFrameworksImpl:Landroid/webkit/SafeBrowsingResponse;

    return-object v0
.end method


# virtual methods
.method public backToSafety(Z)V
    .locals 2
    .param p1, "report"    # Z

    .line 114
    nop

    .line 115
    const-string v0, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 117
    .local v0, "feature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-direct {p0}, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->getFrameworksImpl()Landroid/webkit/SafeBrowsingResponse;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/SafeBrowsingResponse;->backToSafety(Z)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-direct {p0}, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;->backToSafety(Z)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public proceed(Z)V
    .locals 2
    .param p1, "report"    # Z

    .line 99
    nop

    .line 100
    const-string v0, "SAFE_BROWSING_RESPONSE_PROCEED"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 102
    .local v0, "feature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-direct {p0}, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->getFrameworksImpl()Landroid/webkit/SafeBrowsingResponse;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/SafeBrowsingResponse;->proceed(Z)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-direct {p0}, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;->proceed(Z)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public showInterstitial(Z)V
    .locals 2
    .param p1, "allowReporting"    # Z

    .line 84
    nop

    .line 85
    const-string v0, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 87
    .local v0, "feature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-direct {p0}, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->getFrameworksImpl()Landroid/webkit/SafeBrowsingResponse;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/SafeBrowsingResponse;->showInterstitial(Z)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-direct {p0}, Landroidx/webkit/internal/SafeBrowsingResponseImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/chromium/support_lib_boundary/SafeBrowsingResponseBoundaryInterface;->showInterstitial(Z)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method
