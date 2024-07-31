.class public Landroidx/webkit/internal/WebMessageCallbackAdapter;
.super Ljava/lang/Object;
.source "WebMessageCallbackAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebMessageCallbackBoundaryInterface;


# instance fields
.field mImpl:Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;)V
    .locals 0
    .param p1, "impl"    # Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/webkit/internal/WebMessageCallbackAdapter;->mImpl:Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;

    .line 37
    return-void
.end method


# virtual methods
.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onMessage(Ljava/lang/reflect/InvocationHandler;Ljava/lang/reflect/InvocationHandler;)V
    .locals 3
    .param p1, "port"    # Ljava/lang/reflect/InvocationHandler;
    .param p2, "message"    # Ljava/lang/reflect/InvocationHandler;

    .line 41
    iget-object v0, p0, Landroidx/webkit/internal/WebMessageCallbackAdapter;->mImpl:Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;

    new-instance v1, Landroidx/webkit/internal/WebMessagePortImpl;

    invoke-direct {v1, p1}, Landroidx/webkit/internal/WebMessagePortImpl;-><init>(Ljava/lang/reflect/InvocationHandler;)V

    const-class v2, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 43
    invoke-static {v2, p2}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 42
    invoke-static {v2}, Landroidx/webkit/internal/WebMessageAdapter;->webMessageCompatFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;)Landroidx/webkit/WebMessageCompat;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Landroidx/webkit/WebMessagePortCompat$WebMessageCallbackCompat;->onMessage(Landroidx/webkit/WebMessagePortCompat;Landroidx/webkit/WebMessageCompat;)V

    .line 45
    return-void
.end method
