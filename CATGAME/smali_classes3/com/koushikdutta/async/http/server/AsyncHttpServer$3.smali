.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$3;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer;->websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;

.field final synthetic val$protocol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$3;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$3;->val$protocol:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$3;->val$callback:Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 6

    .line 330
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, ","

    .line 332
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 333
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 334
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x194

    if-eqz v0, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 345
    :cond_2
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v2, "Sec-WebSocket-Protocol"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$3;->val$protocol:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 347
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 348
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    return-void

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$3;->val$callback:Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;

    new-instance v1, Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/http/WebSocketImpl;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    invoke-interface {v0, v1, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;->onConnected(Lcom/koushikdutta/async/http/WebSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;)V

    return-void

    .line 341
    :cond_4
    :goto_2
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 342
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    return-void
.end method
