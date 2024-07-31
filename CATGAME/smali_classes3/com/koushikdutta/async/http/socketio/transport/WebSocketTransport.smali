.class public Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;
.super Ljava/lang/Object;
.source "WebSocketTransport.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;


# instance fields
.field private sessionId:Ljava/lang/String;

.field private stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

.field private webSocket:Lcom/koushikdutta/async/http/WebSocket;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/WebSocket;Ljava/lang/String;)V
    .locals 1
    .param p1, "webSocket"    # Lcom/koushikdutta/async/http/WebSocket;
    .param p2, "sessionId"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    .line 15
    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->sessionId:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/WebSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 17
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->close()V

    .line 32
    return-void
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public heartbeats()Z
    .locals 1

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket;->send(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 26
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 27
    return-void
.end method

.method public setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    if-ne v0, p1, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/WebSocket;->setStringCallback(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    new-instance v1, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport$1;-><init>(Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/WebSocket;->setStringCallback(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V

    .line 60
    :goto_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    .line 61
    return-void
.end method
