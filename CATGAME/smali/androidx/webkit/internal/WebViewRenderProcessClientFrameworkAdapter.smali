.class public Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;
.super Landroid/webkit/WebViewRenderProcessClient;
.source "WebViewRenderProcessClientFrameworkAdapter.java"


# instance fields
.field private mWebViewRenderProcessClient:Landroidx/webkit/WebViewRenderProcessClient;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebViewRenderProcessClient;)V
    .locals 0
    .param p1, "client"    # Landroidx/webkit/WebViewRenderProcessClient;

    .line 32
    invoke-direct {p0}, Landroid/webkit/WebViewRenderProcessClient;-><init>()V

    .line 33
    iput-object p1, p0, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;->mWebViewRenderProcessClient:Landroidx/webkit/WebViewRenderProcessClient;

    .line 34
    return-void
.end method


# virtual methods
.method public getFrameworkRenderProcessClient()Landroidx/webkit/WebViewRenderProcessClient;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;->mWebViewRenderProcessClient:Landroidx/webkit/WebViewRenderProcessClient;

    return-object v0
.end method

.method public onRenderProcessResponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "renderer"    # Landroid/webkit/WebViewRenderProcess;

    .line 46
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;->mWebViewRenderProcessClient:Landroidx/webkit/WebViewRenderProcessClient;

    .line 47
    invoke-static {p2}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forFrameworkObject(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object v1

    .line 46
    invoke-virtual {v0, p1, v1}, Landroidx/webkit/WebViewRenderProcessClient;->onRenderProcessResponsive(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    .line 48
    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "renderer"    # Landroid/webkit/WebViewRenderProcess;

    .line 39
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessClientFrameworkAdapter;->mWebViewRenderProcessClient:Landroidx/webkit/WebViewRenderProcessClient;

    .line 40
    invoke-static {p2}, Landroidx/webkit/internal/WebViewRenderProcessImpl;->forFrameworkObject(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/internal/WebViewRenderProcessImpl;

    move-result-object v1

    .line 39
    invoke-virtual {v0, p1, v1}, Landroidx/webkit/WebViewRenderProcessClient;->onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    .line 41
    return-void
.end method
