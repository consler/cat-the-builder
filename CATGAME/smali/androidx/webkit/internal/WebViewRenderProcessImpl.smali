.class public Landroidx/webkit/internal/WebViewRenderProcessImpl;
.super Landroidx/webkit/WebViewRenderProcess;
.source "WebViewRenderProcessImpl.java"


# static fields
.field private static sFrameworkMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/webkit/WebViewRenderProcess;",
            "Landroidx/webkit/internal/WebViewRenderProcessImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

.field private mFrameworkObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebViewRenderProcess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/webkit/internal/WebViewRenderProcessImpl;->sFrameworkMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewRenderProcess;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/webkit/WebViewRenderProcess;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessImpl;->mFrameworkObject:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/webkit/WebViewRenderProcess;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/webkit/internal/WebViewRenderProcessImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    return-void
.end method

.method public static forFrameworkObject(Landroid/webkit/WebViewRenderProcess;)Landroidx/webkit/internal/WebViewRenderProcessImpl;
    .locals 2

    .line 78
    sget-object v0, Landroidx/webkit/internal/WebViewRenderProcessImpl;->sFrameworkMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/webkit/internal/WebViewRenderProcessImpl;

    if-eqz v0, :cond_0

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Landroidx/webkit/internal/WebViewRenderProcessImpl;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/WebViewRenderProcessImpl;-><init>(Landroid/webkit/WebViewRenderProcess;)V

    .line 83
    sget-object v1, Landroidx/webkit/internal/WebViewRenderProcessImpl;->sFrameworkMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/WebViewRenderProcessImpl;
    .locals 1

    .line 57
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 58
    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    .line 64
    new-instance v0, Landroidx/webkit/internal/WebViewRenderProcessImpl$1;

    invoke-direct {v0, p0}, Landroidx/webkit/internal/WebViewRenderProcessImpl$1;-><init>(Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;)V

    invoke-interface {p0, v0}, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/webkit/internal/WebViewRenderProcessImpl;

    return-object p0
.end method


# virtual methods
.method public terminate()Z
    .locals 2

    const-string v0, "WEB_VIEW_RENDERER_TERMINATE"

    .line 90
    invoke-static {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessImpl;->mFrameworkObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewRenderProcess;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/webkit/WebViewRenderProcess;->terminate()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-virtual {v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Landroidx/webkit/internal/WebViewRenderProcessImpl;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewRendererBoundaryInterface;->terminate()Z

    move-result v0

    return v0

    .line 97
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
