.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "SocketIOConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnect(Lcom/koushikdutta/async/future/DependentCancellable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture<",
        "Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->transform(Ljava/lang/String;)V

    return-void
.end method

.method protected transform(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ":"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 117
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 118
    aget-object v3, p1, v2

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->heartbeat:I

    goto :goto_0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput v0, v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->heartbeat:I

    :goto_0
    const/4 v0, 0x3

    .line 123
    aget-object p1, p1, v0

    const-string v0, ","

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 126
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    const-string v2, "websocket"

    .line 128
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v2, v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    new-instance v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2$1;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/String;)V

    .line 134
    invoke-interface {v0, v2}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    goto :goto_1

    :cond_1
    const-string v2, "xhr-polling"

    .line 144
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v2, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;

    iget-object v3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v3, v3, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-direct {v2, v3, v0, v1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    .line 154
    :goto_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/SimpleFuture;

    return-void

    .line 151
    :cond_2
    new-instance p1, Lcom/koushikdutta/async/http/socketio/SocketIOException;

    const-string v0, "transport not supported"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
