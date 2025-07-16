.class Lcom/koushikdutta/async/http/AsyncHttpClient$11;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

.field final synthetic val$req:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$11;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$11;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$11;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$11;->val$req:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 670
    iget-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$11;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 671
    iget-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$11;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 672
    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V

    :cond_0
    return-void

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$11;->val$req:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/koushikdutta/async/http/WebSocketImpl;->finishHandshake(Lcom/koushikdutta/async/http/Headers;Lcom/koushikdutta/async/http/AsyncHttpResponse;)Lcom/koushikdutta/async/http/WebSocket;

    move-result-object p2

    if-nez p2, :cond_2

    .line 678
    new-instance p1, Lcom/koushikdutta/async/http/WebSocketHandshakeException;

    const-string v0, "Unable to complete websocket handshake"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$11;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$11;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 686
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$11;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

    if-eqz v0, :cond_4

    .line 687
    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V

    :cond_4
    return-void
.end method
