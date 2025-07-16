.class public Landroidx/webkit/internal/WebMessagePortImpl;
.super Landroidx/webkit/WebMessagePortCompat;
.source "WebMessagePortImpl.java"


# instance fields
.field private mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

.field private mFrameworksImpl:Landroid/webkit/WebMessagePort;


# direct methods
.method public constructor <init>(Landroid/webkit/WebMessagePort;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/webkit/WebMessagePortCompat;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/webkit/internal/WebMessagePortImpl;->mFrameworksImpl:Landroid/webkit/WebMessagePort;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/webkit/WebMessagePortCompat;-><init>()V

    .line 51
    const-class v0, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    invoke-static {v0, p1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    iput-object p1, p0, Landroidx/webkit/internal/WebMessagePortImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    return-void
.end method

.method public static compatToFrameworkMessage(Landroidx/webkit/WebMessageCompat;)Landroid/webkit/WebMessage;
    .locals 2

    .line 197
    new-instance v0, Landroid/webkit/WebMessage;

    .line 198
    invoke-virtual {p0}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {p0}, Landroidx/webkit/WebMessageCompat;->getPorts()[Landroidx/webkit/WebMessagePortCompat;

    move-result-object p0

    invoke-static {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->compatToPorts([Landroidx/webkit/WebMessagePortCompat;)[Landroid/webkit/WebMessagePort;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;[Landroid/webkit/WebMessagePort;)V

    return-object v0
.end method

.method public static compatToPorts([Landroidx/webkit/WebMessagePortCompat;)[Landroid/webkit/WebMessagePort;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Landroid/webkit/WebMessagePort;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 186
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroidx/webkit/WebMessagePortCompat;->getFrameworkPort()Landroid/webkit/WebMessagePort;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static frameworkMessageToCompat(Landroid/webkit/WebMessage;)Landroidx/webkit/WebMessageCompat;
    .locals 2

    .line 209
    new-instance v0, Landroidx/webkit/WebMessageCompat;

    .line 210
    invoke-virtual {p0}, Landroid/webkit/WebMessage;->getData()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Landroid/webkit/WebMessage;->getPorts()[Landroid/webkit/WebMessagePort;

    move-result-object p0

    invoke-static {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->portsToCompat([Landroid/webkit/WebMessagePort;)[Landroidx/webkit/WebMessagePortCompat;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/webkit/WebMessageCompat;-><init>(Ljava/lang/String;[Landroidx/webkit/WebMessagePortCompat;)V

    return-object v0
.end method

.method private getBoundaryInterface()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;
    .locals 3

    .line 65
    iget-object v0, p0, Landroidx/webkit/internal/WebMessagePortImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    if-nez v0, :cond_0

    .line 66
    const-class v0, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 68
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    move-result-object v1

    iget-object v2, p0, Landroidx/webkit/internal/WebMessagePortImpl;->mFrameworksImpl:Landroid/webkit/WebMessagePort;

    invoke-virtual {v1, v2}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertWebMessagePort(Landroid/webkit/WebMessagePort;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    iput-object v0, p0, Landroidx/webkit/internal/WebMessagePortImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 71
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/WebMessagePortImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    return-object v0
.end method

.method private getFrameworksImpl()Landroid/webkit/WebMessagePort;
    .locals 2

    .line 57
    iget-object v0, p0, Landroidx/webkit/internal/WebMessagePortImpl;->mFrameworksImpl:Landroid/webkit/WebMessagePort;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getCompatConverter()Landroidx/webkit/internal/WebkitToCompatConverter;

    move-result-object v0

    iget-object v1, p0, Landroidx/webkit/internal/WebMessagePortImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    .line 59
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroidx/webkit/internal/WebkitToCompatConverter;->convertWebMessagePort(Ljava/lang/reflect/InvocationHandler;)Landroid/webkit/WebMessagePort;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/internal/WebMessagePortImpl;->mFrameworksImpl:Landroid/webkit/WebMessagePort;

    .line 61
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/WebMessagePortImpl;->mFrameworksImpl:Landroid/webkit/WebMessagePort;

    return-object v0
.end method

.method public static portsToCompat([Landroid/webkit/WebMessagePort;)[Landroidx/webkit/WebMessagePortCompat;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroidx/webkit/WebMessagePortCompat;

    const/4 v1, 0x0

    .line 170
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 171
    new-instance v2, Landroidx/webkit/internal/WebMessagePortImpl;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroidx/webkit/internal/WebMessagePortImpl;-><init>(Landroid/webkit/WebMessagePort;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "WEB_MESSAGE_PORT_CLOSE"

    .line 94
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->getFrameworksImpl()Landroid/webkit/WebMessagePort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebMessagePort;->close()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;->close()V

    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getFrameworkPort()Landroid/webkit/WebMessagePort;
    .locals 1

    .line 154
    invoke-direct {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->getFrameworksImpl()Landroid/webkit/WebMessagePort;

    move-result-object v0

    return-object v0
.end method

.method public getInvocationHandler()Ljava/lang/reflect/InvocationHandler;
    .locals 1

    .line 159
    invoke-direct {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    return-object v0
.end method

.method public postMessage(Landroidx/webkit/WebMessageCompat;)V
    .locals 2

    const-string v0, "WEB_MESSAGE_PORT_POST_MESSAGE"

    .line 78
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-direct {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->getFrameworksImpl()Landroid/webkit/WebMessagePort;

    move-result-object v0

    invoke-static {p1}, Landroidx/webkit/internal/WebMessagePortImpl;->compatToFrameworkMessage(Landroidx/webkit/WebMessageCompat;)Landroid/webkit/WebMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebMessagePort;->postMessage(Landroid/webkit/WebMessage;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-direct {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    move-result-object v0

    new-instance v1, Landroidx/webkit/internal/WebMessageAdapter;

    invoke-direct {v1, p1}, Landroidx/webkit/internal/WebMessageAdapter;-><init>(Landroidx/webkit/WebMessageCompat;)V

    .line 83
    invoke-static {v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 82
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;->postMessage(Ljava/lang/reflect/InvocationHandler;)V

    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public setWebMessageCallback(Landroid/os/Handler;Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;)V
    .locals 2

    const-string v0, "CREATE_WEB_MESSAGE_CHANNEL"

    .line 132
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-direct {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->getFrameworksImpl()Landroid/webkit/WebMessagePort;

    move-result-object v0

    new-instance v1, Landroidx/webkit/internal/WebMessagePortImpl$2;

    invoke-direct {v1, p0, p2}, Landroidx/webkit/internal/WebMessagePortImpl$2;-><init>(Landroidx/webkit/internal/WebMessagePortImpl;Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;)V

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebMessagePort;->setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-direct {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    move-result-object v0

    new-instance v1, Landroidx/webkit/internal/WebMessageCallbackAdapter;

    invoke-direct {v1, p2}, Landroidx/webkit/internal/WebMessageCallbackAdapter;-><init>(Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;)V

    .line 144
    invoke-static {v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p2

    .line 143
    invoke-interface {v0, p2, p1}, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;->setWebMessageCallback(Ljava/lang/reflect/InvocationHandler;Landroid/os/Handler;)V

    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public setWebMessageCallback(Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;)V
    .locals 2

    const-string v0, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    .line 107
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-direct {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->getFrameworksImpl()Landroid/webkit/WebMessagePort;

    move-result-object v0

    new-instance v1, Landroidx/webkit/internal/WebMessagePortImpl$1;

    invoke-direct {v1, p0, p1}, Landroidx/webkit/internal/WebMessagePortImpl$1;-><init>(Landroidx/webkit/internal/WebMessagePortImpl;Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebMessagePort;->setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0}, Landroidx/webkit/internal/WebMessagePortImpl;->getBoundaryInterface()Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;

    move-result-object v0

    new-instance v1, Landroidx/webkit/internal/WebMessageCallbackAdapter;

    invoke-direct {v1, p1}, Landroidx/webkit/internal/WebMessageCallbackAdapter;-><init>(Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;)V

    .line 120
    invoke-static {v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->createInvocationHandlerFor(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 119
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebMessagePortBoundaryInterface;->setWebMessageCallback(Ljava/lang/reflect/InvocationHandler;)V

    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method
