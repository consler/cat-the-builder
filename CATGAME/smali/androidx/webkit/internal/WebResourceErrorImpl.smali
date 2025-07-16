.class public Landroidx/webkit/internal/WebResourceErrorImpl;
.super Landroidx/webkit/WebResourceErrorCompat;
.source "WebResourceErrorImpl.java"


# instance fields
.field private mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

.field private mFrameworksImpl:Landroid/webkit/WebResourceError;


# direct methods
.method public constructor <init>(Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/webkit/WebResourceErrorCompat;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mFrameworksImpl:Landroid/webkit/WebResourceError;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/webkit/WebResourceErrorCompat;-><init>()V

    .line 53
    const-class v0, Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    invoke-static {v0, p1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    iput-object p1, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    return-void
.end method

.method private getBoundaryInterface()Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;
    .locals 3

    .line 71
    iget-object v0, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    if-nez v0, :cond_0

    .line 72
    const-class v0, Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    .line 74
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    move-result-object v1

    iget-object v2, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mFrameworksImpl:Landroid/webkit/WebResourceError;

    invoke-virtual {v1, v2}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertWebResourceError(Landroid/webkit/WebResourceError;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    iput-object v0, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    .line 77
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    return-object v0
.end method

.method private getFrameworksImpl()Landroid/webkit/WebResourceError;
    .locals 2

    .line 63
    iget-object v0, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mFrameworksImpl:Landroid/webkit/WebResourceError;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    move-result-object v0

    iget-object v1, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    .line 65
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertWebResourceError(Ljava/lang/reflect/InvocationHandler;)Landroid/webkit/WebResourceError;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mFrameworksImpl:Landroid/webkit/WebResourceError;

    .line 67
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/WebResourceErrorImpl;->mFrameworksImpl:Landroid/webkit/WebResourceError;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    .line 98
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-direct {p0}, Landroidx/webkit/internal/WebResourceErrorImpl;->getFrameworksImpl()Landroid/webkit/WebResourceError;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Landroidx/webkit/internal/WebResourceErrorImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 105
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getErrorCode()I
    .locals 2

    const-string v0, "WEB_RESOURCE_ERROR_GET_CODE"

    .line 84
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0}, Landroidx/webkit/internal/WebResourceErrorImpl;->getFrameworksImpl()Landroid/webkit/WebResourceError;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    return v0

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Landroidx/webkit/internal/WebResourceErrorImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebResourceErrorBoundaryInterface;->getErrorCode()I

    move-result v0

    return v0

    .line 90
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
