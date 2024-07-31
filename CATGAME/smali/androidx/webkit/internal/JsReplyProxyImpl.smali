.class public Landroidx/webkit/internal/JsReplyProxyImpl;
.super Landroidx/webkit/JsReplyProxy;
.source "JsReplyProxyImpl.java"


# instance fields
.field private mBoundaryInterface:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V
    .locals 0
    .param p1, "boundaryInterface"    # Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 34
    invoke-direct {p0}, Landroidx/webkit/JsReplyProxy;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/webkit/internal/JsReplyProxyImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 36
    return-void
.end method

.method public static forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/JsReplyProxyImpl;
    .locals 2
    .param p0, "invocationHandler"    # Ljava/lang/reflect/InvocationHandler;

    .line 44
    const-class v0, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 45
    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 47
    .local v0, "boundaryInterface":Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;
    new-instance v1, Landroidx/webkit/internal/-$$Lambda$JsReplyProxyImpl$5tkgbhUVpfwH7fOAIM_dePYxgKk;

    invoke-direct {v1, v0}, Landroidx/webkit/internal/-$$Lambda$JsReplyProxyImpl$5tkgbhUVpfwH7fOAIM_dePYxgKk;-><init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V

    invoke-interface {v0, v1}, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/internal/JsReplyProxyImpl;

    return-object v1
.end method

.method static synthetic lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)Ljava/lang/Object;
    .locals 1
    .param p0, "boundaryInterface"    # Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    new-instance v0, Landroidx/webkit/internal/JsReplyProxyImpl;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/JsReplyProxyImpl;-><init>(Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;)V

    return-object v0
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 53
    nop

    .line 54
    const-string v0, "WEB_MESSAGE_LISTENER"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 55
    .local v0, "feature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Landroidx/webkit/internal/JsReplyProxyImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    invoke-interface {v1, p1}, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;->postMessage(Ljava/lang/String;)V

    .line 60
    return-void

    .line 58
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method
