.class public Landroidx/webkit/internal/WebMessageListenerAdapter;
.super Ljava/lang/Object;
.source "WebMessageListenerAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebMessageListenerBoundaryInterface;


# instance fields
.field private mWebMessageListener:Landroidx/webkit/WebViewCompat$WebMessageListener;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebViewCompat$WebMessageListener;)V
    .locals 0
    .param p1, "webMessageListener"    # Landroidx/webkit/WebViewCompat$WebMessageListener;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/webkit/internal/WebMessageListenerAdapter;->mWebMessageListener:Landroidx/webkit/WebViewCompat$WebMessageListener;

    .line 43
    return-void
.end method


# virtual methods
.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "WEB_MESSAGE_LISTENER"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage(Landroid/webkit/WebView;Ljava/lang/reflect/InvocationHandler;Landroid/net/Uri;ZLjava/lang/reflect/InvocationHandler;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "message"    # Ljava/lang/reflect/InvocationHandler;
    .param p3, "sourceOrigin"    # Landroid/net/Uri;
    .param p4, "isMainFrame"    # Z
    .param p5, "replyProxy"    # Ljava/lang/reflect/InvocationHandler;

    .line 49
    const-class v0, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 50
    invoke-static {v0, p2}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;

    .line 49
    invoke-static {v0}, Landroidx/webkit/internal/WebMessageAdapter;->webMessageCompatFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebMessageBoundaryInterface;)Landroidx/webkit/WebMessageCompat;

    move-result-object v0

    .line 52
    .local v0, "webMessage":Landroidx/webkit/WebMessageCompat;
    invoke-static {p5}, Landroidx/webkit/internal/JsReplyProxyImpl;->forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/internal/JsReplyProxyImpl;

    move-result-object v7

    .line 53
    .local v7, "jsReplyProxy":Landroidx/webkit/JsReplyProxy;
    iget-object v1, p0, Landroidx/webkit/internal/WebMessageListenerAdapter;->mWebMessageListener:Landroidx/webkit/WebViewCompat$WebMessageListener;

    move-object v2, p1

    move-object v3, v0

    move-object v4, p3

    move v5, p4

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Landroidx/webkit/WebViewCompat$WebMessageListener;->onPostMessage(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JsReplyProxy;)V

    .line 55
    return-void
.end method
