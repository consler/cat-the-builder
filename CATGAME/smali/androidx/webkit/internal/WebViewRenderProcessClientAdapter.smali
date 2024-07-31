.class public Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;
.super Ljava/lang/Object;
.source "WebViewRenderProcessClientAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewRendererClientBoundaryInterface;


# static fields
.field private static final sSupportedFeatures:[Ljava/lang/String;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mWebViewRenderProcessClient:Landroidx/webkit/WebViewRenderProcessClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->sSupportedFeatures:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/webkit/WebViewRenderProcessClient;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "webViewRenderProcessClient"    # Landroidx/webkit/WebViewRenderProcessClient;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 51
    iput-object p2, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mWebViewRenderProcessClient:Landroidx/webkit/WebViewRenderProcessClient;

    .line 52
    return-void
.end method


# virtual methods
.method public final getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->sSupportedFeatures:[Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mWebViewRenderProcessClient:Landroidx/webkit/WebViewRenderProcessClient;

    return-object v0
.end method

.method public final onRendererResponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "renderer"    # Ljava/lang/reflect/InvocationHandler;

    .line 100
    nop

    .line 101
    invoke-static {p2}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object v0

    .line 102
    .local v0, "rendererObject":Landroidx/webkit/WebViewRenderProcess;
    iget-object v1, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mWebViewRenderProcessClient:Landroidx/webkit/WebViewRenderProcessClient;

    .line 103
    .local v1, "client":Landroidx/webkit/WebViewRenderProcessClient;
    iget-object v2, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    .line 104
    invoke-virtual {v1, p1, v0}, Landroidx/webkit/WebViewRenderProcessClient;->onRenderProcessResponsive(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    goto :goto_0

    .line 106
    :cond_0
    new-instance v3, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$2;

    invoke-direct {v3, p0, v1, p1, v0}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$2;-><init>(Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    :goto_0
    return-void
.end method

.method public final onRendererUnresponsive(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "renderer"    # Ljava/lang/reflect/InvocationHandler;

    .line 77
    nop

    .line 78
    invoke-static {p2}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object v0

    .line 79
    .local v0, "rendererObject":Landroidx/webkit/WebViewRenderProcess;
    iget-object v1, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mWebViewRenderProcessClient:Landroidx/webkit/WebViewRenderProcessClient;

    .line 80
    .local v1, "client":Landroidx/webkit/WebViewRenderProcessClient;
    iget-object v2, p0, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {v1, p1, v0}, Landroidx/webkit/WebViewRenderProcessClient;->onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v3, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$1;

    invoke-direct {v3, p0, v1, p1, v0}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter$1;-><init>(Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    :goto_0
    return-void
.end method
