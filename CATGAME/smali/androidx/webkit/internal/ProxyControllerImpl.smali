.class public Landroidx/webkit/internal/ProxyControllerImpl;
.super Landroidx/webkit/ProxyController;
.source "ProxyControllerImpl.java"


# instance fields
.field private mBoundaryInterface:Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/webkit/ProxyController;-><init>()V

    return-void
.end method

.method private getBoundaryInterface()Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/webkit/internal/ProxyControllerImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getProxyController()Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/internal/ProxyControllerImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;

    .line 72
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/ProxyControllerImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;

    return-object v0
.end method


# virtual methods
.method public clearProxyOverride(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/lang/Runnable;

    .line 59
    nop

    .line 60
    const-string v0, "PROXY_OVERRIDE"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 61
    .local v0, "webViewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0}, Landroidx/webkit/internal/ProxyControllerImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;->clearProxyOverride(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 66
    return-void

    .line 64
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method

.method public setProxyOverride(Landroidx/webkit/ProxyConfig;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "proxyConfig"    # Landroidx/webkit/ProxyConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Ljava/lang/Runnable;

    .line 38
    nop

    .line 39
    const-string v0, "PROXY_OVERRIDE"

    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 40
    .local v0, "webViewFeature":Landroidx/webkit/internal/WebViewFeatureInternal;
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig;->getProxyRules()Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, "proxyRulesList":Ljava/util/List;, "Ljava/util/List<Landroidx/webkit/ProxyConfig$ProxyRule;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v2, v4, v3

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 45
    .local v2, "proxyRulesArray":[[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 46
    aget-object v6, v2, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/webkit/ProxyConfig$ProxyRule;

    invoke-virtual {v7}, Landroidx/webkit/ProxyConfig$ProxyRule;->getSchemeFilter()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 47
    aget-object v6, v2, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/webkit/ProxyConfig$ProxyRule;

    invoke-virtual {v7}, Landroidx/webkit/ProxyConfig$ProxyRule;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 45
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    .end local v4    # "i":I
    :cond_0
    invoke-direct {p0}, Landroidx/webkit/internal/ProxyControllerImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;

    move-result-object v4

    .line 51
    invoke-virtual {p1}, Landroidx/webkit/ProxyConfig;->getBypassRules()Ljava/util/List;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 50
    invoke-interface {v4, v2, v3, p3, p2}, Lorg/chromium/support_lib_boundary/ProxyControllerBoundaryInterface;->setProxyOverride([[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 52
    .end local v1    # "proxyRulesList":Ljava/util/List;, "Ljava/util/List<Landroidx/webkit/ProxyConfig$ProxyRule;>;"
    .end local v2    # "proxyRulesArray":[[Ljava/lang/String;
    nop

    .line 55
    return-void

    .line 53
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v1

    throw v1
.end method
